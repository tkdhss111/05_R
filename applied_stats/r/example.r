setwd('/home/jma/Documents/lectures/applied_stats/r')

get.rmse <- function(yhat, y) {
  e <- yhat - y
  rmse <- sqrt(mean(e^2))
  return(rmse)
}
get.mbe <- function(yhat, y) mean(yhat - y)

yhat <- 1:3
y    <- 4:6

rmse <- get.rmse(yhat, y)
rmse

mbe <- get.mbe(yhat, y)
mbe
options(digits=2)
b <- seq(-4, 4, .1)
b
x <- rnorm(1000)
hist(x)
hist(x, col='lightblue')
hist(x, breaks=b, col='lightblue')
mean(x)
sd(x)

x <- 1:100
y <- x^1.7 + 100 * rnorm(100)
d <- data.frame(x, y)

fit <- lm(y ~ I(x^1.7), data=d)
fit <- lm(y ~ x, data=d)
plot(x, y, col=2)
lines(fit$fitted)
summary(fit)

d <- data.frame(name = c('panda', 'lion'), age = c(5, 7))
d
write.csv(d, file = 'd.csv')
d <- read.csv(file = 'd.csv')
d <- read.csv(file = 'd.csv', stringsAsFactors = F)
d
str(d)
str(x)
str(y)
