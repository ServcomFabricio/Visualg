Algoritmo "Calduladora"
//   TRABALHO DE L�GICA DE PROGRAMA��O
//   PROFESSOR : Andr� Augusto de Abreu Rodrigues
//   Alunos: Janine Luiz Pereira Silva Santos
//           Fabr�cio Gomes Santos

Var
   descricaoOpcao:vetor [1..12] de caracter
   opcao,pausar:inteiro


   // Fun��o Sobre
Procedimento SObre
var
   contar:inteiro

inicio
   escreval("":10,"  ____   _____   ____   _   ____    _____ ")
   escreval("":10," |  __| |  _  | | ___| | | | ___|  |  _  |")
   escreval("":10," | |_   | |_| | | |    | | | |__   | |_| |")
   escreval("":10," |  _|  | | | | | |    | | |__  |  | | | |")
   escreval("":10," | |    | | | | | |__  | |  __| |  | | | |")
   escreval("":10," |_|    |_| |_| |____| |_| |____|  |_| |_|")
   escreval("")
   escreval("":10,"TRABALHO DE L�GICA DE PROGRAMA��O")
   escreval("":10,"PROFESSOR : Andr� Augusto de Abreu Rodrigues ")
   escreval("":10,"CURSO     : ENGENHARIA DE COMPUTA��O 2020 1� PERIODO ")
   escreval("":30,"ALUNOS ")
   escreval("":20,"JANINE L. P. SILVA SANTOS ")
   escreval("":20,"FABRICIO GOMES SANTOS ")
   escreval("")
   escreval("")
   escreval(" ":10," Pressione Enter para continuar....")
   leia(pausar)
   limpatela
Fimprocedimento

procedimento Sair
inicio
   escreval("":15,"   .---------. | == | ")
   escreval("":15,"   |.-'''''-.| |----| ")
   escreval("":15,"   ||#PARTIU|| | == | ")
   escreval("":15,"   ||       || |----| ")
   escreval("":15,"   |'-.....-'| |::::| ")
   escreval("":15,"   `'')---(''` |___.| ")
   escreval("":15,"  /:::::::::::\' _  ' ")
   escreval("":15," /:::=======:::\`\`\  ")
   escreval("":15," `'''''''''''''`  '-' ")
   escreval("":15," POR HOJE � S� PESSOAL !!! ")
   timer 2000
   timer 0
Fimprocedimento

// Inicializa vetor descri��o
Procedimento InicilizaDescricaoOpcao
var
inicio
   descricaoOpcao[1]:="1 - Adi��o               "
   descricaoOpcao[2]:="2 - Subtra��o            "
   descricaoOpcao[3]:="3 - Divis�o              "
   descricaoOpcao[4]:="4 - Multiplica��o        "
   descricaoOpcao[5]:="5 - Porcentagem          "
   descricaoOpcao[6]:="6 -�rea do Quadrado      "
   descricaoOpcao[7]:="7 - �rea do Ret�ngulo    "
   descricaoOpcao[8]:="8 - Progress�o Aritm�tica"
   descricaoOpcao[9]:="9 - Progress�o Geom�trica"
   descricaoOpcao[10]:="10 - Convers�o de Moeda  "
   descricaoOpcao[11]:="11 - Sobre               "
   descricaoOpcao[12]:="12 - Sair                "
Fimprocedimento

// Cria��o do quadro de op��es da tela
Procedimento QuadroTela(numeroLinhas,numeroColunas,numeroCampo,espacamento:inteiro)
var
   contador,contador1,numeroDescricao:inteiro
   linha:caracter

Inicio

   // Inicializa linha com tra�os
   para contador de 1 ate numeroColunas faca
      linha:=linha+"-"
   FimPara

   // Monta quadros da tela
   para contador de 1 ate numeroLinhas faca
      se contador=1 entao
         escreval (linha)
         escrevaL("|":20,"CALCULADORA VISUALG":42,"|")
         escreval (linha)
      fimse
      para contador1 de 1 ate  numeroCampo faca
         escreva ("|":espacamento)
         numeroDescricao:=numeroDescricao+1
         escreva (descricaoOpcao[numeroDescricao])
      fimpara
      escreval ("|")
      escreval (linha)
   fimpara
FimProcedimento

// Contru��o da tela
Procedimento Tela
var

inicio
   InicilizaDescricaoOpcao
   QuadroTela(6,62,2,6)

FimProcedimento

// Exibir notifica��o
Procedimento Notificacao(mensagemTela:caracter)
inicio
   escreval(" ":25,"ATEN��O")
   escreval(" ":15,"(",mensagemTela,")")
   timer 2000
   timer 0
   limpatela
Fimprocedimento

// Exibir resultado
Procedimento ResultadoTela(resultado:caracter)
var
   contador:inteiro
   linha:caracter
inicio
   para contador de 1 ate 62 faca
      linha:=linha+"-"
   FimPara

   limpatela
   Tela
   escreval("|",resultado)
   escreval(linha)
   escreval("| ":10," Pressione Enter para continuar....":52,"|")
   escreval(linha)
   leia(pausar)
   limpatela
Fimprocedimento

//Valida a entrada de dados
Funcao EntradaDados(tipoTermo:caracter):real
var
   numero:real
inicio
   enquanto numero=0 faca
      Tela
      escreva("| Informe ",tipoTermo:40)
      leia(numero)
      se numero =0 entao
         Notificacao(tipoTermo+" n�o � valido")
      fimse
      limpatela
   fimenquanto
   retorne numero
Fimfuncao

//Valida a entrada de dados
Funcao EntradaDadosComZero(tipoTermo:caracter):real
var
   numero:real
inicio
   Tela
   escreva("| Informe ",tipoTermo:40)
   leia(numero)
   limpatela
   retorne numero
Fimfuncao

// Executa uma funcao conforme a opcao selecionada
Procedimento ExecutarFuncao
var
   resultado:caracter
inicio
   limpatela
   Escolha opcao
   Caso 1
      resultado:=Adicao()
   Caso 2
      resultado:=Subtracao()
   Caso 3
      resultado:=Divisao()
   Caso 4
      resultado:=Multiplicacao()
   Caso 5
      resultado:=Percentual()
   Caso 6
      resultado:=AreaQuadrado()
   Caso 7
      resultado:=AreaRetangulo()
   Caso 8
      resultado:=ProgressaoAritmetica()
   Caso 9
      resultado:= ProgressaoGeometrica()
   Caso 10
      resultado:= ConversaoMoeda()
   Caso 11
      resultado:=""
      Sobre
   Fimescolha

   se resultado<>"" entao
      ResultadoTela(resultado)
   fimse
Fimprocedimento

// Fun��o Adi��o
Funcao Adicao():caracter
var
   parcela1,parcela2:real
inicio
   parcela1:=EntradaDados("primeira parcela da Adi��o")
   parcela2:=EntradaDados("segunda parcela da Adi��o")
   retorne "Soma "+Numpcarac(parcela1)+" + "+Numpcarac(parcela2)+" = "+Numpcarac((parcela1+parcela2))
FimFuncao

// Fun��o Subtracao
Funcao Subtracao():caracter
var
   aditivo,subtrativo:real
inicio
   aditivo:=EntradaDados("o aditivo da Subtra��o")
   subtrativo:=EntradaDados("o subtrativo da Subtra��o")
   retorne "Diferen�a "+Numpcarac(aditivo)+" - "+Numpcarac(subtrativo)+" = "+Numpcarac((aditivo-subtrativo))
FimFuncao

// Fun��o Divis�o
Funcao Divisao():caracter
var
   dividendo,divisor:real
inicio
   dividendo:=EntradaDados("o dividendo da Divis�o")
   divisor:=EntradaDados("o divisor da Divis�o")
   retorne "Quociente "+Numpcarac(dividendo)+" : "+Numpcarac(divisor)+" = "+Numpcarac((dividendo/divisor))
FimFuncao

// Fun��o Multiplica��o
Funcao Multiplicacao():caracter
var
   fator1,fator2:real
inicio
   fator1:=EntradaDados("o primeiro fator da Multiplica��o")
   fator2:=EntradaDados("o segundo fator da Multiplica��o")
   retorne "Produto "+Numpcarac(fator1)+" * "+Numpcarac(fator2)+" = "+Numpcarac((fator1*fator2))
FimFuncao

// Fun��o Percentual
Funcao Percentual():caracter
var
   valorInteiro,valorPercentual,valorResultado:real
inicio
   valorInteiro:=EntradaDados("o Valor Inteiro da Porcentagem")
   valorPercentual:=EntradaDados("o Valor Percentual ")
   valorPercentual:= (valorPercentual/100)
   valorResultado:=(valorInteiro*valorPercentual)
   retorne "Porcentagem "+Numpcarac((valorPercentual*100))+"% de  "+Numpcarac(valorInteiro)+" � "+Numpcarac(valorResultado)
FimFuncao

// Fun��o �rea do Quadrad
Funcao AreaQuadrado():caracter
var
   ladoQuadrado:real
inicio
   ladoQuadrado:=EntradaDados("o lado do Quadrado")
   retorne "�rea do Quadrado com lado "+Numpcarac(ladoQuadrado)+" � de  "+Numpcarac((ladoQuadrado*ladoQuadrado))
FimFuncao

// Fun��o �rea do Ret�ngulo
Funcao AreaRetangulo():caracter
var
   baseRetangulo,alturaRetangulo:real
inicio
   baseRetangulo:=EntradaDados("a base do Ret�ngulo")
   alturaRetangulo:=EntradaDados("a altura do Ret�ngulo")
   retorne "�rea do Ret�ngulo com base "+Numpcarac(baseRetangulo)+" e altura de "+Numpcarac(alturaRetangulo)+" � "+Numpcarac((baseRetangulo*alturaRetangulo))
FimFuncao

// Fun��o Progress�o Aritm�tica
Funcao ProgressaoAritmetica():caracter
var
   razao,valorInicial,valorAtual,sentido:real
   contar:inteiro
   resultadoPA:caracter
inicio
   valorInicial:=EntradaDados("Valor Inicial para Progress�o Aritm�tica")
   razao:=EntradaDadosComZero("a raz�o para a Progress�o Aritm�tica")

   sentido:=2
   enquanto (sentido<>0) e (sentido<>1) faca
      sentido:=EntradaDadosComZero("0 - P.A crescente ou 1 - para decrescente")
   fimenquanto

   valorAtual:=valorInicial
   se sentido=0 entao
      resultadoPA:="crescente "
      para contar de 1 ate 10 faca
         valorAtual:=valorAtual+razao
         resultadoPA:=resultadoPA+Numpcarac(valorAtual)+" "
      fimpara
   senao
      resultadoPA:="decrescente "
      para contar de 1 ate 10 faca
         valorAtual:=valorAtual+(razao*-1)
         resultadoPA:=resultadoPA+Numpcarac(valorAtual)+" "
      fimpara
   fimse

   retorne "Progress�o Aritm�tica de "+Numpcarac(valorInicial)+" com valor de razao "+Numpcarac(razao)+" � "+resultadoPA
FimFuncao

// Fun��o Progress�o Geom�trica
Funcao ProgressaoGeometrica():caracter
var
   valorInicial,valorAtual:real
   contar:inteiro
   resultadoPA:caracter
inicio
   valorInicial:=EntradaDados("Valor Inicial para Progress�o Geom�trica")
   valorAtual:=valorInicial
   para contar de 1 ate 10 faca
      valorAtual:=valorAtual*valorInicial
      resultadoPA:=resultadoPA+Numpcarac(valorAtual)+" "
   fimpara

   retorne "Progress�o Geom�trica de "+Numpcarac(valorInicial)+" � "+resultadoPA
FimFuncao

// Fun��o Convers�o de Moeda
Funcao ConversaoMoeda():caracter
var
   quantidadeMoeda,Contacao:real
inicio
   quantidadeMoeda:=EntradaDados("Quantidade de Moeda Estrangeira")
   Contacao:=EntradaDados("Conta��o da Moeda Estrangeira")

   retorne " "+Numpcarac(quantidadeMoeda*Contacao)+" em moeda local"
FimFuncao


// Programa Principal
Inicio

   enquanto verdadeiro faca
      Tela
      escreva("| Informe a fun��o que deseja realizada a calculadora:":55)
      leia(opcao)

      se opcao=12 entao
         limpatela
         Sair
         Fimalgoritmo
      fimse

      se (opcao > 12) ou (opcao = 0) entao
         Notificacao("Fun��o escolhida n�o � valida")
      senao
            ExecutarFuncao
            opcao:=0
      fimse
    fimenquanto


Fimalgoritmo

