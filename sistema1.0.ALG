Algoritmo "sistema2.0"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Bruno
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : MARDSON BARBOZA DOS SANTOS
// Data atual  : 06/09/2021
tipo
   admin=registro
      id:inteiro
      nome:caractere
      login:caractere
      senha:caractere
   fimregistro

   funcionario=registro
      id:inteiro
      nome:caractere
      login:caractere
      senha:caractere
      cpf:caractere
      admin:inteiro
   fimregistro

   medico=registro
      id:inteiro
      nome:caractere
      login:caractere
      senha:caractere
      cpf:caractere
      admin:inteiro
   fimregistro

   paciente=registro
      id:inteiro
      nome:caractere
      login:caractere
      senha:Caractere
      cpf:caractere
      medico:inteiro
      funcionario:inteiro
      status:caractere
      diaAtendimento:caractere
      mesAtendimento:caractere
      anoAtendimento:caractere
      dataConsulta:caractere
   fimregistro
Var
   op,senha,login,item,permissao,opcao,alternativa,status,nome:caractere
   qntAdmin,qntFuncionario,qntPaciente,j,i,k,qntMedico,id,med:inteiro
   admin:vetor[1..3] de admin
   funcionario:vetor[1..100] de funcionario
   medico:vetor[1..100] de medico
   paciente:vetor[1..100] de paciente

   //cadastro de admin
PROCEDIMENTO registroAdmin()
var
   nome,login,senha:caractere
inicio
   se qntAdmin+1>3 entao
      escreval("passou da cota do sistema")
   senao
      escreval("REGISTRO DE ADMIN")
      qntAdmin <- qntAdmin + 1

      escreval("o nome do admin")
      leia(nome)
      escreval("O login do admin")
      leia(login)
      escreval("A senha do admin")
      leia(senha)
      se ( nome = "") e ( login = "") e ( senha = "") entao
         escreval("campos não podem esta vacio")
      senao
         admin[qntAdmin].id <- qntAdmin
         admin[qntAdmin].nome <- nome
         admin[qntAdmin].login <- login
         admin[qntAdmin].senha <- senha
      fimse
   fimse
FIMPROCEDIMENTO
//listar tods os admins
PROCEDIMENTO listarAdmins()

var
   i,j:inteiro
inicio
   para i de 1 ate qntAdmin faca
      escrevaL("Id:",admin[i].id)
      escrevaL("ADM:",admin[i].nome)
      escreval("")
   fimpara

FIMPROCEDIMENTO
//listar admin por id
PROCEDIMENTO listarAdminId()
var
   id,i:inteiro
inicio
   escreva("Digite o id do funcionario que deseja ver")
   leia(id)
   para i de 1 ate qntAdmin faca
      se id = admin[i].id entao
         escrevaL("Id:",admin[i].id)
         escrevaL("ADM:",admin[i].nome)
      fimse

   fimse
fimpara

FIMPROCEDIMENTO
//cadastro de funcionario
PROCEDIMENTO  cadFuncionarios()
var
   nome,cpf:caractere
inicio
   se qntFuncionario+1>100 entao
      escreval("Passou da cota do sistema")
   senao
      escreval("REGISTRO DE FUNCIONARIO")
      qntFuncionario <- qntFuncionario + 1
      escreva("nome compreto:")
      leia(nome)
      escreva("CPF:")
      leia(cpf)
      se (nome = "") e (cpf = "")  entao
         escreval("campos não podem estar vazio ")
      senao
         para i de 1 ate qntAdmin faca
            se (login=admin[i].login) e (senha=admin[i].senha) entao
               funcionario[qntFuncionario].admin <- i
               funcionario[qntFuncionario].id <- qntFuncionario
               funcionario[qntFuncionario].nome <- nome
               funcionario[qntFuncionario].cpf <- cpf
               funcionario[qntFuncionario].login <- funcionario[qntFuncionario].cpf
               funcionario[qntFuncionario].senha <- ""
               escreval("funcionario cadastrado com sucesso")
               escreval("")
            fimse
         fimpara
      fimse
   fimse

FIMPROCEDIMENTO
//listagem de todos os funcionarios
PROCEDIMENTO  listarFuncionarios()
var
   i,j:inteiro
inicio
   para i de 1 ate qntFuncionario faca
      para j de 1 ate qntAdmin faca
         se funcionario[i].admin = admin[j].id entao
            escrevaL("Id:",funcionario[i].id)
            escrevaL("ADM:",admin[j].nome)
            ESCREVAL("Nome do funcionario:",funcionario[i].nome)
            escreval("login:",funcionario[i].login)
            escreval("senha:",funcionario[i].senha)
            escreval("")
         fimse
      fimpara
   fimpara
FIMPROCEDIMENTO
//listar funcionario pelo id
PROCEDIMENTO pesquisarFuncionarioId()
var
   id,i:inteiro
inicio
   escreva("Digite o id do funcionario que deseja ver")
   leia(id)
   para i de 1 ate qntFuncionario faca
      se id = funcionario[i].id entao
         escrevaL("Id:",funcionario[i].id)
         escrevaL("ADM:",admin[i].nome)
         escrevaL("Nome:",funcionario[i].nome)
         escrevaL("CPF:",funcionario[i].cpf)
      fimse
   fimpara
fimPROCEDIMENTO
//cadastro de medico
PROCEDIMENTO cadMedico()
var
   nome,telefone,cpf,rg,indereco,imail :caractere
   idade,i:inteiro
   salario:real

inicio
   se qntMedico+1>100 entao
      escreval("Passou da cota do sistema")
   senao
      escreval("REGISTRO DE MEDICO")
      qntMedico<- qntMedico + 1

      escreva("nome compreto:")
      leia(nome)
      escreva("CPF:")
      leia(cpf)

      se (nome = "") e (cpf = "")  entao
         escreval("campos não podem estar vazio ou idade menor que 20 ou salario menor que 1000")
      senao
         para i de 1 ate qntAdmin faca
            se (login=admin[i].login) e (senha=admin[i].senha) entao
               medico[qntMedico].admin <- i
               medico[qntMedico].id <-qntMedico
               medico[qntMedico].nome <- nome
               medico[qntMedico].cpf <- cpf
               medico[qntMedico].login <- medico[qntMedico].cpf
               medico[qntMedico].senha <- ""
               escreval("medico cadastrado com sucesso")
               escreval("")
            fimse
         fimpara
      fimse
   fimse

FIMPROCEDIMENTO
//listagem de todos os medicos
PROCEDIMENTO listarMedico()
var
   i,j:inteiro
inicio
   para i de 1 ate qntMedico faca
      para j de 1 ate qntAdmin faca
         se medico[i].admin=admin[j].id entao
            escrevaL("Id:",medico[i].id)
            escrevaL("ADM:",admin[j].nome)
            escreval("Nome:",medico[i].nome)
            escreval("")
         fimse
      fimpara
   fimpara
FIMPROCEDIMENTO
PROCEDIMENTO pesquisarMedicoId()
var
   id,i:inteiro
inicio
   escreva("Digite o id do funcionario que deseja ver")
   leia(id)
   para i de 1 ate qntMedico faca
      se id = medico[i].id entao
         escrevaL("Id:",funcionario[i].id)
         escrevaL("ADM:",admin[i].nome)
         escrevaL("Nome:",medico[i].nome)
         escrevaL("CPF:",medico[i].cpf)
      fimse
   fimpara
FIMPROCEDIMENTO
//Listar pacientes do medico
PROCEDIMENTO meusPacientes()
var
   ij:inteiro

inicio
   para i de 1 ate qntMedico faca
      se (login = medico[i].login) e (senha=medico[i].senha) entao
         para j de 1 ate qntPaciente faca
            se medico[i].id = paciente[j].medico entao
               escreva("Id:",paciente[j].id," - ")
               escreva("Nome:",paciente[j].nome)
               escreval("")
            senao
               escreval("ainda não existe nenhum paciente para ser atendido")
            fimse
         fimpara
      fimse
   fimpara

FIMPROCEDIMENTO
//ver dados do medicos
PROCEDIMENTO meusDados()
var
inicio
   se (login=medico[i].login) e (senha=medico[i].senha) entao
      escreval("")
      escreval("Seu Id:",medico[i].id)
      escreval("Seu Nome:",medico[i].nome)
      escreval("Seu cpf:",medico[i].cpf)
      escreval("")
   fimse

FIMPROCEDIMENTO
//listar o paciente do medico por id
PROCEDIMENTO meuPacienteID()
var
   id,j,i:inteiro
inicio
   escreval("digite o id do paciente")
   leia(id)
   para i de 1 ate qntMedico faca
   se (login = medico[i].login) e ( senha = medico[i].senha) entao
      para j de 1 ate qntPaciente faca
         se medico[i].id = paciente[j].medico entao
            se id = paciente[j].id entao
               escreval("Id:",paciente[j].id)
               escreval("Nome:",paciente[j].nome)
               escreval("Seu cpf:",paciente[j].cpf)
               se paciente[j].status = "" entao
                  escreval("Status do paciente ainda não foi atualizado")
               senao
                  escreval("Status do paciente:",paciente[j].status)
               fimse
               escreval("Data da consulta:",paciente[j].dataConsulta)
            senao
               escreval("Falha ao listar paciente")
            fimse
         senao
            escreval("Falha ao conferir se existe um paciente para esse medico")
         fimse
      fimpara
   senao
      escreval("Falha")
   fimse
   fimpara
FIMPROCEDIMENTO
//cadastro de pacientes
PROCEDIMENTO cadPaciente()
var
   i,j,medico:inteiro
   cpf,dataconsulta,dia,mes,ano,barra,nome:caractere

inicio
   se qntPaciente+1>100 entao
      escreval("Passou da cota do sistema")
   senao
      escreval("REGISTRO DE PACIENTE")
      qntPaciente <- qntPaciente + 1

      escreval("Nome compreto:")
      leia(nome)
      escreval("CPF:")
      leia(cpf)
      escreval("Digite o dia que o paciente vai se consultar:")
      leia(dia)
      escreval("Digite o mes que o paciente vai se consultar:")
      leia(mes)
      escreval("Digite o ano que o paciente vai se consultar:")
      leia(ano)
      Escreval("Digite o id correspondente qual medico vai atender o paciente")
      para i de 1 ate qntMedico faca
         escreval(i," - ",medico[i].nome )
         leia(med)
         escreval(med)

         se (nome = "") e (cpf = "") e (dia = "")  e (mes = "") e (med = medico[i].id) entao
            escreval("campos não podem estar vazio ou medico não existe")
         senao
            barra<-"/"
            dataconsulta<-dia+barra+mes+barra+ano
            paciente[qntPaciente].id <-qntPaciente
            paciente[qntPaciente].nome <- nome
            paciente[qntPaciente].cpf <- cpf
            paciente[qntPaciente].medico <- med
            paciente[qntPaciente].diaAtendimento <- dia
            paciente[qntPaciente].mesAtendimento <- mes
            paciente[qntPaciente].anoAtendimento <- ano
            paciente[qntPaciente].dataConsulta <- dataconsulta

            escreval("paciente cadastrado com sucesso")
            escreval("")
            interrompa
         fimse
      fimpara
   fimse

FIMPROCEDIMENTO
//listar todos os pacientes
PROCEDIMENTO  listarPacientes()
var
   i,j,f: inteiro
inicio
   para i de 1 ate qntPaciente faca
      escreval("Id:",paciente[i].id)
      escreval("Nome:",paciente[i].nome)
   fimpara
FIMPROCEDIMENTO
//listar pacientes por id
PROCEDIMENTO listarPacienteId()
var
   id,i,j:inteiro
inicio
   escreva("Digite o id do paciente que deseja ver")
   leia(id)
   para i de 1 ate qntPaciente faca
      para j de 1 ate qntMedico faca
         se id = paciente[i].id entao
            escrevaL("Id:",paciente[i].id)
            escrevaL("medico:",medico[j].nome)
            escrevaL("Nome:",paciente[i].nome)
            escrevaL("CPF:",paciente[i].cpf)
            escreval("Data de consulta:",paciente[i].dataConsulta)
            interrompa
         fimse
      fimpara
   fimpara
FIMPROCEDIMENTO
Inicio


   //----------------------------------------------------------------------------
   repita
      escreval("----------------------------------------------------------------")
      escreval("AREA PRINCIPAL")
      escreval("BEM VINDO AO SISTEMA - Control Clinic")
      escreval("Esse sistema é voltado para recepcionistas e medicos")
      escreval("1 - ADMIN")
      escreval("2 - USUARIO")
      escreval("3 - LIMPAR TELA")
      escreval("4 - ENCERRAR")
      leia(op)
      escolha(op)
      caso "1"
         //----------------------------------------------------------------------------
         repita
            escreval("digite a permissao para entrar na area do admin")
            leia(permissao)
            escolha(permissao)
            caso "18082000"

               //----------------------------------------------------------------------------
               repita
                  escreval("---------------------------------------------------")

                  escreval("AREA DO ADMIN")
                  escrevaL("1 - LOGIN")
                  escreval("2 - PESQUISAR E REGISTRAR ADMIN")
                  escreval("3 - VOLTAR")
                  leia(item)
                  escolha(item)
                  caso "1"

                     escreval("AREA DE LOGIN")
                     escreva("Login:")
                     leia(login)
                     escreva("Senha:")
                     leia(senha)
                     para i de 1 ate qntAdmin faca
                        se ( admin[i].login = login) e (admin[i].senha = senha) entao
                           //----------------------------------------------------------------------------

                           repita
                              escreval("---------------------------------------------------")

                              escreval("VOCE ESTA LOGADO - BEM VINDO")
                              escreval(admin[i].id , " - ", admin[i].nome)
                              escreval("1 - CADASTRO DE FUNCIONARIO")
                              escreval("2 - VER FUNCIONARIOS")
                              escreval("3 - PESQUISAR FUNCIONARIOS POR ID")
                              escreval("4 - CADASTRO DE MEDICO")
                              escreval("5 - VER MEDICOS")
                              escreval("6 - PESQUSIAR MEDICOS POR ID")
                              escreval("7 - LIMPAR TELA")
                              escreval("8 - ENCERRAR SESSÃO")
                              leia(opcao)
                              escolha(opcao)
                              caso "1"
                                 cadFuncionarios()
                              caso "2"
                                 listarFuncionarios()
                              caso "3"
                                 pesquisarFuncionarioId()
                              caso "4"
                                 cadMedico()
                              caso "5"
                                 listarMedico()
                              caso "6"
                                 pesquisarMedicoId()
                              caso "7"
                                 limpatela
                              caso "8"


                              fimescolha
                           ate opcao="8

                           //----------------------------------------------------------------------------
                        senao
                           escreval("Login ou Senha incorreta")
                           interrompa
                        fimse

                     fimpara


                  caso "2"
                     escreval("Digite a permissão")
                     leia(permissao)
                     se permissao="18082000" entao
                        repita
                           escreval("---------------------------------------------------")
                           escreval("1 - LISTAR TODOS OS ADMIN")
                           escreval("2 - LISTAR ADMIN POR ID")
                           escreval("3 - REGISTRO DE ADMIN")
                           escreval("4 - VOLTAR")
                           leia(opcao)
                           escolha(opcao)
                           caso "1"
                              listarAdmins()
                           caso "2"
                              listarAdminId()
                           caso "3"
                              registroAdmin()
                           fimescolha
                        ate opcao="4"
                     senao
                        escreval("Permissao negada")
                     fimse

                  fimescolha
               ate item="3"
               //----------------------------------------------------------------------------
            outrocaso
               escreval("voce não tem permissao")
            fimescolha
         ate nao permissao="18082000"
         //----------------------------------------------------------------------------

      caso "2"
         REPITA
            escreval("---------------------------------------------------")
            escreval("USUARIOS")
            escreval("1 - MEDICO")
            escreval("2 - FUNCIONARIO")
            escreval("3 - VOLTAR")
            leia(item)
            escolha(item)
            caso "1"
               escreval("medico")
               escreva("Login:")
               leia(login)
               escreva("Senha:")
               leia(senha)
               para i de 1 ate qntMedico faca
                  se (login=medico[i].login) e (senha = medico[i].senha) entao
                     se (senha = "") entao
                        escreval("Este é o seu primeiro acesso")
                        escreval("Digite uma senha e posteriormente logue novamente")
                        escreva("Senha:")
                        leia(senha)
                        se senha = "" entao
                           escreval("tente novamente")
                        senao
                           medico[i].senha <- senha
                        fimse
                     senao
                        repita
                           escreval("----------------------------------------------------------------")
                           escreval("VOCE ESTA LOGADO MEDICO")
                           escreval("BEM VINDO")
                           escreval("1 - MEUS DADOS")
                           escreval("2 - MEUS PACIENTES")
                           escreval("3 - PESQUISAR MEU PACIENTE POR ID")
                           escreval("4 - ATUALIZAR STATUS DO PACIENTE")
                           escreval("5 - ENCERRAR SESSAO")
                           leia(opcao)
                           escolha(opcao)
                           caso "1"
                              meusDados()
                           caso "2"
                              meusPacientes()
                           caso "3"
                              meuPacienteID()
                           caso "4"
                              Escreval("digite o id do paciente para alterar status")
                              leia(id)

                              para j de 1 ate qntPaciente faca
                                 se (id = paciente[j].id) e (paciente[j].medico = medico[i].id)entao
                                    escreval("digite a atualização do status do paciente")
                                    leia(status)
                                    se status = ""  entao
                                       escreval("Falha ao atualizar status do paciente")
                                    senao
                                       paciente[j].status <- status
                                       escreval("Status de paciente atualizado com sucesso")

                                    fimse
                                 senao
                                    escreval("Voce ainda não tem pacientes cadastrados para ser atendido")
                                    interrompa
                                 fimse
                              fimpara
                           caso "5"
                              senha<-""

                           fimescolha
                        ate opcao="5"
                     fimse
                  fimse
               fimpara
            caso "2"
               escreval("funcionario")
               escreva("Login:")
               leia(login)
               escreva("Senha:")
               leia(senha)
               para k de 1 ate qntFuncionario faca
                  se ( login=funcionario[k].login) e (senha=funcionario[k].senha) entao
                     se (funcionario[k].senha = "") entao
                        escreval("Este é o seu primeiro acesso")
                        escreval("Digite uma senha e posteriormente logue novamente")
                        escreva("Senha:")
                        leia(senha)
                        se senha = "" entao
                           escreval("tente novamente")
                        senao
                           funcionario[k].senha <- senha
                        fimse
                     senao
                        repita
                           escreval("----------------------------------------------------------------")
                           escreval("VOCE ESTA LOGADO FUNCIONARIO")
                           escreval("BEM VINDO")
                           escreval("1 - VER MEUS DADOS")
                           escreval("2 - AREA DOS PACIENTES")
                           escreval("3 - ENCERRAR SESSÃO")
                           leia(opcao)
                           escolha(opcao)
                           caso "1"
                              escreval("")
                              escreval("Seu Id:",funcionario[k].id)
                              escreval("Seu Nome:",funcionario[k].nome)
                              escreval("Seu cpf:",funcionario[k].cpf)
                              escreval("")
                           caso "2"
                              repita
                                 escreval("----------------------------------------------------------------")
                                 escreval("1 - CADASTRO DE PACIENTE")
                                 escreval("2 - VER PACIENTES")
                                 escreval("3 - PESQUISAR PACIENTE POR ID")
                                 escreval("4 - VOLTAR")
                                 leia(alternativa)
                                 escolha(alternativa)
                                 caso "1"
                                    cadPaciente()
                                 caso "2"
                                    listarPacientes()
                                 caso "3"
                                    listarPacienteId()
                                 fimescolha
                              ate alternativa = "4"
                           fimescolha
                        ate opcao="3"
                     fimse
                  fimse
               fimpara
            fimescolha
         ate item="3"
      caso "3"
         limpatela
      fimescolha
   ate op="4"
   //----------------------------------------------------------------------------

Fimalgoritmo
