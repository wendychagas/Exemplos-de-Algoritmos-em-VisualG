algoritmo "Mais Caro"
var
   valorProd: vetor[1..5] de Real
   nomeProd: vetor[1..5] de Caracter
   i: Inteiro
   resp, nomeProdCaro: Caracter
   valorMaior: Real
procedimento Topo()
inicio
      escreval("-----------------------------")
      escreval("ITEM MAIS CARO: ", nomeProdCaro)
      escreval("VALOR R$", valorMaior)
      escreval("-----------------------------")
fimprocedimento
//-----------------------------------
inicio
   Topo()
   repita
      para i <- 1 ate 5 faca
           escreva("Nome do item: ")
           leia(nomeProd[i])
           escreva("Informe o preço R$")
           leia(valorProd[i])
           se (valorProd[i] > valorMaior) entao
              valorMaior <- valorProd[i]
              nomeProdCaro <- nomeProd[i]
           fimse
           limpatela
           Topo()
      fimpara
      escreval()
      escreva("Deseja continuar? |s| |n|: ")
      leia(resp)
   ate(resp = "N")
fimalgoritmo
