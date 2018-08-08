library(kimisc)
library(survey)


yearInfo <- function(year){
    print(year)
    load(paste0('../data/acs/historical/design',year,'.RData'))
    des <- subset(des,AGEP>24 & AGEP<35)
    des <- update(des,raceEth=ifelse(raceEth%in%c('American Indian','Asian/PacIsl'),'Other',raceEth))


    out <- list()
    out$bachByAge <- svyby(~I(attain>="Bachelors"),~AGEP+DEAR,des,svymean,na.rm=TRUE)
    out$bach25.29 <- svyby(~I(attain>="Bachelors"),~DEAR+I(AGEP<30),des,svymean,na.rm=TRUE)
    out$bachTot <- svyby(~I(attain>="Bachelors"),~DEAR,des,svymean,na.rm=TRUE)
    out$bachByAgeCat <- svyby(~I(attain>="Bachelors"), ~ageRange+DEAR,des,svymean,na.rm=TRUE)

    out$hsByAge <- svyby(~I(attain>="HS"),~AGEP+DEAR,des,svymean,na.rm=TRUE)
    out$hs25.29 <- svyby(~I(attain>="HS"),~DEAR+I(AGEP<30),des,svymean,na.rm=TRUE)
    out$hsTot <- svyby(~I(attain>="HS"),~DEAR,des,svymean,na.rm=TRUE)
    out$hsByAgeCat <- svyby(~I(attain>="HS"), ~ageRange+DEAR,des,svymean,na.rm=TRUE)


    out$bachRace <- svyby(~I(attain>="Bachelors"),~raceEth+DEAR,des,svymean,na.rm=TRUE)
    out$hsRace <- svyby(~I(attain>="HS"),~raceEth+DEAR,des,svymean,na.rm=TRUE)

    out$bachSex <- svyby(~I(attain>="Bachelors"),~SEX+DEAR,des,svymean,na.rm=TRUE)
    out$hsSex <- svyby(~I(attain>="HS"),~SEX+DEAR,des,svymean,na.rm=TRUE)

    out$bachRaceSex <- svyby(~I(attain>="Bachelors"),~SEX+raceEth+DEAR,des,svymean,na.rm=TRUE)
    out$hsRaceSex <- svyby(~I(attain>="HS"),~SEX+raceEth+DEAR,des,svymean,na.rm=TRUE)

    rm(des);gc()


    out <- lapply(out,function(x) x[,-c(grep('FALSE',colnames(x)),which(colnames(x)=='se1'))])
    out
}

sampSize <- function(year){
    print(year)
    load(paste0('../data/acs/historical/design',year,'.RData'))
    des <- subset(des,AGEP>24 & AGEP<35)

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
    des <- subset(des,AGEP>24 & AGEP<35)

    out <- list()
    out$bachTot <- svyby(~I(attain>="Bachelors"),~DEAR+AGEP,des,svymean,na.rm=TRUE)
    out$bach25.29 <- svyby(~I(attain>="Bachelors"),~DEAR+AGEP,subset(des,AGEP<30),svymean,na.rm=TRUE)
    out$bachByAgeCat <- svyby(~I(attain>="Bachelors"), ~ageRange+DEAR+AGEP,des,svymean,na.rm=TRUE)

    out$hsTot <- svyby(~I(attain>="HS"),~AGEP+DEAR,des,svymean,na.rm=TRUE)
    out$hs25.29 <- svyby(~I(attain>="HS"),~DEAR+AGEP,subset(des,AGEP<30),svymean,na.rm=TRUE)
    out$hsByAgeCat <- svyby(~I(attain>="HS"), ~ageRange+DEAR+AGEP,des,svymean,na.rm=TRUE)

    out$bachRace <- svyby(~I(attain>="Bachelors"),~raceEth+DEAR+AGEP,des,svymean,na.rm=TRUE)
    out$hsRace <- svyby(~I(attain>="HS"),~raceEth+DEAR+AGEP,des,svymean,na.rm=TRUE)

    out$bachSex <- svyby(~I(attain>="Bachelors"),~SEX+DEAR+AGEP,des,svymean,na.rm=TRUE)
    out$hsSex <- svyby(~I(attain>="HS"),~SEX+DEAR+AGEP,des,svymean,na.rm=TRUE)

    out$bachRaceSex <- svyby(~I(attain>="Bachelors"),~SEX+raceEth+DEAR+AGEP,des,svymean,na.rm=TRUE)
    out$hsRaceSex <- svyby(~I(attain>="HS"),~SEX+raceEth+DEAR+AGEP,des,svymean,na.rm=TRUE)

    rm(des);gc()


    out <- lapply(out,function(x) x[,-c(grep('FALSE',colnames(x)),which(colnames(x)=='se1'))])
    out
}


overTime <- lapply(c('08','09','10','11','12','13','14','15','16'), yearInfo)
save(overTime,file='output/estsOverTime25.34.RData')

overTimeAge <- lapply(c('08','09','10','11','12','13','14','15','16'), yearInfoByAge)
save(overTimeAge,file='output/estsOverTimeAge25.34.RData')

sampleSizes <- lapply(c('08','09','10','11','12','13','14','15','16'), sampSize)
save(sampleSizes,file='output/sampleSizes25.34.RData')

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


save(overTime,file='output/estsbyYear25.34.RData')
