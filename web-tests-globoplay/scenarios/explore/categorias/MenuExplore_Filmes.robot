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
# Localizar o banner de "Filmes"
Acessar os Filmes pelo menu Explore com um usuário anônimo e localizar o banner
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então o banner deve estar visível

# Localizar o botão "Assine já" ao clicar em "Veja Mais" do filme recomendado no banner
Localizar o botão "Assine já" ao acessar o "Veja Mais" do filme recomendado através do menu Explore com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  E selecionar "Veja Mais"
  Então devo conseguir ver o botão "Conheça o plano"

# Localizar "Todos os filmes"
Acessar os Filmes pelo menu Explore com um usuário anônimo e localizar "Todos os filmes"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar "Todos os filmes"
