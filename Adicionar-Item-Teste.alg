algoritmo "Sistema"
//-------------------------------
procedimento SubTotal()
inicio
      escreval("_________________________")
      escreval("SUBTOTAL R$", totPagar)
      escreval()
fimprocedimento
//-------------------------------
procedimento AdicionarItem()
inicio
   resp <- "s"
   enquanto (resp = "s") faca
      escreval("|1| Po��o de Cura   |$500|")
      escreval("|2| Po��o de Magica |$600|")
      escreval("_________________________")
      escreva("Item desejado: ")
      leia(op)
      escolha op
      caso 1
           escreval()
           escreva("Informe a quantidade: ")
           leia(quant)
           subTot <- 500 * quant
      caso 2
           escreval()
           escreva("Informe a quantidade: ")
           leia(quant)
           subTot <- 600 * quant
      outrocaso
               escreval()
               escreval("Op��o inv�lida.")
      fimescolha
      escreval()
      escreva("Continuar adicionando ao carrinho? s/n: ")
      leia(resp)
      totPagar <- totPagar + subTot
      limpatela
      SubTotal()
      AdicionarItem()
   fimenquanto
fimprocedimento
//-------------------------------
var
   op, quant: Inteiro
   totPagar, subTot: Real
   resp: Caracter
inicio
totPagar <- 0
subTot <- 0
SubTotal()
AdicionarItem()
fimalgoritmo
