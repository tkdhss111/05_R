cairo_pdf('fig/scatter.pdf',6,6, family="UDDigiKyokashoN-R")

# データ
source('graph.r')
dark.theme()

# プロット
matplot(d, type='b', pch=1:3, col=COLS,
           main='主タイトル',
           xlab='Ｘ軸タイトル',
           ylab='Ｙ軸タイトル')

# 罫線
abline(h = seq(-10,10,5),
       v = seq(0,100,10),
       col='gray',lty=2)

# 凡例
legend('topleft', legend=c('u','v','w'),
       pch=1:3, lty=1:3, col=COLS)

dev.off()

