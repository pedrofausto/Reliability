require(stats)
randField <- sample(1:95,1)
Temp <- dadosINV[randField:(randField+5), 2:2]
Vdd <- dadosINV100[randField:(randField+5), 1:1]

dadosTraining <- dadosINV100[-randField:-randField,]
model <- with(dadosTraining, glm(DelayRising ~ Temp + Vdd))

Delay <- dadosINV100[randField:(randField+5), 3:3]
DelayZ <- (model$coefficients[2]*Temp + model$coefficients[3]*Vdd + model$coefficients[1])


aux <- as.character(Temp)
plot(resultDelay[randField:(randField+5)], col="red", ylab = "", type = "p",ylim=c(resultDelay[which.min(resultDelay)], resultDelay[which.max(resultDelay)]), xaxt="n", xlab = " ")
axis(1, at=1:6, labels = aux)
par(new=TRUE)
plot(expectedDelay[randField:(randField+5)], col="blue", type = "p", ylab = "Delay (s)",ylim=c(resultDelay[which.min(resultDelay)], resultDelay[which.max(resultDelay)]), xaxt="n", main = "Correlation INV", xlab = "Temp")
mtext("Delay Expected (red) vs Delay Estimated (blue)")

