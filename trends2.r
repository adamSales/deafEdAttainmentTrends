library(tidyr)



combineDat <- function(nnn,ot,deaf=NULL){
    tdat <- do.call('rbind', lapply(ot, function(x) x[[nnn]]))
    names(tdat) <- gsub('bach|hs','y',names(tdat))

    for(i in 1:ncol(tdat)) if(is.factor(tdat[,i])) tdat[,i] <- as.character(tdat[,i])

    if('SEX'%in%names(tdat)) tdat$SEX <- c('Male','Female')[tdat$SEX]

    if(!is.null(deaf)){
        tdat <- tdat[tdat$DEAR==ifelse(deaf,1,2),]
        tdat$DEAR <- NULL
    }

    tdat$se[tdat$se==0] <- NA

    subCols <- setdiff(names(tdat),c('y','AGEP','se','Freq','se1','se2','year'))
    subsets <- if(length(subCols)>1) do.call(expand.grid,lapply(tdat[,subCols],unique))
               else cbind(unique(tdat[,subCols]))
    list(tdat=tdat,subCols=subCols,subsets=subsets)
}

extrSubs <- function(ccc,varb){
    ## tab <- with(ccc,{
    ##          tab <- NULL
    ##          for(i in 1:nrow(subsets)){
    ##              keep <- rep(TRUE,nrow(tdat))
    ##              for(j in 1:ncol(subsets)){
    ##                  keep <- keep&(tdat[,subCols[j]]==subsets[i,j])
    ##              }
    ##              tab <- cbind(tab,tdat[[varb]][keep][order(tdat$year[keep])])
    ##          }
    ##          tab})
    ddd <- ccc$tdat[,c('year',varb,ccc$subCols)]
    names(ddd) <- c('year','varb',paste0('sub',seq(length(ccc$subCols))))
    tab <- spread(ddd, key=sub1,value=varb)
    rownames(tab) <- 2007+tab$year
    tab$year <- NULL
    tab
}

tabFunBegin <- function(nnn,ot,deaf=NULL){
    ccc <- combineDat(nnn,ot,deaf)

    trnd <- trends(nnn,ot)
    if(!is.null(deaf)) trnd <- trnd[grep(paste0('DEAR=',ifelse(deaf,1,2)),names(trnd))]

    if(nnn%in%names(overTimeAge[[1]])){
        trndsAdj <- trends(nnn,overTimeAge)
        if(!is.null(deaf)) trndsAdj <-
            trndsAdj[grep(paste0('DEAR=',ifelse(deaf,1,2)),names(trndsAdj))]
    }

    ests <- extrSubs(ccc,'y')*100
    ses <- extrSubs(ccc,'se')*100

    ests <- rbind(ests,
                  Growth=ests[nrow(ests),]-ests[1,])

    ses <- rbind(ses,Growth=sqrt(ses[nrow(ses),]^2+ses[1,]^2))

    out <- list(ests=ests,ses=ses,trnd=trnd[sapply(names(ests),function(nn) grep(nn,names(trnd)))])
    if(nnn%in%names(overTimeAge[[1]]))
        out$trndsAdj <- trndsAdj[sapply(names(ests),function(nn) grep(nn,names(trndsAdj)))]
    out
}

estsRS <- function(tabb){
    tab <- rbind(tabb$ests,Trend=NA,`Trend (Adj)`=NA)
    ses <- rbind(tabb$ses,Trend=NA,`Trend (Adj)`=NA)
    for(j in 1:ncol(tab)){
        nm <- colnames(tab)[j]
        sex <- ifelse(grepl('Male',nm),'Male','Female')
        race <- substr(nm,nchar(sex)+2,nchar(nm))
        trd <- tabb$trnd[[grep(paste0('SEX=',sex,' raceEth=',race,' DEAR='),names(tabb$trnd))]]
        trdA <- tabb$trndsAdj[[grep(paste0('SEX=',sex,' raceEth=',race,' DEAR='),names(tabb$trndsAdj))]]
        tab['Trend',j] <- trd[1]*100
        tab['Trend (Adj)',j] <- trdA[1]*100
        ses['Trend',j] <- trd[2]*100
        ses['Trend (Adj)',j] <- trdA[2]*100
    }
    list(ests=tab,ses=ses)
}

tabFun <- function(nnn,ot,deaf=NULL,moe=TRUE,retEst=TRUE){

    tfb <- tabFunBegin(nnn,ot,deaf)
    if(grepl('RaceSex',nnn)) tfb <- estsRS(tfb)
    ests <- tfb$ests
    ses <- tfb$ses
    if(!grepl('RaceSex',nnn)){
        trnd <- tfb$trnd
        trndsAdj <- tfb$trndsAdj

        ests <- rbind(ests,
                      Trend=vapply(1:ncol(ests),function(j)
                          trnd[[grep(colnames(ests)[j],names(trnd))]][1]*100,1),
                      `Trend (Adj)`=vapply(1:ncol(ests),function(j)
                          trndsAdj[[grep(colnames(ests)[j],names(trnd))]][1]*100,1))
        ses <- rbind(ses,
                     Trend=vapply(1:ncol(ests),function(j)
                         trnd[[grep(colnames(ests)[j],names(trnd))]][2]*100,1),
                     `Trend (Adj)`=vapply(1:ncol(ests),function(j)
                         trndsAdj[[grep(colnames(ests)[j],names(trnd))]][2]*100,1))
    }
    if(retEst) return(list(ests=ests,ses=ses))

    tabFinish(ests,ses,moe)
}

tabFinish <- function(anal1,deaf=NULL,moe=TRUE){ #ests,ses,moe,strs){
    if(is.null(deaf)){
        ests <- anal1$ests
        ses <- anal1$ses
        strs <- cbind(anal1$trendStars,c('',''))
        rownames(strs) <- c('unadj','adj')
        diffStars <- anal1$diffStars
        ss <- if('SS'%in%names(anal1)) anal1$SS else c(anal1$deafSS,anal1$hearSS)
    } else if(deaf){
        ests <- anal1$deaf$ests
        ses <- anal1$deaf$ses
        strs <- anal1$trendStars
        ss <- anal1$deafSS
    } else{
        ests <- anal1$hear$ests
        ses <- anal1$hear$ses
        strs <- rbind(unadj=rep('',ncol(ests)),adj=rep('',ncol(ests)))
        ss <- anal1$hearSS
    }
    tab <- ests
    for(j in 1:ncol(ests)){
        for(i in 1:nrow(ests)){
            if(moe) tab[i,j] <- paste(round(ests[i,j],1),'$\\pm$',round(ses[i,j]*1.96,1))
            else tab[i,j] <- paste0(round(ests[i,j],1),' (',round(ses[i,j],1),')')
        }
        tab['Trend',j] <- paste0(tab['Trend',j],strs['unadj',j])
        tab['Trend (Adj)',j] <- paste0(tab['Trend (Adj)',j],strs['adj',j])

    }
    tab <- rbind(tab,`Sample Size/year`= format(ss,big.mark=','))
    if(is.null(deaf)){
        colnames(tab) <- c('Deaf','Hearing')
        tab <- cbind(tab,Difference=c(rep('',(nrow(tab)-4)),
                             diffFun(ests['Growth',],ses['Growth',],moe,''),
                             diffFun(ests['Trend',],ses['Trend',],moe,diffStars[1]),
                             diffFun(ests['Trend (Adj)',],ses['Trend (Adj)',],moe,diffStars[2]),''))
    }

    tab
}

pval <- function(top,bottom)
    2*pnorm(as.numeric(-abs(top/bottom)))

diffP <- function(ests,ses){
    est <- ests[2]-ests[1]
    se <- sqrt(ses[2]^2+ses[1]^2)
    pval(est,se)
}

diffFun <- function(ests,ses,moe,diffStars=''){
    est <- ests[1]-ests[2]
    se <- sqrt(ses[2]^2+ses[1]^2)
    p <- pval(est,se)

    out <- round(est,1)
    out <- if(moe) paste(out,'$\\pm$',round(1.96*se,1)) else paste0(out,' (',round(se,1),')')
    out <- paste0(out,diffStars)
    out
}



figFun <- function(nnn,ot,chg=FALSE,erbr=FALSE,...){
    cccD <- combineDat(nnn,ot,deaf=TRUE)
    cccH <- combineDat(nnn,ot,deaf=FALSE)

    ccc <- rbind(cccD$tdat,cccH$tdat)
    ccc$deaf <- rep(c('Deaf','Hearing'),each=nrow(cccD$tdat))

    ccc$y <- ccc$y*100
    ccc$se <- ccc$se*100

    ccc$Year <- ccc$year+2007

    change <- NULL
    for(i in 1:nrow(ccc)){
        cls <- ccc$deaf==ccc$deaf[i]
        for(s in cccD$subCols)
            cls <- cls& ccc[[s]]==ccc[[s]][i]
        change[i] <- ccc$y[i]-ccc$y[ccc$Year==2008 & cls]
    }
    if(chg) ccc$y <- change
    if(length(cccD$subCols)==0){
        out <- ggplot(ccc,aes(Year,y,shape=deaf,linetype=deaf))+geom_point()+geom_line()
    } else if(length(cccD$subCols)==1){
        names(ccc)[1] <- 'sub'
        out <- ggplot(ccc,aes(Year,y,color=sub,shape=deaf,linetype=deaf))+geom_point()+geom_line()
    } else{
        names(ccc)[1:2] <- if(length(unique(ccc[,1]))>=length(unique(ccc[,2])))  c('sub2','sub1') else c('sub1','sub2')
        out <- ggplot(ccc,aes(Year,y,color=sub2,shape=deaf,linetype=deaf))+geom_point(position='dodge')+geom_line()+facet_grid(~sub1)+theme(axis.text.x = element_text(angle = 90, hjust = 1))
    }
    if(chg) out <- out+geom_hline(yintercept=0,linetype=2)+ylab('Change Since 2008 (Percentage Points)')
    if(erbr) out <- out+geom_errorbar(aes(ymin=y-1.96*se,ymax=y+1.96*se,width=0.2),position='dodge')
    out+scale_x_continuous(breaks=unique(ccc$Year))+labs(color='',shape='',linetype='')
}

    ## errbar(2008:2016,estsD[,1],estsD[,1]+2*sesD[,1],estsD[,1]-2*sesD[,1],
##            ylim=c(0,1),type='l')#,...)
##     lines(2008:2016,estsH[,1],lty=3)
##     errbar(2008:2016,estsH[,1],estsH[,1]+2*sesH[,1],estsH[,1]-2*sesH[,1],lty=2,add=TRUE)
##     for(i in 1:ncol(estsD)){
##         errbar(2008:2016,estsD[,i],estsD[,i]+2*sesD[,i],estsD[,i]-2*sesD[,i],col=i,add=TRUE,type='l')
##         lines(2008:2016,estsH[,i],col=i,lty=3)
##         errbar(2008:2016,estsH[,i],estsH[,i]+2*sesH[,i],estsH[,i]-2*sesH[,i],col=i,add=TRUE,lty=2)
##     }
##     legend(pos,legend=c(colnames(estsD),'','Deaf','Hearing'),col=c(1:ncol(estsD),0,1,1),lty=c(rep(1,ncol(estsD)),0,1,2))
## }


changeFig <- function(nnn,ot,...){
    cccD <- combineDat(nnn,ot,deaf=TRUE)
    cccH <- combineDat(nnn,ot,deaf=FALSE)

    estsD <- extrSubs(cccD,'y')
    sesD <- extrSubs(cccD,'se')
    estsH <- extrSubs(cccH,'y')
    sesH <- extrSubs(cccH,'se')

    for(i in nrow(estsD):1){
        estsD[i,] <- 100*(estsD[i,]-estsD[1,])
        estsH[i,] <- 100*(estsH[i,]-estsH[1,])
    }

    ests <- rbind(melt(estsD),melt(estsH))
    names(ests) <- c('Year','sub','Change')
    ests$deaf <- c(rep('Deaf',prod(dim(estsD))),rep('Hearing',prod(dim(estsH))))

    ggplot(ests,aes(Year,Change,color=sub,shape=deaf,linetype=deaf))+geom_point()+geom_line()+labs(color='',shape='',linetype='')+geom_hline(yintercept=0,linetype=2)+ylab('Change Since 2008 (Percentage Points)')
}

##     lll <- range(c(unlist(estsD,estsH)))
##     plot(2008:2016,estsD[,1],pch=16,ylim=lll,type='b',...)
##     points(2008:2016,estsH[,1],pch=17,lty=2,type='b')
##     for(i in 1:ncol(estsD)){
##         points(2008:2016,estsD[,i],pch=16,col=i,type='b')
##         points(2008:2016,estsH[,i],col=i,pch=17,lty=2,type='b')
##         #deafBeta <- trendsUnadj[[nnn]][[paste0(cccD$subCols,'=',colnames(estsD)[i],' DEAR=1')]][1]
##         #hearBeta <- trendsUnadj[[nnn]][[paste0(cccD$subCols,'=',colnames(estsD)[i],' DEAR=2')]][1]

##         #abline(a=-2008*deafBeta,b=deafBeta,col=i)
##         #abline(a=-2008*hearBeta,b=hearBeta,col=i,lty=2)
##         abline(h=0,lty=2)
##     }
##     legend(pos,legend=c(colnames(estsD),'','Deaf','Hearing'),col=c(1:ncol(estsD),0,1,1),lty=c(rep(1,ncol(estsD)),0,1,2),pch=c(rep(NA,ncol(estsD)+1),16,17))
## }



trends <- function(nnn,ot){
    ccc <- combineDat(nnn,ot)

    trends <- list()
    with(ccc,{
             form <- if('AGEP'%in%names(tdat)) y~year+as.factor(AGEP) else y~year
             for(i in 1:nrow(subsets)){
                 keep <- rep(TRUE,nrow(tdat))
                 for(j in 1:ncol(subsets)){
                     if(is.factor(subsets[,j])) subsets[,j] <- as.character(subsets[,j])
                     keep <- keep&(tdat[,subCols[j]]==subsets[i,j])
                 }
                 trends[[paste(subCols,subsets[i,],collapse=' ',sep='=')]] <-
                     summary(lm(form,data=tdat[keep,],weights=Freq))$coef['year',]
             }
             trends
         })
}



trendsFull <- function(ot){
   sapply(names(ot[[1]]),trends,ot=ot)
}

resultsTab <- function(ttt,fname='trends.csv'){
    out <- data.frame(lev=character(0),
                      deaf=character(0),
                      sss=character(0),
                      est=numeric(0),
                      serr=numeric(0),
                      pp=character(0),
                      stars=character(0))
    for(nnn in names(ttt)){
        rrr <- ttt[[nnn]]
        lev <- rep(ifelse(grepl('hs',nnn),'High School','Bachelors'),length(rrr))
        deaf <- ifelse(grepl('DEAR=1',names(rrr)),'Deaf','Hearing')
        sss <- gsub('DEAR=[12]','',names(rrr))
        if(grepl('25',nnn)) sss <- paste0(sss,'ageRange=25-29')
        rrr <- do.call('rbind',rrr)
        ddd <- data.frame(lev,deaf,sss,round(rrr[,1:2]*100,round(abs(log(min(rrr[,2]),10)))-2),
                          ifelse(rrr[,4]<0.001,'<0.001',round(rrr[,4],3)),
                          ifelse(rrr[,4]<0.001,'***',ifelse(rrr[,4]<0.01,'**',
                                                            ifelse(rrr[,4]<0.05,'*',
                                                                   ifelse(rrr[,4]<0.1,'.','')))))

        names(ddd) <- names(out)
        out <- rbind(out,ddd)
    }
    write.table(out,paste0('output/',fname),sep=',',row.names=FALSE,
                col.names=c('Level','Deaf or Hearing','Sub-Group',
                    'Change per Year','Std. Error','p-value',''))
    invisible(out)
}

#estsD,estsH,sesD,sesH,moe=TRUE,diffStars){
diffDeafHear <- function(anal1,moe=TRUE){
    estsD <- anal1$deaf$ests
    estsH <- anal1$hear$ests
    sesD <- anal1$deaf$ses
    sesH <- anal1$hear$ses

    diffTab <- NULL
    diffStars <- rbind('',anal1$diffStars)
    rownames(diffStars) <- c('Growth','Trend','Trend (Adj)')
    for(varb in c('Growth','Trend','Trend (Adj)')){
        diff <- NULL
        for(j in 1:ncol(estsD)){
            diff <- c(diff,diffFun(c(estsD[varb,j],estsH[varb,j]),
                                   c(sesD[varb,j],sesH[varb,j]),moe,diffStars[varb,j]))
        }
        diffTab <- rbind(diffTab,diff)
    }
    rownames(diffTab) <- c('Growth','Trend','Trend (Adj)')
    colnames(diffTab) <- colnames(estsD)
    diffTab
}



diffSub <- function(ests,ses,varb,moe=TRUE){
    diffTab <- matrix('',ncol(ests)-1,ncol(ests)-1)

    for(i in 1:(ncol(ests)-1)){
        for(j in (i+1):ncol(ests)){
            diffTab[i,j-1] <- diffFun(c(ests[varb,i],ests[varb,j]),
                                    c(ses[varb,i],ses[varb,j]),moe)
        }
    }
    rownames(diffTab) <- colnames(ests)[-ncol(ests)]
    colnames(diffTab) <- colnames(ests)[-1]
    diffTab
}



toList <- function(lst,vec){
    fac <- factor(do.call('c',lapply(names(lst),function(nm) if(is.matrix(lst[[nm]])) rep(nm,nrow(lst[[nm]])) else nm)))
    split(vec,fac)
}


mult <- function(pTrendL,pDiffL,alpha,adj){

    pTrend <- do.call('rbind',pTrendL)[,ifelse(adj,2,1)]
    pDiff <- do.call('rbind',pDiffL)[,ifelse(adj,2,1)]

    ngroup <- length(pTrend)
    rejDiff <- rejTrend <- rep(FALSE,ngroup)

    pRank <- rank(pTrend)

    for(i in ngroup:1){
        astar <- alpha/(ngroup-i+1)
        if(pTrend[pRank==i]<= astar){
            rejTrend[pRank<=i] <- TRUE
            rejDiff[pRank<= i & pDiff<= astar] <- TRUE
            stop
        }
    }
    list(trend=toList(pTrendL,rejTrend),diff=toList(pTrendL,rejDiff))
}

stars <- function(rej,trend,nn,cc=1){
    ifelse(rej$`0.001`[[trend]][[nn]][cc],'***',
           ifelse(rej$`0.01`[[trend]][[nn]][cc],'**',
           ifelse(rej$`0.05`[[trend]][[nn]][cc],'*',
                  ifelse(rej$`0.1`[[trend]][[nn]][cc],'.',''))))
}


getSampleSizes <- function(nnn,ot,deaf){
    ccc <- combineDat(nnn,ot,deaf)
    with(ccc,sapply(unique(tdat[[subCols[1]]]), function(x) round(mean(tdat$Freq[tdat[[subCols[1]]]==x]))))
}
