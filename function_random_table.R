# Objetivo: criar uma tabela com numeros inteiros aleatorios

# Parametros:
#   x: numero de linhas
#   y: numero de colunas
#   z: "TRUE ou FALSE": se deve haver repeticao de numeros

random_table <- function(x, y, z = TRUE){
  
  # Criando matrix Col x Rows
  table <- matrix(sample(1:(y*x), replace = z), ncol=x)
  
  # Renomeando linhas e colunas
  rownames(table) <- paste0("col", 1:y)
  colnames(table) <- paste0("row", 1:x)
  
  # Convertendo matrix em data.frame
  table <- as.data.frame(t(table))
  
  # Retornando um dataframe com numeros aleatorios
  return(table)
}
