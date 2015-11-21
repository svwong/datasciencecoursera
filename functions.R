add2 <- function(x, y) {
        x + y
}

above10 <- function(x) {
        use <- x > 10
        x[use]
}

above <- function(x, n) {
        use <- x > n
        x[use]
}

f <- function(x) {
        g <- function(y) {
                y + z
        }
        z <- 4
        x + g(x)
}

x <- 5
y <- if(x < 3) {
        NA
} else {
        10
}