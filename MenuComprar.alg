algoritmo "semnome"
var
   escolherComprar, respQuant1: Caracter
inicio

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
      fimescolha
fimalgoritmo
