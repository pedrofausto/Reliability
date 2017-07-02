# Generate Random numbers
library(MASS)
setwd("~/Dropbox/Mestrado/Confiabilidade/Modelos")

# Função de geração de número aleatórios
rand_vect <- function(N, M, sd = 33, pos.only = TRUE) {
   vec <- rnorm(N, M/N, sd)
   if (abs(sum(vec)) < 0.01) vec <- vec + 1
   vec <- round(vec / sum(vec) * M)
   deviation <- M - sum(vec)
   for (. in seq_len(abs(deviation))) {
      vec[i] <- vec[i <- sample(N, 1)] + sign(deviation)
   }
   if (pos.only) while (any(vec < 0)) {
      negs <- vec < 0
      pos  <- vec > 0
      vec[negs][i] <- vec[negs][i <- sample(sum(negs), 1)] + 1
      vec[pos][i]  <- vec[pos ][i <- sample(sum(pos ), 1)] - 1
   }
   vec
}

# Inicialização de valores e variaveis. Linha 1, representa o peso para Temp e Vdd
tamanhoMatrix <- 101
nome <- "random_points3.csv"
pesos <- c(40, 70, 100, 1.0, 1.1, 1.2)

matrix <- matrix(, nrow = tamanhoMatrix, ncol = 6)

matrix [1,] <- pesos

# Preencher Matrix
for (row in seq(2,tamanhoMatrix)){
   randResult <- rand_vect(3, 10, pos.only = TRUE)
   vetor <- c(randResult, randResult)
   matrix [row,] <- as.numeric(vetor)
}

write.csv2(matrix, file = nome , row.names = FALSE, col.names = FALSE)
