# Objetivo: converte um vetor numerico em relativo

# Parametros:
#  x: recebe um vetor numerico

relative <- function(x) {
  
  # Converte vetor em numeros relativos
  relativ <- (x/sum(x))*100
  
  # Retorna vetor relativo
  return(relativ)
}