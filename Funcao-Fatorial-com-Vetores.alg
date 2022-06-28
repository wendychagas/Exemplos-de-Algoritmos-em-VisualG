algoritmo "Demorei mas consegui?"
var
   fat, numero: vetor[1..10] de Inteiro
   i: Inteiro
//---------------------------------------
funcao FFatorial(n: Inteiro): Inteiro
var
   f: Inteiro
inicio
      f <- 1
      enquanto (n >= 1) faca
         f <- f * n
         n <- n - 1
      fimenquanto
      
      retorne f
fimfuncao
//---------------------------------------
inicio
      para i <- 1 ate 10 faca
           escreva(i, "º valor: ")
           leia(numero[i])
           fat[i] <- FFatorial(numero[i])
      fimpara
      
      escreval()
      para i <- 1 ate 10 faca
           escreval("Fatorial de", numero[i], "! é: ", fat[i])
      fimpara
fimalgoritmo
