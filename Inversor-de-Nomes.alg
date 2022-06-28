algoritmo "Inversão de Nomes"
var
   nome: Caracter
   cont: Inteiro
inicio
      escreva("Digite um nome: ")
      leia(nome)
      cont <- compr(nome)
      para cont <- compr(nome) ate 1 passo - 1 faca
           escreva(Copia(nome, cont, 1))
      fimpara
fimalgoritmo
