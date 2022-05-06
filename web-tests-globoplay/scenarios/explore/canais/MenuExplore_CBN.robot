*** Settings ***

Documentation   Validação dos elementos de CBN

# Default Tags    Ajuda  Minha Conta

# IMPORT DE VARIÁVEIS DE OUTROS ARQUIVOS
Resource            ${EXECDIR}/../../../environment.robot

# O QUE FAZER ANTES DA EXECUÇÃO DOS TESTES
Suite Setup         Before Suite

# O QUE FAZER ANTES DE CADA UM DOS TESTES - ABRIR NAVEGADOR
Test Setup          Before Scenario

# O QUE FAZER APÓS CADA UM DOS TESTES - FECHAR NAVEGADOR
Test Teardown       After Scenario

*** Test Case ***
Solicitar o login ao acessar a CBN SP no "Agora na TV" com um usuário anônimo através do "Assista ao vivo"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "CBN SP" no "Assista ao vivo"
  E selecionar "Assista agora" em "Agora na Tv"
  Então devo ver a solicitação de login com a Conta Globo

Solicitar o login ao acessar a CBN RJ no "Agora na TV" com um usuário anônimo através do "Assista ao vivo"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "CBN RJ" no "Assista ao vivo"
  E selecionar "Assista agora" em "Agora na Tv"
  Então devo ver a solicitação de login com a Conta Globo
