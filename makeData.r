library(survey)
setwd('../data/acs/historical')

makeDes <- function(year){

    print(year)
    filea <- read.csv(paste0('ss',year,'pusa.csv'))[,c('ST','SERIALNO','AGEP','DDRS','DEAR','DEYE','DOUT','DPHY','DRATX','DREM','FDEARP','ESR','SCHL','RAC1P','HISP','SEX','PERNP','PINCP','SSIP','WKHP','WKW','ADJINC','PWGTP','INTP', 'OIP', 'PAP', 'RETP', 'SEMP',  'SSP', 'WAGP',paste0('pwgtp',1:80))]
    fileb <- read.csv(paste0('ss',year,'pusb.csv'))[,c('ST','SERIALNO','AGEP','DDRS','DEAR','DEYE','DOUT','DPHY','DRATX','DREM','FDEARP','ESR','SCHL','RAC1P','HISP','SEX','PERNP','PINCP','SSIP','WKHP','WKW','ADJINC','PWGTP','INTP', 'OIP', 'PAP', 'RETP', 'SEMP',  'SSP', 'WAGP',paste0('pwgtp',1:80))]

    dat <- rbind(filea,fileb)
    rm(filea,fileb); gc()

    hdat <- rbind(read.csv(paste0('ss',year,'husa.csv'))[,c('SERIALNO','TYPE')],
                  read.csv(paste0('ss',year,'husb.csv'))[,c('SERIALNO','TYPE')])

    dat$type <- hdat$TYPE[match(dat$SERIALNO,dat$SERIALNO)]

    rm(hdat); gc()

    print('read')

    des <-  svrepdesign(variables=~DEAR+AGEP+ST+
                            #DEYE+DOUT+DPHY+DRATX+DREM+  ## right now they're not asking for this
                            type+SEX+RAC1P+HISP+SCHL+FDEARP,weight=~PWGTP,repweights='pwgtp[0-9]+',scale=4/80,rscales=rep(1,80),mse=TRUE,type='JK1',data=dat)
    des$mse <- TRUE

    rm(dat); gc()
    des
}

saveDes <- function(des){
    des <- subset(des,AGEP>=25)
    des <- subset(des,AGEP<65)

    des <- subset(des,type!=2)

    des <- subset(des,ST!=72)

    des <- update(des,attain = cut(SCHL,breaks=c(0,15,17,19,20,21,Inf),
                                   labels=c('No HS','HS','Some College','Associates','Bachelors','>Bachelors'),
                                   ordered=TRUE))
    des$variables$SCHL <- NULL

    des <- update(des,raceEth=ifelse(HISP>1,"Hispanic",
                              ifelse(RAC1P==2,"African American",
                              ifelse(RAC1P==6| RAC1P==7,"Asian/PacIsl",
                              ifelse(RAC1P%in%c(3,4,5),'American Indian',
                              ifelse(RAC1P==1,"White","Other"))))))


    des <- update(des,ageRange = cut(AGEP,breaks=seq(24,65,10),#include.lowest=TRUE,
                                     labels=c('25-34','35-44','45-54','55-64'),ordered=TRUE))


    save(des,file=paste0('design',year,'.RData'))
}

for(year in c('08','09','10','11','12','13','14','15','16')){
    start <- proc.time()
    des <- makeDes(year)
    print('design made')
    print(proc.time()-start)

    saveDes(des)
    rm(des); gc()

    print((proc.time()-start)/60)
}





setwd('~/Google Drive/stephanie cawthon/overTime')
