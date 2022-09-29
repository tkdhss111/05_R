# 四則演算

x <- 1:3; y <- 1:3

x + y
x * y

x <- 9; y <- 2
x %/% y
x %% y

# 演習

# 行列演算

m <- matrix(1:4, nr=2, nc=2)
v <- 1:2

m %*% v

t(m)

solve(m)

# 演習

# 組み込み関数

x <- 1:3
mean(x)
range(x)

x <- 3.14
round(x, 1)

# 演習


# 関数の作成１

get.mbe <- function(yhat, y) mean(yhat - y)
mbe <- get.mbe(yhat = 1:3, y = 4:6)
mbe

# 演習

get.rmse <- function(yhat, y) sqrt(mean((yhat - y)^2))
rmse <- get.rmse(yhat = 1:3, y = 4:6)
rmse

# 関数の作成２

f <- function(x) {
  y <- 1 + x + x ^ 2 
  z <- log(y)
  return(z)
}

f(2)

# 演習

get.rmse <- function(yhat, y) sqrt(mean((yhat - y)^2))
rmse <- get.rmse(yhat = 1:3, y = 4:6)
rmse
