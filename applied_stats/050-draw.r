#
# グラフ描画
#

d <- data.frame (
  x = rnorm(100, mean =  0, sd = 1),
  y = rnorm(100, mean =  2, sd = 2),
  z = rnorm(100, mean = -2, sd = 3)
) 

# plot関数
matplot(d, type = 'o', pch = 1:3)

# ヒストグラムのビン
b <- seq(-20, 20, 1)

# rgb(red=0,blue=1,green=0,alpha=.5)
cols <- c(rgb(1, 0, 1, .25), # Xの色
          rgb(0, 0, 1, .25), # Yの色
          rgb(0, 1, 0, .25)) # Zの色
# 枠
hist(d$x, breaks = b, col = 0, border = 0,
          main   = '主タイトル',
          ylab   = '度数',
          xlab   = 'X軸タイトル')
# 横罫線
abline(h = seq(0, 100, 10), col = gray(0.7), lty = 'dashed')

# プロット
hist(d$x, breaks = b, col = cols[1], add = T)
hist(d$y, breaks = b, col = cols[2], add = T)
hist(d$z, breaks = b, col = cols[3], add = T)

# 凡例設定
legend('topleft', legend = c('x','y','z'), fill = cols, bg = 'white')


# 箱ひげ図（Boxplot）
boxplot(d, col = topo.colors(ncol(d)))

# 枠設定
matplot  (x.all, y.fit, type = 'n', xaxt = 'n', yaxt = 'n',
          main = '主タイトル',
          xlab = 'X軸タイトル',
          ylab = 'Y軸タイトル')

# プロット
matpoints(x.obs, y.obs,  col=2, pch=1) # 観測値
matlines (x.all, y.true, col=2, lty=1) # 真値
matlines (x.all, y.fit,  col=4, lty=1) # 予測値
matlines (x.all, y.upr,  col=4, lty=2) # 上限値
matlines (x.all, y.lwr,  col=4, lty=2) # 下限値
abline(v=n.obs, col='gray', lty=2)

# 軸設定
axis(1, at    = seq(0, n.all, 2), # X軸配置
        label = seq(0, n.all, 2)) # ラベル
axis(2, at    = seq(0, 900, 100), # Y軸配置
        label = seq(0, 900, 100)) # ラベル 

# 凡例設定
legend('topleft',                  #表示位置
       legend = c('観測値', '真値',
                  '予測値', '95%予測区間'),
       col    = c( 2,  2,  4,  4), # 色
       pch    = c( 1, NA, NA, NA), # 点種
       lty    = c(NA,  1,  1,  2)) # 線種


# 演習

fit <- lm('y ~ x + I(log(x))', data=d.obs)
summary(fit)

m <- predict(fit, newdata=data.frame(x=x), interval='confidence', level=0.95)
tail(m, 3)

