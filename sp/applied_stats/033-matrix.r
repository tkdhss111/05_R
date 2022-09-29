# 行列の作成

m <- matrix(1:4, nrow = 2, ncol = 2)
m

m <- matrix(1:4, nrow = 2, ncol = 2, byrow = T)
m

# 演習

m <- matrix(seq(-2, 8, 2), nrow = 2, ncol = 3, byrow = T)
m

m <- matrix(NA, nr = 2, nc = 2)
m
