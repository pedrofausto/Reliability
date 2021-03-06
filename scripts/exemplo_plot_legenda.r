plot(x,y1, type="l", col= "red", ylab = "Atraso (s)", main = "Relação entre atraso e temperatura", cex=1.3, xlab = "Temp (ºC)", cex.axis=1.2, cex.lab=1.4)
par(new=TRUE)
plot(x,y2, type="l", col= "blue", ylab = "Atraso (s)",cex=1.3, xlab = "Temp (ºC)", cex.axis=1.2, cex.lab=1.4, yaxt="n")
par(new=TRUE)
plot(x,y3, type="l", col= "green", ylab = "Atraso (s)", cex=1.3, xlab = "Temp (ºC)", cex.axis=1.2, cex.lab=1.4, yaxt="n")
legend("topleft", legend=c("VDD = 1.0 V","VDD = 1.1 V","VDD = 1.2 V"), col= c("red","blue", "green"), lty=1:1)
