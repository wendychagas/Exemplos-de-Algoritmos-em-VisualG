algoritmo "União de Vetores de Mesma Dimensão"
var
   vetA, vetB: vetor[1..10] de Inteiro
   vetC: vetor[1..20] de Inteiro
   i: Inteiro
inicio
      // Vetor A;
      para i <- 1 ate 10 faca
            escreva("Vetor A | Posição", i, ": ")
            leia(vetA[i])
      fimpara
      
      escreval()
      
      // Vetor B;
      para i <- 1 ate 10 faca
           escreva("Vetor B | Posição", i, ": ")
            leia(vetB[i])
      fimpara
      
      escreval()
      
      // União Vetor A+B em Vetor C;
      para i <- 1 ate 10 faca
           se (vetA[i] <> vetB[i]) entao
              vetC[i] <- vetA[i]
              vetC[i+10] <- vetB[i]
           senao
                vetC[i] <- vetA[i]
           fimse
      fimpara
      
      // Print Vetor C;
      para i <- 1 ate 20 faca
           escreval("Vetor C | Posição", i, ":", vetC[i])
      fimpara
fimalgoritmo
