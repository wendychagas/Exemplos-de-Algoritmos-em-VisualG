algoritmo "AP1 - Matemática Para Computação"
//------------------------------------------------------------------------------
// Uma loja está vendendo uma TV com a opção de parcelamento com um desconto a
// quem pagar os boletos das parcelas antes da data de vencimento. Funcionando
// da seguinte forma:
//
// - Boletos pagos na data de vencimento, pagam o valor exato da parcela.
// - Boletos pagos antes da data de vencimento, ganham um desconto de 10%.
// - Boletos pagos após a data de vencimento, ganham um acréscimo de 4%.
//
// Lívia e Bernardo compraram uma TV cada.
//
// Lívia parcelou em 8 vezes, pagou as 2 primeiras parcelas na data de vencimen-
// to e as demais parcelas, ela pagou antes da data.
//
// Bernardo parcelou em 11 vezes e pagou a primeira parcela antes da data. Mas
// devido a falta de organização financeira, precisou pagar as 7 parcelas
// seguintes, atrasadas. Para tentar compensar o gasto, pagou as parcelas
// restantes, antes da data de vencimento.
//
// Sabendo que a TV tinha um custo de R$2500,00, podendo ser parcelada em 12x
// sem juros, qual foi o valor pago por Lívia e por Bernardo na TV?
//------------------------------------------------------------------------------
var
   valorProd, pagEmDia, pagAdiantado, pagAtrasado, valorPagoTv: Real
   op, resp: Caracter
   parcelas: Inteiro
procedimento Topo()
inicio
      escreval("----------------------------------------")
      escreval("Valor do produto R$", valorProd:5:2)
      escreval("Valor pago até o momento R$", valorPagoTv:5:2)
      escreval("Prestações restantes: ", parcelas)
      escreval("----------------------------------------")
fimprocedimento
//------------------------------------------------------------------------------
procedimento Menu()
inicio
      escreval("[1] Pagou em dia")
      escreval("[2] Pagou atrasado")
      escreval("[3] Pagou adiantado")
      escreval("[x] Finalizar")
      escreva("-> ")
      leia(op)
fimprocedimento
//------------------------------------------------------------------------------
procedimento Comprador()
inicio
      escreval("[1] Livia")
      escreval("[2] Bernardo")
      escreval()
      escreva("-> ")
      leia(resp)
      escolha resp
      caso "1"
           pagEmDia <- 312.50
           pagAdiantado <- 281.25
           pagAtrasado <- 325.00
      caso "2"
           pagEmDia <- 227.27
           pagAdiantado <- 204.55
           pagAtrasado <- 236.36
      fimescolha
fimprocedimento
//------------------------------------------------------------------------------
inicio
      Topo()
      Comprador()
      limpatela
      Topo()
      escreva("Valor Tv R$")
      leia(valorProd)
      escreva("Nº parcelas: ")
      leia(parcelas)
      enquanto (parcelas >= 0) faca
         limpatela
         Topo()
         Menu()
         se (op = "1") entao
            valorPagoTv <- valorPagoTv + pagEmDia
         fimse
         se (op = "2") entao
            valorPagoTv <- valorPagoTv + pagAtrasado
         fimse
         se (op = "3") entao
            valorPagoTv <- valorPagoTv + pagAdiantado
         fimse
         se (op = "x") entao
            parcelas <- 0
            limpatela
            Topo()
            escreval()
            escreval("---------------")
            escreval("  Finalizando  ")
            escreval("---------------")
         fimse
         parcelas <- parcelas - 1
      fimenquanto
fimalgoritmo
