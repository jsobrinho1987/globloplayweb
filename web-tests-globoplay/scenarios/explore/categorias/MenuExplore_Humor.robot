*** Settings ***

Documentation  Validação dos elementos de Humor

# IMPORT DE VARIÁVEIS DE OUTROS ARQUIVOS
Resource            ${EXECDIR}/web-tests-globoplay/environment.robot

# O QUE FAZER ANTES DA EXECUÇÃO DOS TESTES
Suite Setup         Before Suite

# O QUE FAZER ANTES DE CADA UM DOS TESTES - ABRIR NAVEGADOR
Test Setup          Before Scenario

# O QUE FAZER APÓS CADA UM DOS TESTES - FECHAR NAVEGADOR
Test Teardown       After Scenario

*** Test Case ***
# # Localizar o título de "Humor"
# Acessar Humor pelo menu Explore com um usuário anônimo e localizar o título "Humor"
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Humor"
#   Então o título "Humor" deve estar visível

# # Localizar o botão "Conheça o plano" ao clicar na série "Multi Tom" apresentada em "Humor"
# Localizar o botão "Conheça o plano" ao acessar a série "Multi Tom" através do menu Explore com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Humor"
#   E selecionar "Multi Tom"
#   Então devo conseguir ver o botão "Conheça o plano"

# # Localizar "Veja mais"
# Acessar Humor pelo menu Explore com um usuário anônimo e localizar "Veja mais"
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Humor"
#   Então devo conseguir localizar o botão "Veja mais"

# # Localizar o texto "Conteúdo exclusivo gratuito para contas cadastradas" ao clicar em "Assista" o Choque de Cultura Show
# Localizar a solicitação de login/cadastramento ao acessar o "Choque de Cultura Show" através do menu Explore com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Humor"
#   E selecionar "Choque de Cultura Show"
#   E selecionar "Assista"
#   Então devo conseguir ver o texto "Conteúdo exclusivo gratuito para contas cadastradas"

# Validação dos títulos apresentados ao acessar Humor com um usuário anônimo
Validar exibição dos títulos de Humor apresentados com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Humor"
  Então devo conseguir localizar os 24 títulos
