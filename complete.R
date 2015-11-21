complete <- function(directory, id = 332) {
        
        setwd("~/datasciencecoursera")
        setwd(directory)
        
        nobslist <- vector("numeric")
        idlist <- vector("numeric")
        
        for (i in id) {
                
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
                nobslist <- c(nobslist, a)
                idlist <- c(idlist, i)
                
                x <- data.frame(id = idlist, nobs = nobslist)
        }
        print(x)
}