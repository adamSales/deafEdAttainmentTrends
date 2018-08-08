library(sandwich)

sbst <- function(dat){
    dat <- subset(dat,AGEP<65 & AGEP>24)
    dat <- subset(dat,ST!=72)
    dat$hs <- dat$SCHL>15
    dat$ba <- dat$SCHL>20
    dat$SCHL <- NULL

    dat <- within(dat,raceEth <- factor(ifelse(HISP>1,"Hispanic",
                                        ifelse(RAC1P==2,"African American",
                                        ifelse(RAC1P==6| RAC1P==7,"Asian/PacIsl",
                                        ifelse(RAC1P%in%c(3,4,5),'American Indian',
                                        ifelse(RAC1P==1,"White","Other")))))))
                  dat$HISP <- NULL
    dat$RAC1P <- NULL

    dat$Male <- dat$SEX==1
    dat$SEX <- NULL

    dat
}


makeDat <- function(){
    dat <- NULL
    for(year in c('08','09','10','11','12','13','14','15','16')){
        print(year)
        for(part in c('a','b')){
            print(part)
            p1 <- read.csv(paste0('ss',year,'pus',part,'.csv'))[,c('SERIALNO','ST','AGEP','DEAR','SCHL','RAC1P','HISP','SEX','PWGTP',paste0('pwgtp',1:80))]
            h1 <- read.csv(paste0('ss',year,'hus',part,'.csv'))[,c('SERIALNO','TYPE')]
            p1 <- p1[p1$SERIALNO%in%h1$SERIALNO[h1$TYPE!=2],]
            rm(h1)
            p1$SERIALNO <- NULL
            p1$year <- as.numeric(paste0('20',year))

            p1 <- sbst(p1)

            dat <- rbind(dat,p1)
        }
    }
    save(dat,file='fullDat.RData')
    dat
}

survlm <- function(dat,age,hs){
    form <- if(age){
                if(hs) hs~year+as.factor(AGEP) else ba~year+as.factor(AGEP)
            } else if(hs) hs~year else ba~year

    mod <- lm(form,dat,weights=PWGTP)
    b0 <- coef(mod)['year']
    var0 <- vcovHC(mod)['year','year']
    beta <- vapply(grep('pwgtp',names(dat)),
                   function(i){
                       dat$rw <- dat[,i]
                       coef(lm(form,dat,weights=rw,subset=rw>=0))['year']
                   },1)
    se <- sqrt(4/80*sum((beta-b0)^2)+var0)
    T <- b0/se
    p <- 2*pnorm(-abs(T))
    c(est=unname(b0),se=se,T=unname(T),p=unname(p))
}

saveRepweights <- function(dat,hear){
    for(i in 1:80){
        rw <- dat[[paste0('pwgtp',i)]]
        names(rw) <- rownames(dat)
        save(rw,file=paste0(ifelse(hear,'hearWeights/','deafWeights/'),
                            'w',i,'.RData'))
    }
}

survlmRAM <- function(dat,age,hs){
    form <- if(age){
                if(hs) hs~year+as.factor(AGEP) else ba~year+as.factor(AGEP)
            } else if(hs) hs~year else ba~year

    mod <- lm(form,dat,weights=PWGTP)
    b0 <- coef(mod)['year']
    var0 <- vcovHC(mod)['year','year']
    beta <- vapply(1:80,
                   function(i){
                       load(paste0(ifelse(dat$DEAR[1]==1,'deafWeights/w','hearWeights/w'),
                                   i,'.RData'))
                       dat$rw <- rw[rownames(dat)]
                       coef(lm(form,dat,weights=rw,subset=rw>=0))['year']
                   },1)
    se <- sqrt(4/80*sum((beta-b0)^2)+var0)
    T <- b0/se
    p <- 2*pnorm(-abs(T))
    c(est=unname(b0),se=se,T=unname(T),p=unname(p))
}



trends <- function(dat,hs,age,ram=FALSE){
    if(ram) fit <- function(dat) survlmRAM(dat,age=age,hs=hs)
    else fit <- function(dat) survlm(dat,age=age,hs=hs)

    print('overall')
    overall <- fit(dat)
    print('young')
    young <- fit(dat[dat$AGEP<36,])
    print('by sex')
    male <- fit(dat[dat$Male,])
    female <- fit(dat[!dat$Male,])
    print('by race')
    race <- sapply(levels(dat$raceEth),
                   function(rc)
                       fit(dat[dat$raceEth==rc,]))
    names(race) <- levels(dat$raceEth)
    print('by race & sex')
    raceSex <- list(
        female=lapply(levels(dat$raceEth),
                   function(rc)
                       fit(dat[dat$raceEth==rc&!dat$Male,])),
        male=lapply(levels(dat$raceEth),
                   function(rc)
                       fit(dat[dat$raceEth==rc&dat$Male,]))
    )
    list(overall=overall,young=young,male=male,female=female,race=race,raceSex=raceSex)
}

tot <- function(dat,ram=FALSE){
    res <- list()
    for(hs in c(TRUE,FALSE))
        for(age in c(TRUE,FALSE)){
            print(paste0(ifelse(hs,'hs','ba'),
                        ifelse(age,'_adj','')))
            print(res[[paste0(ifelse(hs,'hs','ba'),
                        ifelse(age,'_adj',''))]] <-
                      trends(dat,hs,age,ram=ram))
            save(res,file='trendsSoFar.RData')
        }
    res
}

## not run:
## setwd('~/Google Drive/stephanie cawthon/data/acs/historical')
## dat <- makeDat()
doit <- function(make=FALSE,saveweights=FALSE){
    if(make){
        dat <- makeDat()
        deafDat <- dat[dat$DEAR==1,]
        save(deafDat,file='deafDat.RData');rm(deafDat);gc()
    } else
        load('fullDat.RData')
    dat <- dat[dat$DEAR==2,];gc()
    if(saveweights) saveRepweights(dat,hear=TRUE)
    print(ncol(dat))
    dat <- dat[,-grep('pwgtp',names(dat))]
    gc()
    print(ncol(dat))
    hearTrends <- tot(dat,ram=TRUE)
    rm(dat); gc()
    load('deafDat.RData')
    deafTrends <- tot(deafDat)
    save(hearTrends,deafTrends,file='trends.RData')
}
