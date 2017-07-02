library(pls)
setwd("~/Dropbox/Mestrado/Confiabilidade/Modelos")

dados <- read.csv("tabelaCompleta_delays_inv100_random.csv", header = TRUE, sep = ";")
dados <- dados[,-c(11,12)]

train = c(1:50)

#PCR 
pcr.fit <- pcr(WorstCase~., data = dados, subset=train, scale=TRUE, validation="CV", ncomp = 4)
pcr.pred = predict(pcr.fit, dados[-train,-11], ncomp = 4)
validationplot(pcr.fit, val.type = "MSEP")
predplot(pcr.fit)

#PLS
pls.fit <- plsr(WorstCase~., data= dados, subset = train, scale = TRUE, validation = "CV", ncomp=4)
pls.pred = predict(pls.fit, dados[-train,-11], ncomp = 4)
predplot(pls.fit)
summary(pls.fit)
print(pls.fit$scores)
