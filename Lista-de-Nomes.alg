algoritmo "Pesquisar Nomes"
var
   listaNome: vetor[1..10] de Caracter
   i: Inteiro
   resp, pesq: Caracter
   acha: Logico
//------------------------------------------------------------------------------
procedimento GuardarNomes()
inicio
      // Guardar Nomes;
      escreval("=-=-=-=-=-=-=-=-=-=-=-=")
      escreval("- > Cadastrar Nomes < -")
      escreval("=-=-=-=-=-=-=-=-=-=-=-=")
      para i <- 1 ate 10 faca
           escreva(i," - Lista | Nome: ")
           aleatorio on
           leia(listaNome[i])
      fimpara
      aleatorio off
      LimpaTela
      IniciarPesquisa()
fimprocedimento
//------------------------------------------------------------------------------
procedimento IniciarPesquisa()
inicio
      // Inicio da Rotina de Pesquisa
      resp <- "s"
      enquanto (resp = "s") faca
         escreval("=-=-=-=-=-=-=-=-=-=-")
         escreval("Pesquisa  Sequencial")
         escreval("=-=-=-=-=-=-=-=-=-=-")
         escreva("Pesquisar Nomes: ")
         leia(pesq)

         i <- 1
         acha <- falso

         // Flag;
         enquanto (i <= 10) e (acha = falso) faca
            se (pesq = listaNome[i]) entao
               acha <- verdadeiro
            senao
                 i <- i + 1 // i++
            fimse
         fimenquanto

         se (acha = verdadeiro) entao
            escreval()
            escreval("|",pesq, "| foi localizado na posição", i, " da lista.")
         senao
              escreval()
              escreval("|", pesq, "| não foi localizado na lista.")
         fimse
         
         escreval()
         escreva("Continuar Pesquisando? |s| |n|: ")
         leia(resp)
         LimpaTela
      fimenquanto
      LimpaTela
      Finalizar()
fimprocedimento
//------------------------------------------------------------------------------
procedimento Finalizar()
inicio
      escreval("=-=-=-=-=-=-=-=")
      escreval(" Finalizando...")
      escreval("=-=-=-=-=-=-=-=")
fimprocedimento
//------------------------------------------------------------------------------
inicio
GuardarNomes()
fimalgoritmo
