algoritmo "Uni�o de Vetores de Mesma Dimens�o"
var
   vetA, vetB: vetor[1..10] de Inteiro
   vetC: vetor[1..20] de Inteiro
   i: Inteiro
inicio
      // Vetor A;
      para i <- 1 ate 10 faca
            escreva("Vetor A | Posi��o", i, ": ")
            leia(vetA[i])
      fimpara
      
      escreval()
      
      // Vetor B;
      para i <- 1 ate 10 faca
           escreva("Vetor B | Posi��o", i, ": ")
            leia(vetB[i])
      fimpara
      
      escreval()
      
      // Uni�o Vetor A+B em Vetor C;
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
           escreval("Vetor C | Posi��o", i, ":", vetC[i])
      fimpara
fimalgoritmo
