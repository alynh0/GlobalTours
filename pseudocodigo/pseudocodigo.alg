algoritmo "Nome do Programa"

var

   clientes, destino, paisesDestino, duracoesDestino:vetor[1..5] de caracter
   cpf, idade:vetor[1..5] de inteiro
   idCliente, idDestino, opcao, opcao2: inteiro
   // H� UM LIMITE DE CADASTROS PARA 5 DESTINOS E 5 CLIENTES

inicio

   repita
      escreval("============== BOAS VINDAS ==============")
      escreval("=== DIGITE UMA OP��O PARA PROSSEGUIR  ===")
      escreval("1. CADASTRAR CLIENTE")
      escreval("2. CADASTRAR DESTINO")
      escreval("3. CONSULTAR CLIENTES")
      escreval("4. CONSULTAR DESTINOS")
      escreval("5. ENCERRAR APLICA��O")
      escreval("====================")
      escreva("Digite uma op��o: ")
      leia(opcao)
      escolha (opcao)
      caso 1
         repita
            idCliente <- 1 + idCliente
            escreval("=== CADASTRO DE CLIENTE ===")
            escreva("DIGITE O NOME DO CLIENTE: ")
            leia(clientes[idCliente])
            escreva("DIGITE O CPF DO CLIENTE: ")
            leia(cpf[idCliente])
            escreva("DIGITE A IDADE DO CLIENTE: ")
            leia(idade[idCliente])
            escreval("=== CADASTRO FINALIZADO ===")
            escreval("=== REALIZAR OUTRO CADASTRO? ===")
            escreval("1. SIM")
            escreval("2. N�O")
            Escreva("Digite uma op��o:")
            leia(opcao2)

         ate (opcao2 = 2)
      caso 2
         escreval("=== CADASTRO DE DESTINO ===")
         repita
            idDestino <- 1 + idDestino
            escreva("Digite o nome do destino: ")
            leia(destino[idDestino])
            escreva("Digite o pa�s do destino: ")
            leia(paisesDestino[idDestino])
            escreva("Digite a dura��o da viagem (em dias): ")
            leia(duracoesDestino[idDestino])
            escreval("Destino cadastrado com sucesso!")
            se (idDestino = 5) entao
               escreval("Limite de destinos alcan�ado.")
            senao
               escreval("=== REALIZAR OUTRO CADASTRO? ===")
               escreval("1. SIM")
               escreval("2. N�O")
               Escreva("Digite uma op��o:")
               leia(opcao2)
            fimse

         ate ((opcao2 = 2) ou (idDestino = 5))
      caso 3
         escreval("=== CONSULTA DE CLIENTES ===")
         idCliente <- 0
         repita
            idCliente <- 1 + idCliente
            escreval(idCliente, "� CLIENTE: ", clientes[idCliente])
            escreval("CPF: ", cpf[idCliente])
            escreval("IDADE: ", idade[idCliente])
         ate (idCliente = 5)
         escreval("Consulta finalizada!")
      caso 4
         escreva("=== CONSULTAR DESTINOS ===")
         idDestino <- 0
         repita
            idDestino <- 1 + idDestino
            escreval(idDestino, "� DESTINO: ", destino[idDestino])
            escreval("PA�S: ", paisesDestino[idDestino])
            escreval("DURA��O (DIAS): ", duracoesDestino[idDestino])
         ate (idDestino = 5)
         escreval("Consulta finalizada!")
      caso 5
         escreva("Programa finalizado!")
      outrocaso
         escreval("Digite uma op��o v�lida.")
      fimescolha
   ate (opcao = 5)

fimalgoritmo