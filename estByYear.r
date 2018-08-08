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
    if(!ya) out$bach25.29 <- svyby2(~bach,~DEAR+I(AGEP<30),des,svymean,na.rm=TRUE)
    out$bachTot <- svyby2(~bach,~DEAR,des,svymean,na.rm=TRUE)
    if(!ya) out$bachByAgeCat <- svyby2(~bach, ~ageRange+DEAR,des,svymean,na.rm=TRUE)

    out$hsByAge <- svyby2(~hs,~AGEP+DEAR,des,svymean,na.rm=TRUE)
    if(!ya) out$hs25.29 <- svyby2(~hs,~DEAR+I(AGEP<30),des,svymean,na.rm=TRUE)
    out$hsTot <- svyby2(~hs,~DEAR,des,svymean,na.rm=TRUE)
    if(!ya) out$hsByAgeCat <- svyby2(~hs, ~ageRange+DEAR,des,svymean,na.rm=TRUE)


    out$bachRace <- svyby2(~bach,~raceEth+DEAR,des,svymean,na.rm=TRUE)
    out$hsRace <- svyby2(~hs,~raceEth+DEAR,des,svymean,na.rm=TRUE)

    out$bachSex <- svyby2(~bach,~SEX+DEAR,des,svymean,na.rm=TRUE)
    out$hsSex <- svyby2(~hs,~SEX+DEAR,des,svymean,na.rm=TRUE)

    out$bachRaceSex <- svyby2(~bach,~SEX+raceEth+DEAR,des,svymean,na.rm=TRUE)
    out$hsRaceSex <- svyby2(~hs,~SEX+raceEth+DEAR,des,svymean,na.rm=TRUE)

    outAge <- list()
    outAge$bachTot <- svyby2(~bach,~DEAR+AGEP,des,svymean,na.rm=TRUE)
    if(!ya) outAge$bach25.29 <- svyby2(~bach,~DEAR+AGEP,subset(des,AGEP<30),svymean,na.rm=TRUE)
    if(!ya) outAge$bachByAgeCat <- svyby2(~bach, ~ageRange+DEAR+AGEP,des,svymean,na.rm=TRUE)

    outAge$hsTot <- svyby2(~hs,~AGEP+DEAR,des,svymean,na.rm=TRUE)
    if(!ya) outAge$hs25.29 <- svyby2(~hs,~DEAR+AGEP,subset(des,AGEP<30),svymean,na.rm=TRUE)
    if(!ya) outAge$hsByAgeCat <- svyby2(~hs, ~ageRange+DEAR+AGEP,des,svymean,na.rm=TRUE)

    outAge$bachRace <- svyby2(~bach,~raceEth+DEAR+AGEP,des,svymean,na.rm=TRUE)
    outAge$hsRace <- svyby2(~hs,~raceEth+DEAR+AGEP,des,svymean,na.rm=TRUE)

    outAge$bachSex <- svyby2(~bach,~SEX+DEAR+AGEP,des,svymean,na.rm=TRUE)
    outAge$hsSex <- svyby2(~hs,~SEX+DEAR+AGEP,des,svymean,na.rm=TRUE)

    outAge$bachRaceSex <- svyby2(~bach,~SEX+raceEth+DEAR+AGEP,des,svymean,na.rm=TRUE)
    outAge$hsRaceSex <- svyby2(~hs,~SEX+raceEth+DEAR+AGEP,des,svymean,na.rm=TRUE)

    rm(des);gc()

    list(pooled=out,age=outAge)
}



otBoth <- lapply(c('08','09','10','11','12','13','14','15','16'), yearInfo)
save(otBoth,file=ifelse(ya,'output/otBothYA.RData','output/otBoth.RData'))

overTime <- lapply(otBoth,function(x) x$pooled)
save(overTime,file=ifelse(ya,'output/estsbyYearYA.RData','output/estsbyYear.RData'))

overTimeAge <- lapply(otBoth,function(x) x$age)
save(overTimeAge,file=ifelse(ya,'output/estsOverTimeAgeYA.RData','output/estsOverTimeAge.RData'))

