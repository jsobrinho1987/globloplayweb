*** Settings ***

Documentation   Validação dos elementos de Música

# IMPORT DE VARIÁVEIS DE OUTROS ARQUIVOS
Resource            ${EXECDIR}/web-tests-globoplay/environment.robot

# O QUE FAZER ANTES DA EXECUÇÃO DOS TESTES
Suite Setup         Before Suite

# O QUE FAZER ANTES DE CADA UM DOS TESTES - ABRIR NAVEGADOR
Test Setup          Before Scenario

# O QUE FAZER APÓS CADA UM DOS TESTES - FECHAR NAVEGADOR
Test Teardown       After Scenario

*** Test Case ***
# # Localizar o título de "Música"
# Acessar Música pelo menu Explore com um usuário anônimo e localizar o título "Música"
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Música"
#   Então o título "Música" deve estar visível

# # Localizar o botão "Conheça o plano" ao clicar na série "Prêmio Multishow" apresentada em "Música"
# Localizar o botão "Conheça o plano" ao acessar a série "Prêmio Multishow" através do menu Explore com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Música"
#   E selecionar "Prêmio Multishow"
#   Então devo conseguir ver o botão "Conheça o plano"

# # Localizar "Veja mais"
# Acessar Música pelo menu Explore com um usuário anônimo e localizar "Veja mais"
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Música"
#   Então devo conseguir localizar o botão "Veja mais"

# # Localizar o texto "Conteúdo exclusivo gratuito para contas cadastradas" ao clicar em "Assista" o Roberto Carlos Especial
# Localizar a solicitação de login/cadastramento ao acessar o "Roberto Carlos Especial" através do menu Explore com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Música"
#   E selecionar "Roberto Carlos Especial"
#   E selecionar "Assista"
#   Então devo conseguir ver o texto "Conteúdo exclusivo gratuito para contas cadastradas"

# Validação dos títulos apresentados ao acessar Música com um usuário anônimo
Validar exibição dos títulos de Música apresentados com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Música"
  Então devo conseguir localizar os 24 títulos