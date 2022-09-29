rm(list=ls())
options(stringsAsFactors = F)

#
# 基本的な操作方法：データフレームの作成
#
d<- data.frame(name = c('panda', 'lion'), age = c(5, 7), male = c(T, F))
d

# 演習
d<- data.frame(name = c('tiger', 'lion'), age = c(4, 7), male = c(T, F))
d

# データフレーム要素へのアクセス（その１）
d[, 1]
d[, c(1, 3)]
d[, -1]

# 演習
d[2, ] <- c("bird", 3, F) 
d
d[-1, ]

# データフレーム要素へのアクセス（その２）
d$age
d[, 'name']
d[, c('name', 'age')]

# 演習
d["1", ]
rownames(d)

# データフレーム要素へのアクセス（その３）
d[, c(T, F, T)]
d[d$age > 6, ]

# 演習
d[c(T, F), ]
d[d$name == 'panda', ]
d[d$name == 'panda', ]
