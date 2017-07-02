library(plot3D)
library(plotly)
setwd("~/Dropbox/Mestrado/Confiabilidade/Modelos")
#setwd("C:/Users/pedro/Dropbox/Mestrado/Confiabilidade/Modelos")

#dados <- read.csv("delays_inv_caracterizacao_rise_fall.csv", header = TRUE, sep = ";")
#dadosINV <- read.csv("delays_inv_caracterizacao_300Pontos_aleatorio2.csv", header = TRUE, sep = ";")
#dados <- read.csv("delays_inv_caracterizacao.csv", header = TRUE, sep = ",")
#dados <- read.csv("delays_inv_caracterizacao_200Pontos_gauss80_10.csv", header = TRUE, sep = ";")
#dados <- read.csv("delays_inv_caracterizacao_200Pontos_gauss50_20.csv", header = TRUE, sep = ";")
#dadosINV100 <- read.csv("delays_inv100_caracterizacao_200Pontos_aleatorio.csv", header = TRUE, sep = ";")
dados <- read.csv("delays_inv_caracterizacao_200Pontos_gauss80_10.csv", header = TRUE, sep = ";")


model <- with(dados, glm(DelayRising ~ Temp + Vdd))
summary(model)
coefficients(model)
x <- dados[,2]
y <- sort(dados[,1])
grid <- mesh(dados[,2], dados[,1])
z <-with(grid, model$coefficients[2]*x + model$coefficients[3]*y + model$coefficients[1])
points(grid)
persp3D(grid$x, grid$y, z, phi = 40, theta = 45, xlab = "Temp (ºC)", ylab = "Vdd (V)", zlab = "Delay (s)", main = "NOR2", colkey = TRUE, clab = "Delay (s)")
