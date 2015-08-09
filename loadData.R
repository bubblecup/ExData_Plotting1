## Loads the data set and caches and returns the data for desired date range
## Use seq.date to specify non-default range
library(dplyr)
powerData <<- NULL
loadData <- function(dataFile="household_power_consumption.txt",
        dateRange=as.Date(c("2007-02-01","2007-02-02")))
{
        if (is.null(powerData))
        {
                # fread here is much faster but doesn't seem to support na.strings="?"
                allData <- read.csv(dataFile,sep=";",na.strings="?",
                                 colClasses=c(rep("character",2),rep("numeric",7)), 
                                 stringsAsFactors=FALSE)
                # Convert date, subset, convert time
                powerData <<- allData %>% 
                        mutate(Date=as.Date(Date,"%d/%m/%Y")) %>% 
                        filter(Date %in% dateRange) %>%
                        mutate(Time=as.POSIXct(paste(Date,Time),format="%Y-%m-%d %H:%M:%S"))
        }
        invisible(powerData)
}
