algoritmo "Cardápio"
var

procedimento Topo()
inicio
      escreval("======================")
      escreval("      -Cardápio-      ")
      escreval("======================")
fimprocedimento

//Menu Inicial
procedimento MenuInicial()
var
   respMenuCat: Caracter
inicio
      escreval("|1| Burguers")
      escreval("|2| Bebidas")
      escreval("|3| Sobremesas")
      escreval()
      escreval("|X| Finalizar")
      escreval("----------------------")
      escreva("* Decisão -> ")
      leia(respMenuCat)

      escolha respMenuCat
      caso "1"
           MenuBurguers()
      caso "2"
           MenuBebidas()
      caso "3"
           MenuSobremesas()
      outrocaso
               FinalizarPrograma
      fimescolha
fimprocedimento

//Menu 1
procedimento MenuBurguers()
var
   respMenuBurguers: Caracter
inicio
      limpatela
      escreval("=========================")
      escreval("       -Burguers-        ")
      escreval("=========================")
      escreval()
      escreval("|1| Hamburguer | R$6,00")
      escreval("|2| X-Burguer  | R$8,50")
      escreval("|3| X-Bacon    | R$11,50")
      escreval("|4| X-Tudo     | R$15,00")
      escreval()
      escreval("|X| Voltar")
      escreval("-------------------------")
      escreva("* Decisão -> ")
      leia(respMenuBurguers)

      escolha respMenuBurguers
      caso "1"
           ProcedimentoHamburguer()
      caso "2"
           ProcedimentoXBurguer()
      caso "3"
           ProcedimentoXBacon()
      caso "4"
           ProcedimentoXTudo()
      outrocaso
               limpatela
               Topo()
               MenuInicial()
      fimescolha
fimprocedimento

procedimento ProcedimentoHamburguer()
var
   quant, valor: Real
   respConf, respVoltarMenu: Caracter
inicio
      escreval()
      escreva("* Quantidade: ")
      leia(quant)
      valor <- quant * 6
      escreval("* Deseja comprar", quant, " burguers por R$", valor, "?")
      escreval()
      escreva("|Sim| |Não|: ")
      leia(respConf)
      escreval("-------------------------")
      se (respConf = "s") entao
         escreval("* Comprou", quant, " hamburguers por R$", valor, ".")
         escreval()
         escreval("-------------------------")
         escreval("* Voltar ao Menu Inicial?")
         escreval()
         escreva("|Sim| |Não|: ")
         leia(respVoltarMenu)
         escreval("-------------------------")
         se (respVoltarMenu = "s") entao
            limpatela
            Topo()
            MenuInicial()
         senao
              limpatela
              Topo()
              MenuBurguers()
         fimse
      senao
           escreval("* Voltar ao Menu Inicial?")
           escreval()
           escreva("|Sim| |Não|: ")
           leia(respVoltarMenu)
           escreval("-------------------------")
           se (respVoltarMenu = "s") entao
              limpatela
              Topo()
              MenuInicial()
           senao
                limpatela
                Topo()
                MenuBurguers()
           fimse
      fimse
fimprocedimento

procedimento ProcedimentoXBurguer()
var
   quant, valor: Real
   respConf, respVoltarMenu: Caracter
inicio
      escreval()
      escreva("* Quantidade: ")
      leia(quant)
      valor <- quant * 8.50
      escreval("* Deseja comprar", quant, " X-Burguers por R$", valor:1:2, "?")
      escreval()
      escreva("|Sim| |Não|: ")
      leia(respConf)
      escreval("-------------------------")
      se (respConf = "s") entao
         escreval("* Comprou", quant, " X-Burguers por R$", valor:1:2, ".")
         escreval()
         escreval("-------------------------")
         escreval("* Voltar ao Menu Inicial?")
         escreval()
         escreva("|Sim| |Não|: ")
         leia(respVoltarMenu)
         escreval("-------------------------")
         se (respVoltarMenu = "s") entao
            limpatela
            Topo()
            MenuInicial()
         senao
              limpatela
              Topo()
              MenuBurguers()
         fimse
      senao

           escreval("* Voltar ao Menu Inicial?")
           escreval()
           escreva("|Sim| |Não|: ")
           leia(respVoltarMenu)
           escreval("-------------------------")
           se (respVoltarMenu = "s") entao
              limpatela
              Topo()
              MenuInicial()
           senao
                limpatela
                Topo()
                MenuBurguers()
           fimse
      fimse
fimprocedimento

procedimento ProcedimentoXBacon()
var
   quant, valor: Real
   respConf, respVoltarMenu: Caracter
inicio
      escreval()
      escreva("* Quantidade: ")
      leia(quant)
      valor <- quant * 11.50
      escreval("* Deseja comprar", quant, " X-Bacon por R$", valor:1:2, "?")
      escreval()
      escreva("|Sim| |Não|: ")
      leia(respConf)
      escreval("-------------------------")
      se (respConf = "s") entao
         escreval("* Comprou", quant, " X-Bacon por R$", valor:1:2, ".")
         escreval()
         escreval("-------------------------")
         escreval("* Voltar ao Menu Inicial?")
         escreval()
         escreva("|Sim| |Não|: ")
         leia(respVoltarMenu)
         escreval("-------------------------")
         se (respVoltarMenu = "s") entao
            limpatela
            Topo()
            MenuInicial()
         senao
              limpatela
              Topo()
              MenuBurguers()
         fimse
      senao
           escreval("* Voltar ao Menu Inicial?")
           escreval()
           escreva("|Sim| |Não|: ")
           leia(respVoltarMenu)
           escreval("-------------------------")
           se (respVoltarMenu = "s") entao
              limpatela
              Topo()
              MenuInicial()
           senao
                limpatela
                Topo()
                MenuBurguers()
           fimse
      fimse
fimprocedimento

procedimento ProcedimentoXTudo()
var
   quant, valor: Real
   respConf, respVoltarMenu: Caracter
inicio
      escreval()
      escreva("* Quantidade: ")
      leia(quant)
      valor <- quant * 15
      escreval("* Deseja comprar", quant, " X-Tudo por R$", valor, "?")
      escreval()
      escreva("|Sim| |Não|: ")
      leia(respConf)
      escreval("-------------------------")
      se (respConf = "s") entao
         escreval("* Comprou", quant, " X-Tudo por R$", valor, ".")
         escreval()
         escreval("-------------------------")
         escreval("* Voltar ao Menu Inicial?")
         escreval()
         escreva("|Sim| |Não|: ")
         leia(respVoltarMenu)
         escreval("-------------------------")
         se (respVoltarMenu = "s") entao
            limpatela
            Topo()
            MenuInicial()
         senao
              limpatela
              Topo()
              MenuBurguers()
         fimse
      senao
           escreval("* Voltar ao Menu Inicial?")
           escreval()
           escreva("|Sim| |Não|: ")
           leia(respVoltarMenu)
           escreval("-------------------------")
           se (respVoltarMenu = "s") entao
              limpatela
              Topo()
              MenuInicial()
           senao
                limpatela
                Topo()
                MenuBurguers()
           fimse
      fimse
fimprocedimento

//Menu 2
procedimento MenuBebidas()
var
   respMenuBebidas: Caracter
inicio
      limpatela
      escreval("=========================")
      escreval("        -Bebidas-        ")
      escreval("=========================")
      escreval()
      escreval("|1| Refrigerante Lata | R$4,50")
      escreval("|2| Refrigerante 2L   | R$10,00")
      escreval("|3| Água c/ Gás       | R$3,50")
      escreval("|4| Água s/ Gás       | R$2,00")
      escreval()
      escreval("|X| Voltar")
      escreval("-------------------------")
      escreva("* Decisão -> ")
      leia(respMenuBebidas)

      escolha respMenuBebidas
      caso "1"
           ProcedimentoRefriLata()
      caso "2"
           ProcedimentoRefriLitro()
      caso "3"
           ProcedimentoAguaComGas()
      caso "4"
           ProcedimentoAguaSemGas()
      outrocaso
               limpatela
               Topo()
               MenuInicial()
      fimescolha
fimprocedimento

procedimento ProcedimentoRefriLata()
var
   quant, valor: Real
   respConf, respVoltarMenu: Caracter
inicio
      escreval()
      escreva("* Quantidade: ")
      leia(quant)
      valor <- quant * 4.50
      escreval("* Deseja comprar", quant, " latas de refrigerante por R$", valor:1:2, "?")
      escreval()
      escreva("|Sim| |Não|: ")
      leia(respConf)
      escreval("-------------------------")
      se (respConf = "s") entao
         escreval("* Comprou", quant, " latas de refrigerante por R$", valor:1:2, ".")
         escreval()
         escreval("-------------------------")
         escreval("* Voltar ao Menu Inicial?")
         escreval()
         escreva("|Sim| |Não|: ")
         leia(respVoltarMenu)
         escreval("-------------------------")
         se (respVoltarMenu = "s") entao
            limpatela
            Topo()
            MenuInicial()
         senao
              limpatela
              Topo()
              MenuBebidas()
         fimse
      senao
           escreval("* Voltar ao Menu Inicial?")
           escreval()
           escreva("|Sim| |Não|: ")
           leia(respVoltarMenu)
           escreval("-------------------------")
           se (respVoltarMenu = "s") entao
              limpatela
              Topo()
              MenuInicial()
           senao
                limpatela
                Topo()
                MenuBebidas()
           fimse
      fimse
fimprocedimento

procedimento ProcedimentoRefriLitro()
var
   quant, valor: Real
   respConf, respVoltarMenu: Caracter
inicio
      escreval()
      escreva("* Quantidade: ")
      leia(quant)
      valor <- quant * 10
      escreval("* Deseja comprar", quant, " garrafa(s) de 2L de refrigerante por R$", valor:1:2, "?")
      escreval()
      escreva("|Sim| |Não|: ")
      leia(respConf)
      escreval("-------------------------")
      se (respConf = "s") entao
         escreval("* Comprou", quant, " garrafa(s) de 2L de refrigerante por R$", valor:1:2, ".")
         escreval()
         escreval("-------------------------")
         escreval("* Voltar ao Menu Inicial?")
         escreval()
         escreva("|Sim| |Não|: ")
         leia(respVoltarMenu)
         escreval("-------------------------")
         se (respVoltarMenu = "s") entao
            limpatela
            Topo()
            MenuInicial()
         senao
              limpatela
              Topo()
              MenuBebidas()
         fimse
      senao
           escreval("* Voltar ao Menu Inicial?")
           escreval()
           escreva("|Sim| |Não|: ")
           leia(respVoltarMenu)
           escreval("-------------------------")
           se (respVoltarMenu = "s") entao
              limpatela
              Topo()
              MenuInicial()
           senao
                limpatela
                Topo()
                MenuBebidas()
           fimse
      fimse
fimprocedimento

procedimento ProcedimentoAguaComGas()
var
   quant, valor: Real
   respConf, respVoltarMenu: Caracter
inicio
      escreval()
      escreva("* Quantidade: ")
      leia(quant)
      valor <- quant * 3.50
      escreval("* Deseja comprar", quant, " água gaseficada por R$", valor:1:2, "?")
      escreval()
      escreva("|Sim| |Não|: ")
      leia(respConf)
      escreval("-------------------------")
      se (respConf = "s") entao
         escreval("* Comprou", quant, " água gaseficada por R$", valor:1:2, ".")
         escreval()
         escreval("-------------------------")
         escreval("* Voltar ao Menu Inicial?")
         escreval()
         escreva("|Sim| |Não|: ")
         leia(respVoltarMenu)
         escreval("-------------------------")
         se (respVoltarMenu = "s") entao
            limpatela
            Topo()
            MenuInicial()
         senao
              limpatela
              Topo()
              MenuBebidas()
         fimse
      senao
           escreval("* Voltar ao Menu Inicial?")
           escreval()
           escreva("|Sim| |Não|: ")
           leia(respVoltarMenu)
           escreval("-------------------------")
           se (respVoltarMenu = "s") entao
              limpatela
              Topo()
              MenuInicial()
           senao
                limpatela
                Topo()
                MenuBebidas()
           fimse
      fimse
fimprocedimento

procedimento ProcedimentoAguaSemGas()
var
   quant, valor: Real
   respConf, respVoltarMenu: Caracter
inicio
      escreval()
      escreva("* Quantidade: ")
      leia(quant)
      valor <- quant * 2
      escreval("* Deseja comprar", quant, " água mineral por R$", valor:1:2, "?")
      escreval()
      escreva("|Sim| |Não|: ")
      leia(respConf)
      escreval("-------------------------")
      se (respConf = "s") entao
         escreval("* Comprou", quant, " água mineral por R$", valor:1:2, ".")
         escreval()
         escreval("-------------------------")
         escreval("* Voltar ao Menu Inicial?")
         escreval()
         escreva("|Sim| |Não|: ")
         leia(respVoltarMenu)
         escreval("-------------------------")
         se (respVoltarMenu = "s") entao
            limpatela
            Topo()
            MenuInicial()
         senao
              limpatela
              Topo()
              MenuBebidas()
         fimse
      senao
           escreval("* Voltar ao Menu Inicial?")
           escreval()
           escreva("|Sim| |Não|: ")
           leia(respVoltarMenu)
           escreval("-------------------------")
           se (respVoltarMenu = "s") entao
              limpatela
              Topo()
              MenuInicial()
           senao
                limpatela
                Topo()
                MenuBebidas()
           fimse
      fimse
fimprocedimento

//Menu 3
procedimento MenuSobremesas()
var
   respMenuSobremesas: Caracter
inicio
      limpatela
      escreval("=========================")
      escreval("       -Sobremesas-      ")
      escreval("=========================")
      escreval()
      escreval("|1| Brownie          | R$8,00")
      escreval("|2| Salada Frutas    | R$10,00")
      escreval("|3| Pudim            | R$6,00")
      escreval("|4| Milk-Shake       | R$12,00")
      escreval()
      escreval("|X| Voltar")
      escreval("-------------------------")
      escreva("* Decisão -> ")
      leia(respMenuSobremesas)

      escolha respMenuSobremesas
      caso "1"
           ProcedimentoBrownie()
      caso "2"
           ProcedimentoSaladaFrutas()
      caso "3"
           ProcedimentoPudim()
      caso "4"
           ProcedimentoMilkShake
      outrocaso
               limpatela
               Topo()
               MenuInicial()
      fimescolha
fimprocedimento

procedimento ProcedimentoBrownie()
var
   quant, valor: Real
   respConf, respVoltarMenu: Caracter
inicio
      escreval()
      escreva("* Quantidade: ")
      leia(quant)
      valor <- quant * 8
      escreval("* Deseja comprar", quant, " brownie por R$", valor:1:2, "?")
      escreval()
      escreva("|Sim| |Não|: ")
      leia(respConf)
      escreval("-------------------------")
      se (respConf = "s") entao
         escreval("* Comprou", quant, " brownie por R$", valor:1:2, ".")
         escreval()
         escreval("-------------------------")
         escreval("* Voltar ao Menu Inicial?")
         escreval()
         escreva("|Sim| |Não|: ")
         leia(respVoltarMenu)
         escreval("-------------------------")
         se (respVoltarMenu = "s") entao
            limpatela
            Topo()
            MenuInicial()
         senao
              limpatela
              Topo()
              MenuSobremesas()
         fimse
      senao
           escreval("* Voltar ao Menu Inicial?")
           escreval()
           escreva("|Sim| |Não|: ")
           leia(respVoltarMenu)
           escreval("-------------------------")
           se (respVoltarMenu = "s") entao
              limpatela
              Topo()
              MenuInicial()
           senao
                limpatela
                Topo()
                MenuSobremesas()
           fimse
      fimse
fimprocedimento

procedimento ProcedimentoSaladaFrutas()
var
   quant, valor: Real
   respConf, respVoltarMenu: Caracter
inicio
      escreval()
      escreva("* Quantidade: ")
      leia(quant)
      valor <- quant * 10
      escreval("* Deseja comprar", quant, " Salada(s) de frutas por R$", valor:1:2, "?")
      escreval()
      escreva("|Sim| |Não|: ")
      leia(respConf)
      escreval("-------------------------")
      se (respConf = "s") entao
         escreval("* Comprou", quant, " Salada(s) de frutas por R$", valor:1:2, ".")
         escreval()
         escreval("-------------------------")
         escreval("* Voltar ao Menu Inicial?")
         escreval()
         escreva("|Sim| |Não|: ")
         leia(respVoltarMenu)
         escreval("-------------------------")
         se (respVoltarMenu = "s") entao
            limpatela
            Topo()
            MenuInicial()
         senao
              limpatela
              Topo()
              MenuSobremesas()
         fimse
      senao
           escreval("* Voltar ao Menu Inicial?")
           escreval()
           escreva("|Sim| |Não|: ")
           leia(respVoltarMenu)
           escreval("-------------------------")
           se (respVoltarMenu = "s") entao
              limpatela
              Topo()
              MenuInicial()
           senao
                limpatela
                Topo()
                MenuSobremesas()
           fimse
      fimse
fimprocedimento

procedimento ProcedimentoPudim()
var
   quant, valor: Real
   respConf, respVoltarMenu: Caracter
inicio
      escreval()
      escreva("* Quantidade: ")
      leia(quant)
      valor <- quant * 6
      escreval("* Deseja comprar", quant, " Pudim por R$", valor:1:2, "?")
      escreval()
      escreva("|Sim| |Não|: ")
      leia(respConf)
      escreval("-------------------------")
      se (respConf = "s") entao
         escreval("* Comprou", quant, " Pudim por R$", valor:1:2, ".")
         escreval()
         escreval("-------------------------")
         escreval("* Voltar ao Menu Inicial?")
         escreval()
         escreva("|Sim| |Não|: ")
         leia(respVoltarMenu)
         escreval("-------------------------")
         se (respVoltarMenu = "s") entao
            limpatela
            Topo()
            MenuInicial()
         senao
              limpatela
              Topo()
              MenuSobremesas()
         fimse
      senao
           escreval("* Voltar ao Menu Inicial?")
           escreval()
           escreva("|Sim| |Não|: ")
           leia(respVoltarMenu)
           escreval("-------------------------")
           se (respVoltarMenu = "s") entao
              limpatela
              Topo()
              MenuInicial()
           senao
                limpatela
                Topo()
                MenuSobremesas()
           fimse
      fimse
fimprocedimento

procedimento ProcedimentoMilkShake()
var
   quant, valor: Real
   respConf, respVoltarMenu: Caracter
inicio
      escreval()
      escreva("* Quantidade: ")
      leia(quant)
      valor <- quant * 12
      escreval("* Deseja comprar", quant, " Milk-Shake(s) por R$", valor:1:2, "?")
      escreval()
      escreva("|Sim| |Não|: ")
      leia(respConf)
      escreval("-------------------------")
      se (respConf = "s") entao
         escreval("* Comprou", quant, " Milk-Shake(s) por R$", valor:1:2, ".")
         escreval()
         escreval("-------------------------")
         escreval("* Voltar ao Menu Inicial?")
         escreval()
         escreva("|Sim| |Não|: ")
         leia(respVoltarMenu)
         escreval("-------------------------")
         se (respVoltarMenu = "s") entao
            limpatela
            Topo()
            MenuInicial()
         senao
              limpatela
              Topo()
              MenuSobremesas()
         fimse
      senao
           escreval("* Voltar ao Menu Inicial?")
           escreval()
           escreva("|Sim| |Não|: ")
           leia(respVoltarMenu)
           escreval("-------------------------")
           se (respVoltarMenu = "s") entao
              limpatela
              Topo()
              MenuInicial()
           senao
                limpatela
                Topo()
                MenuSobremesas()
           fimse
      fimse
fimprocedimento

//Fim Programa
procedimento FinalizarPrograma()
inicio
      limpatela
      escreval("=========================")
      escreval("       Finalizando...    ")
      escreval("=========================")
fimprocedimento

inicio
Topo()
MenuInicial()
fimalgoritmo
