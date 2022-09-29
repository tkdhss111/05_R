# 統計解析

n.obs <- 20; n.fct <- 10; n.all <- n.obs + n.fct
x.obs <- 1:n.obs 
x.all <- 1:n.all

e <- rnorm(n=n.obs, sd=30)

f <- function(x) 1 + x + x ^ 2 

y.true <- f(x.all)
y.obs  <- f(x.obs) + e

#fit <- lm('y ~ x', data=d)
fit <- lm('y ~ x + I(x^2)', data=data.frame(x=x.obs, y=y.obs))
summary(fit)

#yhat <- predict(fit, newdata=data.frame(x))
m <- predict(fit, newdata=data.frame(x=x.all), interval='prediction', level=0.95)
tail(m, 3)
y.fit <- m[, 'fit']; y.upr <- m[, 'upr']; y.lwr <- m[, 'lwr'] 

str(fit)
str(pred)

#
# グラフ描画
#

d <- data.frame (
  x = rnorm(100, mean =  0, sd = 1),
  y = rnorm(100, mean =  2, sd = 2),
  z = rnorm(100, mean = -2, sd = 3)
) 
d

# plot関数
matplot(d, type = 'o', pch = 1:3)

# ヒストグラム
b <- seq(-20, 20, 1)
rgb(red=0,blue=1,green=0,alpha=.5)

hist(d$x, col    = rgb(1,0,1,.25),
          border = rgb(1,0,1),
          breaks = b)
hist(d$y, col    = rgb(0,0,1,.25),
          border = rgb(0,0,1),
          breaks = b, add = T)
hist(d$z, col    = rgb(0,1,0,.25),
          border = rgb(0,1,0),
          breaks = b, add = T)

# 箱ひげ図（Boxplot）
boxplot(d, col = topo.colors(ncol(d)))

# 回帰モデルグラフ

source ('051-lm-plot.r')

# 演習

fit <- lm('y ~ x + I(log(x))', data=d.obs)
summary(fit)

m <- predict(fit, newdata=data.frame(x=x), interval='confidence', level=0.95)
tail(m, 3)

