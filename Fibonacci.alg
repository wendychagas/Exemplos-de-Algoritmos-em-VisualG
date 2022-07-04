algoritmo "Fibonacci"
var
   contFib, T1, T2, T3, tamSeq: Inteiro
inicio
      escreval("  Sequencia de Fibonacci  ")
      escreval("--------------------------")
      T1 <- 0
      escreva(T1)
      T2 <- 1
      escreva(T2)
      para contFib <- 1 ate 13 faca
           T3 <- T1 + T2
           escreva(T3)
           T1 <- T2
           T2 <- T3
      fimpara
fimalgoritmo
