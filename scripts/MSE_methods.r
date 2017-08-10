##################################################
#  Script para cálculo de Mean Square Error para #
#  PLS, distancia euclidiana e correlacao        #
##################################################
library(pls)
library(hydroGOF)
library(stats4)

#setwd("C:/Users/pedro/Dropbox/Mestrado/Confiabilidade/Modelos")

# Set Home Directory for the data files
setwd("~/Dropbox/Mestrado/Confiabilidade/Modelos")

# Setting methods names to be used on plots
metodos <- c("Dist. Euclid.", "Correlação", "PLS")

# Defining average, erros and rms functions
averageError <- function(meanAverage){
    
    sizeVector <- length(meanAverage)
    errorPercentage <-(sum(abs(meanAverage)))/sizeVector
      
    return(errorPercentage)
}

rmsPerc <- function(rms){
   
   sizeVector <- length(rms)
   rmsResult <-((sum((rms)^2))/sizeVector)^(0.5)
   
   return(rmsResult)
}


mse <- function(errorVector){
  
  sizeVector <- length(errorVector)
  MSE <-(sum(errorVector))/sizeVector  
  return(MSE)
}

# Nullifying the initial vectors 
resultDelay <- NULL
expectedDelay <- NULL

error <- NULL
mseResult <- NULL

maxError <- NULL
rmsError <- NULL

nRMS <- NULL

rmsPercentage <- NULL

resultMinMax <- NULL

meanAbsoluteError <- NULL
meanAverageError <- NULL
diff <- NULL

# Settting the size of the training data set
trainSize <-10

##############################
#  Euclidian distance error  #
##############################

# Loading data from file CSV files separeted by ";"
dados <- read.csv("tabelaCompleta_delays_worst_c880_random2.csv", header = TRUE, sep = ";")
maxCol <- (length(dados[1,])) - 1

# Shirinking the training data set to trainSize
dadosTreino <- apply(dados[1:trainSize, 1:10], 2, function(x){as.numeric(as.character(x))})

# Extracting size of each data.
tamanho <- length(dados[,1])
tamanhoTreino <- length(dadosTreino[,1])

for (row in seq((trainSize+1),tamanho)){
  #auxPredict <- apply(dadosTreino[row, 1:10,drop=F], 2, function(x){as.numeric(x)})
  #matrixEucl <- apply(dadosTreino[-row, 1:10,drop=F], 2, function(x){as.numeric(as.character(x))})
  
  # Creating the auxiliary vector to be predicted and the Euclidean Matrix
  auxPredict <- apply(dados[(row), 1:10,drop=F], 2, function(x){as.numeric(as.character(x))})
  matrixEucl <- apply(dadosTreino[, 1:10,drop=F], 2, function(x){as.numeric(as.character(x))})
  
  
  for (train in seq(1,(tamanho-trainSize))){
    # Estimate the Euclidean Distance from every element within the Euclidean Matrix to the vector to be predicted auxPredict 
    eucDist <- apply(matrixEucl, 1, function(x)dist(rbind(x, auxPredict)))
    
    # Which vector is closer to the vector to be predicted
    maisProx <- which.min(eucDist)
    #if (maisProx > row){
    #  resultDelay <- append(resultDelay,dados[(maisProx+1), (maxCol+1)])
    #} else {
    
    # The delay obatined from the prediction
    resultDelay <- append(resultDelay,dados[(maisProx), (maxCol+1)])
    #}
    
    # The "true" value of the delay. The expected delay.
    expectedDelay <- append(expectedDelay, dados[train+trainSize, (maxCol+1)])
    
    # Storing the "error" and "difference" between expected and estimated delay
    error <- append(error, ((expectedDelay - resultDelay)^2))
    diff <- append(diff, 100*((1- (resultDelay / expectedDelay))))
  }

  #eucDist <- apply(matrixEucl, 1, function(x)dist(rbind(x, auxPredict)))
}

# Metrics calculations
nRMS <- append(nRMS,(rmse(resultDelay, expectedDelay)/mean(expectedDelay))*100)
mseResult <- append(mseResult,mse(error))
meanAverageError <- append(meanAverageError,averageError(diff))

maxError <- append(maxError, abs(diff[which.max(abs(diff))]))
rmsPercentage <- append(rmsPercentage, rmsPerc(diff))

errorEucl <- error

resultMinMax <- append(resultMinMax, expectedDelay - resultDelay)

expectedDelayEucl <- expectedDelay
resultDelayEucl <- resultDelay

meanAbsoluteError <-append(meanAbsoluteError, mae(resultDelayEucl,expectedDelayEucl))
rmsError <-append(rmsError,rmse(resultDelayEucl,expectedDelayEucl))
##################################
#          Error Ratio           #
##################################
errorEucl <- 100*(1 - (array(data = resultDelayEucl, dimnames = NULL)/expectedDelayEucl))

#dataResult <- cbind(dados, expectedDelayEucl, resultDelayEucl, abs(errorEucl))

# Creating matrix of results to be stored in a file
dataResult <- cbind(expectedDelayEucl, resultDelayEucl, abs(errorEucl))
colnames(dataResult) <- c("Expected Delay", "Estimated Delay", "Absolute Error")

# Creating the statistic file
write.csv(dataResult, file = "results_worst_euclDist_inv100_static.csv")


###############################
#  Correlation distance error #
###############################

dados <- read.csv("tabelaCompleta_delays_worst_c880_random2.csv", header = TRUE, sep = ";")
maxCol <- (length(dados[1,])) - 1
dadosTreino <- apply(dados[1:trainSize, 1:10], 2, function(x){as.numeric(as.character(x))})

tamanho <- length(dados[,1])
tamanhoTreino <- length(dadosTreino[,1])

resultDelay <- NULL
expectedDelay <- NULL

error <- NULL
diff <- NULL

for (row in seq((trainSize+1),tamanho)){
   
   #auxPredict <- apply(dadosTreino[row, 1:10,drop=F], 2, function(x){as.numeric(as.character(x))})
   #matrixRed <- apply(dadosTreino[-row, 1:10,drop=F], 2, function(x){as.numeric(as.character(x))})

   auxPredict <- apply(dados[(row), 1:10,drop=F], 2, function(x){as.numeric(as.character(x))})
   matrixRed <- apply(dadosTreino[, 1:10, drop=F], 2, function(x){as.numeric(as.character(x))})
  
   for (train in seq(1,(tamanho-trainSize))){
    matrixCor <- apply(matrixRed, 1, cor, auxPredict)
    maisProx <- which.max(matrixCor)
    #if (maisProx > row){
    #  resultDelay <- append(resultDelay,dados[(maisProx+1), (maxCol+1)])
    #} else {
    resultDelay <- append(resultDelay,dados[(maisProx), (maxCol+1)])
    #}
   
    expectedDelay <- append(expectedDelay, dados[train+trainSize, (maxCol+1)])
    
    error <- append(error, ((expectedDelay - resultDelay)^2))
    diff <- append(diff, 100*((1- (resultDelay / expectedDelay))))
   }
}

nRMS <- append(nRMS,(rmse(resultDelay, expectedDelay)/mean(expectedDelay))*100)
mseResult <- append(mseResult,mse(error))
meanAverageError <- append(meanAverageError,averageError(diff))

maxError <- append(maxError, abs(diff[which.max(abs(diff))]))
rmsPercentage <- append(rmsPercentage, rmsPerc(diff))

errorCor <- error

resultMinMax <- append(resultMinMax, expectedDelay - resultDelay)

expectedDelayCor <- expectedDelay
resultDelayCor <- resultDelay

meanAbsoluteError <-append(meanAbsoluteError, mae(resultDelayCor,expectedDelayCor))
rmsError <-append(rmsError,rmse(resultDelayCor,expectedDelayCor))
##################################
#          Error Ratio           #
##################################
errorCor <- 100*(1 - (array(data = resultDelayCor, dimnames = NULL)/expectedDelayCor))

dataResult <- cbind(expectedDelayCor, resultDelayCor, abs(errorCor))
colnames(dataResult) <- c("Expected Delay", "Estimated Delay", "Absolute Error")

# Creating the statistic file
write.csv(dataResult, file = "results_worst_Corr_inv100_static.csv")

##################################################################################
#  General Linear Model - to be used on Multiple Linear Regression without PLS-R #
##################################################################################
# 
# dados <- unique(read.csv("teste_reduzido_inv100.csv", header = TRUE, sep = ";"))
# maxCol <- (length(dados[1,])) - 1
# matrixGLM <- apply(dados[, 1:10], 2, function(x){as.numeric(as.character(x))})
# 
# tamanho <- length(dados[,1])
# 
# resultDelay <- NULL
# expectedDelay <- NULL
# resultMinMax <- NULL
# 
# error <- NULL
# meanAbsoluteError <- NULL
# meanAverageError <- NULL
# diff <- NULL
# 
# 
# modelGLM <- with(dados, glm(WorstCase ~ matrixGLM))
# for (row in seq(1,tamanho)){
# 
#    auxPredict <- apply(dados[row, 1:10], 2, function(x){as.numeric(as.character(x))})
#    resultDelay <- append(resultDelay,modelGLM$coefficients[1] + modelGLM$coefficients[2]*auxPredict[2] + modelGLM$coefficients[3]*auxPredict[3] + modelGLM$coefficients[5]*auxPredict[5] + modelGLM$coefficients[6]*auxPredict[6])
#    expectedDelay <- append(expectedDelay,dados[row, (maxCol+1)])
# 
#    error <- append(error, ((expectedDelay - resultDelay)^2))
#    diff <- append(diff, 100*((1- (resultDelay / expectedDelay))))
# }
# nRMS <- append(nRMS,(rmse(resultDelay, expectedDelay)/mean(expectedDelay))*100)
# mseResult <- append(mseResult,mse(error))
# meanAverageError <- append(meanAverageError,averageError(diff))
# 
# maxError <- append(maxError, abs(diff[which.max(abs(diff))]))
# rmsPercentage <- append(rmsPercentage, rmsPerc(diff))
# 
# errorGLM <- error
# 
# resultMinMax <- append(resultMinMax, expectedDelay - resultDelay)
# 
# expectedDelayGLM <- expectedDelay
# resultDelayGLM <- resultDelay
# 
# meanAbsoluteError <-append(meanAbsoluteError, mae(resultDelayGLM,expectedDelayGLM))
# rmsError <-append(rmsError,rmse(resultDelayGLM,expectedDelayGLM))

##################################
#          Error Ratio           #
##################################
# errorGLM <- 100*(1 - (array(data = resultDelayGLM, dimnames = NULL)/expectedDelayGLM))
#  
# dataResult <- cbind(dados, expectedDelayGLM, resultDelayGLM, abs(errorGLM))
#  
# write.csv(dataResult, file = "results_worst_GLM_inv100_static.csv")

###############################
#             PLS             #
###############################

dados <- unique(read.csv("tabelaCompleta_delays_worst_c880_random2.csv", header = TRUE, sep = ";"))
maxCol <- (length(dados[1,])) - 1
dados <- cbind(dados[,1:10,drop=F],WorstCase = dados[,(maxCol+1)])


tamanho <- length(dados[,1])
train <- NULL

resultDelay <- NULL
expectedDelay <- NULL

error <- NULL

diff <- NULL

# Splitig the data based on the trainSize
train = c(1:trainSize)
#largerTrain = c((trainSize+1):tamanho)

# Dimensional reduction on the two data sets
pls.fit <- plsr(WorstCase~., data= dados, subset = train, scale = TRUE, validation = "CV", ncomp=4)
#pls.fit2 <- plsr(WorstCase~., data= dados, subset = largerTrain, scale = TRUE, validation = "CV", ncomp=4)

# Extracting coefficients to be used on Multiple Linear Regression
featureData <- cbind2(as.data.frame.matrix(pls.fit$scores), dados[1:trainSize, (maxCol-1)])
#featureData2 <- cbind2(as.data.frame.matrix(pls.fit2$scores), dados[(trainSize+1):tamanho, (maxCol-1)])

# Creating the Regresson model from the data set chosed to be the real training set.
modelPLS <- with(featureData, glm(y ~ `Comp 1` + `Comp 2` + `Comp 3` + `Comp 4`))


for (row in seq(1,trainSize)){
   
   # Element to be predicted. The test vector.
   auxPredict <- apply(featureData[row, 1:4], 2, function(x){as.numeric(as.character(x))})
   
   # Delay estimated using the input from the Test set agains the Linear Regression coefficients from the Training set. 
   resultDelay <- append(resultDelay,modelPLS$coefficients[2]*auxPredict[1] + modelPLS$coefficients[3]*auxPredict[2] + modelPLS$coefficients[4]*auxPredict[3] + modelPLS$coefficients[5]*auxPredict[4] + modelPLS$coefficients[1])
   
   # Expcted delay
   expectedDelay <- append(expectedDelay,featureData[row, 5])

   error <- append(error, (((expectedDelay - array(data = resultDelay, dimnames = NULL))^2)))
   diff <- append(diff, 100*((1- ((array(data = resultDelay, dimnames = NULL)) / expectedDelay))))
}
nRMS <- append(nRMS,(rmse(resultDelay, expectedDelay)/mean(expectedDelay))*100)
mseResult <- append(mseResult,mse(error))
meanAverageError <- append(meanAverageError,averageError(diff))

maxError <- append(maxError, abs(diff[which.max(abs(diff))]))
rmsPercentage <- append(rmsPercentage, rmsPerc(diff))

errorPLS <- error

resultMinMax <- append(resultMinMax, expectedDelay - resultDelay)

expectedDelayPLS <- expectedDelay
resultDelayPLS <- resultDelay

meanAbsoluteError <-append(meanAbsoluteError, mae(resultDelayPLS,expectedDelayPLS))
rmsError <-append(rmsError,rmse(resultDelayPLS,expectedDelayPLS))
# ##################################
# #          Error Ratio           #
# ##################################
errorPLS <- 100*(1 - (array(data = resultDelayPLS, dimnames = NULL)/expectedDelayPLS))

dataResult <- cbind(expectedDelayPLS, resultDelayPLS, abs(errorPLS))
colnames(dataResult) <- c("Expected Delay", "Estimated Delay", "Absolute Error")

# Creating the statistic file
write.csv(dataResult, file = "results_worst_PLS_inv100_static.csv")


##################################
#           Box Plot             #
##################################


teste <- data.frame(Error=c(errorEucl,errorCor,errorPLS),Method=rep(metodos, each=(length(errorCor))))
#boxplot(teste$Error ~ teste$Method, outline = FALSE)
#teste <- data.frame(Method=rep(metodos, each=(length(errorEucl))), Error=c(errorEucl,errorCor,errorPLS))
#teste <- data.frame(Method=rep(metodos, each=(length(errorPLS))), Error=c(errorEucl,errorCor,errorPLS))
plot(teste$Method, (abs(teste$Error)), type = "p", xaxt="n", ylab = "Erro relativo (%)", main = "Erro relativo do MTTF - w_inv100", outliners = TRUE, range=3, cex=1.3, xlab = "Métodos", cex.axis=1.2, cex.lab=1.4)
axis(1, at=1:3, labels = metodos)

#par(mfrow=c(3,1))
##################################
#           Histogram            #
##################################

# x <- errorPLS
# h<-hist(x, breaks=100, col="green", main="Histogram with Normal Curve", xlab = "Output Delay") 
#  xfit<-seq(min(x),max(x),length=30) 
#  yfit<-dnorm(xfit,mean=mean(x),sd=sd(x)) 
#  yfit <- yfit*diff(h$mids[1:2])*length(x) 
#  lines(xfit, yfit, col="blue", lwd=2)

##################################
#     Plotting Differences       #
##################################
# 
# plot((expectedDelayPLS-resultDelayPLS), col="black", ylab = "", type = "b", ylim=c(resultMinMax[which.min(resultMinMax)], resultMinMax[which.max(resultMinMax)]), xlab = "APDB entries", pch = 5)
# par(new=TRUE)
# plot((expectedDelayEucl-resultDelayEucl), col="blue", ylab = "", type = "b",ylim=c(resultMinMax[which.min(resultMinMax)], resultMinMax[which.max(resultMinMax)]))
# par(new=TRUE)
# plot((expectedDelayCor-resultDelayCor), col="red", ylab = "", type = "b", ylim=c(resultMinMax[which.min(resultMinMax)], resultMinMax[which.max(resultMinMax)]))

##################################
#             MSE                #
##################################

#scatter.smooth(teste$Method, (teste$Error), xlab = "Métodos", type = "p", pch = 1, xaxt="n", ylab = "Relative MTTF error (%)", main = "Relative MTTF - worst inv100")
#axis(1, at=1:3, labels = metodos)

min <-(which.min(mseResult))
mseNormalized <- mseResult/mseResult[min]
plot(mseNormalized, col="red", ylab = "Erro Normalizado", xaxt="n", main = "EQM Normalizado do MTTF - w_worst_c499", pch=21, bg="red", cex=1.3, xlab = "Métodos", cex.axis=1.2, cex.lab=1.4, xaxs="r")
axis(1, at=1:3, labels = metodos)

NRMSE <- sqrt(mseResult)/mean(dados[1:trainSize,]$WorstCase)
print(NRMSE)

columns <- rbind("Mean Absolute Error (s)", "Mean Average Error (%)", "Max Error (%)", "MSE (s)","RMS Error", "RMS", "NRMSE")
rows <- metodos
matrixData <- cbind(meanAbsoluteError, meanAverageError, maxError, mseResult, rmsError, rmsPercentage,NRMSE)
rownames(matrixData) <- rows
colnames(matrixData) <- columns

write.csv(matrixData, file = "statistics_worst_c499_resized.csv")

