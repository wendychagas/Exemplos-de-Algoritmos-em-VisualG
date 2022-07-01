algoritmo "Ordenar União de Vetores"
var
   vetA, vetB: vetor[1..10] de Inteiro
   vetC: vetor[1..20] de Inteiro
   i, j, aux: Inteiro
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
      
      // Vetor C; Vetor A+B;
      para i <- 1 ate 10 faca
           se (vetA[i] <> vetB[i]) entao
              vetC[i] <- vetA[i]
              vetC[i+10] <- vetB[i]
           senao
                vetC[i] <- vetA[i]
           fimse
      fimpara
      
      // Ordenar Vetor C;
      para i <- 1 ate 19 faca
           para j <- i+1 ate 20 faca
                se (vetC[i] > vetC[j]) entao
                   aux <- vetC[i]
                   vetC[i] <- vetC[j]
                   vetC[j] <- aux
                fimse
           fimpara
      fimpara
      
      // Print Vetor C;
      para i <- 1 ate 20 faca
           escreval("Vetor C Ordenado | Posição", i, ":", vetC[i])
      fimpara
fimalgoritmo
