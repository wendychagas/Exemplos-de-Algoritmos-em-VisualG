algoritmo "Financeiro"
var
   nome, prod, opPagamento: Caracter
   meuSaldo, valorItem, novoValorItem, valorParc: Real
   parc, cont: Inteiro
//------------------------------------------------------------------------------
procedimento Topo()
inicio
      escreval("---------------------")
      escreval("   Área do Cliente   ")
      escreval()
      escreval("Cliente: ", nome)
      escreval("Carteira R$", meuSaldo:5:2)
      escreval()
      escreval("---------------------")
      escreval("   Área do Produto   ")
      escreval()
      escreval("Item: ", prod)
      escreval("Preço R$", valorItem:5:2)
      escreval("Parcelas:", parc)
      escreval("Valor mensal R$", valorParc:5:2)
      escreval("---------------------")
      escreval()
fimprocedimento
//------------------------------------------------------------------------------
procedimento PegarDados()
inicio
      escreval("_____________________")
      escreval("      Cadastro       ")
      escreval()
      escreva("Nome: ")
      leia(nome)
      escreva("Carteira: ")
      leia(meuSaldo)
      escreval()
      escreva("Produto: ")
      leia(prod)
      escreva("Preço: ")
      leia(valorItem)
      LimpaTela
      Topo()

      escreval("_____________________")
      escreval(" Método de pagamento ")
      escreval()
      escreval("[1] À vista")
      escreval("[2] À prazo")
      escreva("Faça sua escolha: ")
      leia(opPagamento)
      se (opPagamento = "1") entao
         novoValorItem <- valorItem - (valorItem*10/100)
         valorItem <- novoValorItem
      senao
           se (opPagamento = "2") entao
              escreva("Parcelamento: ")
              leia(parc)
              cont <- parc
              valorParc <- valorItem / parc
           fimse
      fimse
      
      
      LimpaTela
      Topo()
fimprocedimento
//------------------------------------------------------------------------------
inicio
Topo()
PegarDados()
fimalgoritmo
