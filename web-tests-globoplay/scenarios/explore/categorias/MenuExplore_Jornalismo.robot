*** Settings ***
Documentation   Acesso tela de Explore e valida opção Podcasts

# Default Tags    Ajuda  Minha Conta

# IMPORT DE VARIÁVEIS DE OUTROS ARQUIVOS
Resource            ${EXECDIR}/web-tests-globoplay/environment.robot

# O QUE FAZER ANTES DA EXECUÇÃO DOS TESTES
Suite Setup         Before Suite

# O QUE FAZER ANTES DE CADA UM DOS TESTES - ABRIR NAVEGADOR
Test Setup          Before Scenario

# O QUE FAZER APÓS CADA UM DOS TESTES - FECHAR NAVEGADOR
Test Teardown       After Scenario

*** Test Case ***
# Localizar o título de "Jornalismo"
Acessar Jornalismo pelo menu Explore com um usuário anônimo e localizar o título "Jornalismo"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Jornalismo"
  Então o título "Jornalismo" deve estar visível

# Localizar o botão "Conheça o plano" ao clicar no talk show "Em Foco com Andréia Sadi" em "Jornalismo"
Localizar o botão "Conheça o plano" ao acessar o talk show "Em Foco com Andréia Sadi" através do menu Explore com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Jornalismo"
  E selecionar "Jornal das Dez"
  Então devo conseguir ver o botão "Conheça o plano"

# Localizar "Veja mais"
Acessar Jornalismo pelo menu Explore com um usuário anônimo e localizar "Veja mais"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Jornalismo"
  Então devo conseguir localizar o botão "Veja mais"

# Localizar o texto "Conteúdo exclusivo gratuito para contas cadastradas" ao clicar em "Assista" o Roberto Carlos Especial
Localizar a solicitação de login/cadastramento ao acessar o "Jornal Nacional" através do menu Explore com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Jornalismo"
  E selecionar "Jornal Nacional"
  E selecionar "Assista"
  Então devo conseguir ver o texto "Conteúdo exclusivo gratuito para contas cadastradas"
