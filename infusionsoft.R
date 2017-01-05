library(XMLRPC)
library(XML)
library(RCurl)
library(plyr)

#untar(download.packages(pkgs = "XMLRPC",destdir = ".",type="source",repos="http://r-forge.r-project.org")[,2])

source('./XMLRPC/R/serialize.R')
source('./tableschema.R')

#privateKey <- "1979978dc08730f121747d50003c8513"

getTable <- function(appName,privateKey,table,limit = 1000,page = 0,queryData = list(Id = "%"),selectedFields = c()) {
  lookupFields <- if(length(selectedFields)==0) tableSchema[[table]] else selectedFields
  data <- c()
  while(TRUE) {
    dataPage <- xml.rpc(paste("https://",appName,".infusionsoft.com/api/xmlrpc",sep=""),
                        "DataService.query",
                        privateKey,
                        table,
                        as.integer(limit),
                        as.integer(page),
                        queryData,
                        lookupFields
    )
    data <- c(data,dataPage)
    if(length(dataPage)<limit) break
    page <- page + 1
  }
  #df <- bind_rows(sapply(data,as.data.frame))
  df <- rbind.fill(lapply(data,as.data.frame))
  df <- df[,order(names(df))]
  df
}

