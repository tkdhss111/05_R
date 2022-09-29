# 描画用テストデータ 
d <- data.frame(
  u = rnorm(n = 100, mean =  0, sd = 1),
  v = rnorm(n = 100, mean =  2, sd = 2),
  w = rnorm(n = 100, mean = -2, sd = 3)) 

# カラーパレット
COLS <- c('cyan', 'magenta', 'green')

# カラーパレット（透過色）
RGBS <- c(rgb(1, 0, 1, .25), # u
          rgb(0, 0, 1, .25), # v
          rgb(0, 1, 0, .25)) # w

# 黒キャンバス
dark.theme <- function()
{
  BG <- gray(0.0)
  FG <- gray(0.9)
  
  par(bg = BG,
      fg = FG,
      col.axis = FG,
      col.main = FG,
      col.lab = FG)
}

