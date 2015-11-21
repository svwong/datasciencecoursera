corr <- function(directory, threshold = 0) {
        
        setwd("~/datasciencecoursera")
        setwd(directory)
        
        corrvector <- vector("numeric")
        
        for (i in 1:332) {
                
                if (i < 10) {
                        filename <- paste0("00",i)
                } else if (i <100) {
                        filename <- paste0("0",i)
                } else {
                        filename <- i
                }
                
                data <- read.csv(paste0(filename,".csv"))
                
                good <- complete.cases(data)
                gooddata <- data[good,]
                a <- nrow(gooddata)
                
                if (a > threshold) {
                        sulfate <- gooddata[,2]
                        nitrate <- gooddata[,3]
                        z <- cor(x=sulfate, nitrate)
                        corrvector <- c(corrvector, z)
                }
        }
        return(corrvector)
}