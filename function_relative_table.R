# Converte em valores relativos todas as colunas numericas de um dataframe

# Parametros:
#  x: recebe um dataframe (n x n)

relative_table <- function(x) {
  
  # Criando dataframe com as mesmas dimensoes e todos os valores sendo zeros(0)
  relative_t<- data.frame(matrix(0, nrow=nrow(x), ncol=ncol(x)))
  colnames(relative_t) <- colnames(x)
  rownames(relative_t) <- rownames(x)
  
  # Colunas de classe "numeric" ou "integer" são convertidas, as demais permanecem inalteradas
  for (i in 1:ncol(x)) {
    if (class(x[,i]) == "numeric" || class(x[,i]) == "integer") {
      relative_t[i] <- (x[,i]/sum(x[,i]))*100          
    } else{
      relative_t[i] <- x[,i]          
    }
  }
  # Retornando dataframe com colunas numericas convertidas em dados relativos
  return(relative_t)
}