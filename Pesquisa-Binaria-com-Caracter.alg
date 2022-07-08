algoritmo "Pesquisa Binária"
var
   nomes: vetor[1..10] de Caracter
   i, j, inicial, meio, final: Inteiro
   aux, resp, pesq: Caracter
   acha: Logico
inicio
      escreval("--------------------")
      escreval("  Lista  de  Nomes  ")
      escreval("--------------------")
      escreval()
      
      para i <- 1 ate 10 faca
           escreva(i, "- Nome: ")
           leia(nomes[i])
      fimpara
      escreval()
      
      para i <- 1 ate 9 faca
           para j <- i+1 ate 10 faca
                se (compr(nomes[i]) > compr(nomes[j])) entao
                   aux <- nomes[i]
                   nomes[i] <- nomes[j]
                   nomes[j] <- aux
                fimse
           fimpara
      fimpara

      para i <- 1 ate 10 faca
           escreval(i, "- Nome: ", nomes[i])
      fimpara
      escreval()
      
      // Rotina de Pesquisa Binária;
      resp <- "s"
      enquanto (resp = "s") faca
         escreval()
         escreva("Nomes | Localizar: ")
         leia(pesq)
         
         inicial <- 1
         final <- 10
         acha <- falso
         
         enquanto (inicial <= final) e (acha = falso) faca
            meio <- (inicial + final) div 2
            se (pesq = nomes[meio]) entao
               acha <- verdadeiro
            senao
                 se (pesq < nomes[meio]) entao
                    final <- meio - 1
                 senao
                      inicial <- meio + 1
                 fimse
            fimse
         fimenquanto
         se (acha = verdadeiro) entao
            escreval()
            escreval("[ ", pesq, " ] foi localizado na posição", meio, ".")
         senao
              escreval()
              escreval("[ ", pesq, " ] não foi localizado.")
         fimse
         escreval()
         escreva("Deseja Continuar? [s][n]: ")
         leia(resp)
      fimenquanto
      limpatela
      escreval("-----------")
      escreval("Saindo.....")
      escreval("-----------")
fimalgoritmo
