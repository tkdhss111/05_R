cairo_pdf('fig/hist.pdf',6,6, family = "UDDigiKyokashoN-R")

# データ
source('graph.r')
# dark.theme()

# ヒストグラムのビン
b <- seq(-20, 20, 1)

# 枠
hist(d$u, breaks=b, col=0, border=0,
          main='主タイトル',
          xlab='軸タイトル',
          ylab='度数')
# 罫線
abline(h=seq(0,50,10),col=8,lty=2)

# プロット
hist(d$u, breaks=b, col=RGBS[1], add=T)
hist(d$v, breaks=b, col=RGBS[2], add=T)
hist(d$w, breaks=b, col=RGBS[3], add=T)

# 凡例
legend('topleft', legend=c('u','v','w'),
       fill=RGBS)

dev.off()
