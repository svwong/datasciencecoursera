pollutantmean <- function(directory, pollutant, id = 1:332) {
        
        setwd("~/datasciencecoursera")
        setwd(directory)
        
        if (pollutant == "sulfate") {
                col <- 2
        } else if (pollutant == "nitrate") {
                col <- 3
        }
        
        sum <- 0
        count <- 0
        
        for (i in id) {
                
                if (i < 10) {
                        filename <- paste0("00",i)
                } else if (i <100) {
                        filename <- paste0("0",i)
                } else {
                        filename <- i
                }
                
                data <- read.csv(paste0(filename,".csv"))
                x <- data[, col]
                y <- is.na(x)
                sum <- sum(x[!y]) + sum
                count <- length(x[!y]) + count
        }
        mean <- sum/count
        print(mean)
}
