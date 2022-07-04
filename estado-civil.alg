algoritmo "Estado Civil"
var
   totSol, totCas, totViu: Inteiro
   op, resp: Caracter
//------------------------------------------------------------------------------
procedimento Topo()
inicio
      escreval("-------------------------------")
      escreval("    E S T A D O   C I V I L    ")
      escreval("-------------------------------")
      escreval("-------------------------------")
      escreval("|s| Solteiros(as) |", totSol, " |")
      escreval("|c| Casados(as)   |", totCas, " |")
      escreval("|v| Viúvos(as)    |", totViu, " |")
      escreval("-------------------------------")
fimprocedimento
//------------------------------------------------------------------------------
inicio
   totSol <- 0
   totCas <- 0
   totViu <- 0
   repita
      Topo()
      escreva("[ s ] [ c ] [ v ]: ")
      leia(op)

      escolha op
      caso "s"
           totSol <- totSol + 1
      caso "c"
           totCas <- totCas + 1
      caso "v"
           totViu <- totViu + 1
      outrocaso
               escreval()
               escreva("ERRO! Opção inválida.")
      fimescolha
      escreval()
      escreva("Confirmar? [s] [n]: ")
      leia(resp)
      LimpaTela
   ate(resp = "N")
fimalgoritmo
