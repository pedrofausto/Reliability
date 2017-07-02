#
#        Script para correlação/regressão
#      descomentar para selecionar o método
#

library(car)
library(sandwich)
setwd("~/Dropbox/Mestrado/Confiabilidade/Modelos")
#setwd("~/Dropbox/Mestrado/Confiabilidade")


dados <- read.csv("tabelaCompleta_delays_inv100_random.csv", header = TRUE, sep = ";")
auxPesos <- apply(dados[, 1:10], 2, function(x){as.numeric(as.character(x))}) #Converte colunas para números
auxDelay <- apply(dados[13], 2, function(x){as.numeric(as.character(x))})
auxPredict <- c(1, 4, 2, 1, 2, 1, 4, 2, 1, 2)

matriz_cor <- apply(dados[,1:10], 1, cor, auxPredict) #valores de correlação
mais_prox <- which.max(matriz_cor) #Valor mais próximo ao valor de teste
#delay <- NULL
delay <- append(delay,dados[mais_prox, 11]) #Delay mais próximo encontrado

delay
#model <- lm (dados$Delay ~ polym(dados$X10, dados$X30, dados$X50, dados$X70, dados$X90, degree=5, raw = TRUE))
#summary(model)

plot(delay, col="red", ylab = "", type = "p",ylim=c(0.690e-10, 3.767e-10))
par(new=TRUE)
plot(delayEsperado, col="blue", type = "p", ylab = "Delay (s)",ylim=c(8.690e-13, 1.767e-12))
mtext("Delay Expected (blue) vs Delay Estimated (red)")


cor(auxPesos,auxDelay)
#attributes(fit)
#res <- auxDelay - fit$coefficients[[2]]*auxPesos+fit$coefficients[[1]]
#fit$robse <- vcovHC(fit, type="HC1")
#coeftest(fit, fit$robse)
