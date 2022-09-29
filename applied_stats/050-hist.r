rm(list = ls())
#cairo_pdf('fig/hist.pdf',6,6, family = "UDDigiKyokashoN-R")

# データ
source('graph.r')
# dark.theme()

# 要約統計量
summary(d)

# 階級
BINS <- seq(-20, 20, 1)

# 枠
hist(d$u, breaks = BINS, col = 0, border = 0,
          main = '主タイトル',
          xlab = '軸タイトル　［単位］',
          ylab = '度数')
# 罫線
abline(h = seq(0, 50, 10), col = 8, lty = 2)

# プロット
hist(d$u, breaks = BINS, col = RGBS[1], add = T)
hist(d$v, breaks = BINS, col = RGBS[2], add = T)
hist(d$w, breaks = BINS, col = RGBS[3], add = T)

# 凡例
legend('topleft', fill = RGBS,
       legend = c('u', 'v', 'w'))

#dev.off()
