algoritmo "semnome"
var
   escolherComprar, respConfirmarCompra1: Caracter
   respQuant1, valorCompra1, bagDinheiro: Inteiro
inicio
      bagDinheiro <- 500

      escreval("      Comprar      ")
      escreval("-------------------")
      escreval()
      escreval("|1| Flecha | $15  |")
      escreval("|2| Arco   | $350 |")
      escreval("|3| Adaga  | $100 |")
      escreval("|4| Escudo | $300 |")
      escreval("|5| Espada | $500 |")
      escreval()
      escreval("-------------------")
      escreva("Escolher -> ")
      leia(escolherComprar)
      
      escolha escolherComprar
      caso "1"
           escreval()
           escreva("Quantidade: ")
           leia(respQuant1)
           valorCompra1 <- respQuant1 * 15
           escreval("Total $", valorcompra1)
           escreval("Deseja confirmar compra?")
           escreva("|Sim| |Não| -> ")
           leia(respConfirmarCompra1)
           se (respConfirmarCompra1 = "S") entao
              se (bagDinheiro >= valorCompra1) entao
                 escreval("Voce comprou", respQuant1, " flecha(s) por $", valorCompra1, ".")
              senao
                   escreval("Você não tem $ suficiente para esta compra.")
              fimse
           senao
                escreval("Compra não realizada.")
           fimse
      fimescolha
      
      bagDinheiro <- bagDinheiro - valorCompra1
fimalgoritmo
