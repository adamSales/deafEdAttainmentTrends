library(kimisc)
library(survey)

## append sample size to svyby result
svyby2 <- function(formula,by,design,...){
    res <- svyby(formula,by,design,...)
    ss <- as.data.frame(xtabs(by,design$variables))
    res <- merge(res,ss,all=TRUE)
    res
}

if(!exists('ya')) ya <- FALSE

print(paste('ESTIMATING FOR ',ifelse(ya,'25-34','FULL SAMPLE')))

yearInfo <- function(year){
    print(year)
    load(paste0('../data/acs/historical/design',year,'.RData'))

    if(ya){
        des <- subset(des,AGEP>24 & AGEP<35)
        des <- update(des,raceEth=ifelse(raceEth%in%c('American Indian','Asian/PacIsl'),'Other',raceEth))
        print(unique(des$variables$AGEP))
        print(unique(des$variables$raceEth))
    }

    des <- update(des,bach= ifelse(attain>='Bachelors',1,0))
    des <- update(des,hs = ifelse(attain>='HS',1,0))


    out <- list()
    out$bachByAge <- svyby2(~bach,~AGEP+DEAR,des,svymean,na.rm=TRUE)
    out$bach25.29 <- svyby2(~bach,~DEAR+I(AGEP<30),des,svymean,na.rm=TRUE)
    out$bachTot <- svyby2(~bach,~DEAR,des,svymean,na.rm=TRUE)
    out$bachByAgeCat <- svyby2(~bach, ~ageRange+DEAR,des,svymean,na.rm=TRUE)

    out$hsByAge <- svyby2(~hs,~AGEP+DEAR,des,svymean,na.rm=TRUE)
    out$hs25.29 <- svyby2(~hs,~DEAR+I(AGEP<30),des,svymean,na.rm=TRUE)
    out$hsTot <- svyby2(~hs,~DEAR,des,svymean,na.rm=TRUE)
    out$hsByAgeCat <- svyby2(~hs, ~ageRange+DEAR,des,svymean,na.rm=TRUE)


    out$bachRace <- svyby2(~bach,~raceEth+DEAR,des,svymean,na.rm=TRUE)
    out$hsRace <- svyby2(~hs,~raceEth+DEAR,des,svymean,na.rm=TRUE)

    out$bachSex <- svyby2(~bach,~SEX+DEAR,des,svymean,na.rm=TRUE)
    out$hsSex <- svyby2(~hs,~SEX+DEAR,des,svymean,na.rm=TRUE)

    out$bachRaceSex <- svyby2(~bach,~SEX+raceEth+DEAR,des,svymean,na.rm=TRUE)
    out$hsRaceSex <- svyby2(~hs,~SEX+raceEth+DEAR,des,svymean,na.rm=TRUE)

    rm(des);gc()


    out <- lapply(out,function(x) x[,-c(grep('FALSE',colnames(x)),which(colnames(x)=='se1'))])
    out
}

sampSize <- function(year){
    print(year)
    load(paste0('../data/acs/historical/design',year,'.RData'))

    out <- list()
    out$bachByAge <- xtabs(~AGEP+DEAR,des$variables,drop=TRUE)
    out$bach25.29 <- xtabs(~DEAR+I(AGEP<30),des$variables,drop=TRUE)
    out$bachTot <- xtabs(~DEAR,des$variables,drop=TRUE)
    out$bachByAgeCat <- xtabs( ~ageRange+DEAR,des$variables,drop=TRUE)

    out$hsByAge <- xtabs(~AGEP+DEAR,des$variables,drop=TRUE)
    out$hs25.29 <-xtabs(~DEAR+I(AGEP<30),des$variables,drop=TRUE)
    out$hsTot <- xtabs(~DEAR,des$variables,drop=TRUE)
    out$hsByAgeCat <- xtabs( ~ageRange+DEAR,des$variables,drop=TRUE)


    out$bachRace <- xtabs(~raceEth+DEAR,des$variables,drop=TRUE)
    out$hsRace <- xtabs(~raceEth+DEAR,des$variables,drop=TRUE)

    out$bachSex <- xtabs(~SEX+DEAR,des$variables,drop=TRUE)
    out$hsSex <- xtabs(~SEX+DEAR,des$variables,drop=TRUE)

    out$bachRaceSex <- xtabs(~SEX+raceEth+DEAR,des$variables,drop=TRUE)
    out$hsRaceSex <- xtabs(~SEX+raceEth+DEAR,des$variables,drop=TRUE)

    rm(des);gc()

    out
}


yearInfoByAge <- function(year){
    print(year)
    load(paste0('../data/acs/historical/design',year,'.RData'))

    if(ya){
        des <- subset(des,AGEP>24 & AGEP<35)
        des <- update(des,raceEth=ifelse(raceEth%in%c('American Indian','Asian/PacIsl'),'Other',raceEth))
        print(unique(des$variables$AGEP))
        print(unique(des$variables$raceEth))
    }

    des <- update(des,bach= ifelse(attain>='Bachelors',1,0))
    des <- update(des,hs = ifelse(attain>='HS',1,0))

    out <- list()
    out$bachTot <- svyby2(~bach,~DEAR+AGEP,des,svymean,na.rm=TRUE)
    out$bach25.29 <- svyby2(~bach,~DEAR+AGEP,subset(des,AGEP<30),svymean,na.rm=TRUE)
    out$bachByAgeCat <- svyby2(~bach, ~ageRange+DEAR+AGEP,des,svymean,na.rm=TRUE)

    out$hsTot <- svyby2(~hs,~AGEP+DEAR,des,svymean,na.rm=TRUE)
    out$hs25.29 <- svyby2(~hs,~DEAR+AGEP,subset(des,AGEP<30),svymean,na.rm=TRUE)
    out$hsByAgeCat <- svyby2(~hs, ~ageRange+DEAR+AGEP,des,svymean,na.rm=TRUE)

    out$bachRace <- svyby2(~bach,~raceEth+DEAR+AGEP,des,svymean,na.rm=TRUE)
    out$hsRace <- svyby2(~hs,~raceEth+DEAR+AGEP,des,svymean,na.rm=TRUE)

    out$bachSex <- svyby2(~bach,~SEX+DEAR+AGEP,des,svymean,na.rm=TRUE)
    out$hsSex <- svyby2(~hs,~SEX+DEAR+AGEP,des,svymean,na.rm=TRUE)

    out$bachRaceSex <- svyby2(~bach,~SEX+raceEth+DEAR+AGEP,des,svymean,na.rm=TRUE)
    out$hsRaceSex <- svyby2(~hs,~SEX+raceEth+DEAR+AGEP,des,svymean,na.rm=TRUE)

    rm(des);gc()


    out <- lapply(out,function(x) x[,-c(grep('FALSE',colnames(x)),which(colnames(x)=='se1'))])
    out
}


overTime <- lapply(c('08','09','10','11','12','13','14','15','16'), yearInfo)
save(overTime,file=ifelse(ya,'output/estsOverTimeYA.RData','output/estsOverTime.RData'))

overTimeAge <- lapply(c('08','09','10','11','12','13','14','15','16'), yearInfoByAge)
save(overTimeAge,file=ifelse(ya,'output/estsOverTimeAgeYA.RData','output/estsOverTimeAge.RData'))

## sampleSizes <- lapply(c('08','09','10','11','12','13','14','15','16'), sampSize)
## save(sampleSizes,file=ifelse(ya,'output/sampleSizesYA.RData','output/sampleSizes.RData'))

### fixing year 15
#load('output/estsbyYear.RData')
#overTime[['15']] <- yearInfo('15')

nyear <- length(overTime)
nAnal <- length(overTime[[1]])

for(i in 1:nyear)
    for(j in 1:nAnal){
        names(overTime[[i]][[j]])[grep('bachelors|hs',ignore.case=TRUE,names(overTime[[i]][[j]]))] <- 'xx'
        frows <- grep('FALSE',rownames(overTime[[i]][[j]]))
        if(length(frows)>0) overTime[[i]][[j]] <- overTime[[i]][[j]][-frows,]
    }


save(overTime,file=ifelse(ya,'output/estsbyYearYA.RData','output/estsbyYear.RData'))
