cairo_pdf('fig/lm.pdf', width = 6, height = 6, family = "UDDigiKyokashoN-R")

# 枠設定
matplot (x.all, y.fit,
         type='n', xaxt='n', yaxt='n',
         main='主タイトル',
         xlab='Ｘ軸タイトル',
         ylab='Ｙ軸タイトル')

# プロット
matpoints(x.obs, y.obs, col=2, pch=1)# 観測値
matlines (x.all, y.true,col=2, lty=1)# 真値
matlines (x.all, y.fit, col=4, lty=1)# 予測値
matlines (x.all, y.upr, col=4, lty=2)# 上限値
matlines (x.all, y.lwr, col=4, lty=2)# 下限値
abline(v=n.obs, col='gray', lty=2)

# 軸設定
axis(1, at    = seq(0, n.all, 2), # X軸配置
        label = seq(0, n.all, 2)) # ラベル
axis(2, at    = seq(0, 900, 100), # Y軸配置
        label = seq(0, 900, 100)) # ラベル 
# 凡例設定
legend('topleft',                  #表示位置
       legend = c('観測値', '真値',
                  '予測値', '９５％予測区間'),
       col    = c( 2,  2,  4,  4), # 色
       pch    = c( 1, NA, NA, NA), # 点種
       lty    = c(NA,  1,  1,  2)) # 線種

dev.off()
