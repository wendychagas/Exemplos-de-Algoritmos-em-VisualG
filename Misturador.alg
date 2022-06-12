algoritmo "semnome"
var
   vetA, vetB, vetAux: vetor[1..10] de Inteiro
   i, j, aux, pesq: Inteiro
   achaA, achaB: Logico
   resp: Caracter
//---------------------------------------------------
procedimento Finalizar()
inicio
      escreval("==================================")
      escreval("           Encerrando...          ")
      escreval("==================================")
fimprocedimento
//--------------------------------------------------------------
procedimento mostrarOrdem()
inicio
      escreval("_____________________________")
      escreval(" Vetor[A] em Ordem Crescente ")
      para i <- 1 ate 10 faca
           escreva("[", vetA[i], " ]")
      fimpara
      escreval()

      escreval()
      escreval("_______________________________")
      escreval(" Vetor[B] em Ordem Decrescente ")
      para i <- 1 ate 10 faca
           escreva("[", vetB[i], " ]")
      fimpara
      escreval()
fimprocedimento
//---------------------------------------------------
inicio
      mostrarOrdem()
      escreval()
      escreval("_________________")
      escreval(" Preencher Vetor ")
      escreval()
      para i <- 1 ate 10 faca
           escreva(i, "° valor: ")
           leia(vetA[i])
      fimpara
      escreval()
      
      para i <- 1 ate 10 faca
           vetAux[i] <- vetA[i]
           vetB[i] <- vetAux[i]
      fimpara
      
      para i <- 1 ate 9 faca
          para j <- i + 1 ate 10 faca
               se (vetA[i] > vetA[j]) entao
                  aux <- vetA[i]
                  vetA[i] <- vetA[j]
                  vetA[j] <- aux
               fimse
          fimpara
      fimpara
      
      para i <- 1 ate 9 faca
          para j <- i + 1 ate 10 faca
               se (vetB[i] < vetB[j]) entao
                  aux <- vetB[i]
                  vetB[i] <- vetB[j]
                  vetB[j] <- aux
               fimse
          fimpara
      fimpara
      limpatela
      mostrarOrdem()
      
      resp <- "s"
      enquanto (resp = "s") faca
         escreval()
         escreval("_____________________")
         escreval(" Pesquisa Sequencial ")
         escreval()
         escreva("Pesquisar no vetor: ")
         leia(pesq)
         i <- 1
         achaA <- falso
         enquanto (i <= 10) e (achaA = falso) faca
            se (pesq = vetA[i]) entao
               achaA <- verdadeiro
            senao
                  i <- i + 1
            fimse
         fimenquanto
         
         se (achaA = verdadeiro) entao
            escreval()
               escreval(pesq, " foi localizado na posição ", i, " do vetor A.")
         senao
              escreval()
              escreval(pesq, " não foi localizado.")
         fimse
         
         j <- 1
         achaB <- falso
         enquanto (j <= 10) e (achaB = falso) faca
            se (pesq = vetB[j]) entao
               achaB <- verdadeiro
            senao
                 j <- j + 1
            fimse
         fimenquanto
         
         se (achaB = verdadeiro) entao
            escreval()
            escreval(pesq, " foi localizado na posição ", j, " do vetor B.")
         senao
              escreval()
              escreval(pesq, " não foi localizado.")
         fimse
         
         escreval()
         escreval("_________________")
         escreva("Continuar? |s|n|: ")
         leia(resp)
         limpatela
         mostrarOrdem()
      fimenquanto
      limpatela
      Finalizar()
fimalgoritmo
