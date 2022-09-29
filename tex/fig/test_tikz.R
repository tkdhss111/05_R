rm(list=ls())
library(jpeg)
library(png)
library(latex2exp)
#library(tikzDevice)
#options(tikzDefaultEngine = 'luatex', family = "Yu Mincho")

setwd("C:/Users/hss/AQUOS/Default_Folder/TIU/lectures/05_R/tex/fig")

my_image <- readJPEG("gold.jpg")

#tikz('test_tikz.tex',width=8,height=8)
#tikz('test_tikz.tex',width=8,height=8,standAlone = T)

cairo_pdf('test_tikz.pdf',width = 8,height = 8, family = "Yu Mincho")
  
par(mar = c(6,6,6,6))
# Set up a plot area with no plot
plot(1:2, type = 'n', main = "", xlab = TeX("$\\hat{x}$日本語"), ylab = "$\\hat{y}$")
#plot(1:2, type='n', main="", xlab="x", ylab="y")

# Get the plot information so the image will fill the plot box, and draw it
lim <- par()
rasterImage(my_image, xleft = 1, xright = 2, ybottom = 1, ytop = 2)

grid(col = "black")

#Add your plot !
lines(
  x=c(1, 1.2, 1.4, 1.6, 1.8, 2.0), 
  y=c(1, 1.3, 1.7, 1.6, 1.7, 1.0), 
  type="b", lwd=5, col="black")

arrows(1.2,1.2,1.5,1.5)

dev.off()

#system('lualatex test_tikz.tex')
