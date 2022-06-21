algoritmo "SistemaBancarioTeste"
//---------------------------------
procedimento Topo()
inicio
      escreval("-----------------------------")
      escreval("Saldo Disponivel: ", saldoDisp)
      escreval("-----------------------------")
fimprocedimento
//---------------------------------
procedimento Menu()
inicio
      escreval()
      escreval("-----------------------------")
      escreval("|1| Depositar")
      escreval("|2| Sacar")
      escreval("|3| Transferir")
      escreval("-----------------------------")
fimprocedimento
//---------------------------------
procedimento Movimentacao()
inicio
   repita
      escreval()
      escreva("Escolha a operação: ")
      leia(op)
      escolha op
      caso 1
           Depositar()
      caso 2
           Sacar()
      caso 3
      outrocaso
               escreval()
               escreval("Operação inválida.")
      fimescolha
      escreval()
      escreva("Confirmar? |s|n|: ")
      leia(respFim)
      limpatela
      Topo()
      Menu()
   ate(respFim = "n")
fimprocedimento
//---------------------------------
procedimento Depositar()
inicio
      escreval()
      escreva("Valor do depósito: ")
      leia(valorDep)
      saldoDisp <- valorDep
fimprocedimento
//---------------------------------
procedimento Sacar()
inicio
      escreval()
      escreva("Valor do Saque: ")
      leia(valorSaq)
      se (valorSaq > saldoDisp) entao
         escreval()
         escreval("Saldo indisponivel.")
      senao
           saldoDisp <- saldoDisp - valorSaq
           escreval()
           escreval("Sacando R$", valorSaq)
      fimse
fimprocedimento
//---------------------------------
var
   saldoDisp, valorDep, valorSaq: Real
   op: Inteiro
   respFim: Caracter
inicio
Topo()
Menu()
Movimentacao()
fimalgoritmo
