*** Settings ***

Documentation  Validação dos elementos de Originais

# IMPORT DE VARIÁVEIS DE OUTROS ARQUIVOS
Resource            ${EXECDIR}/../../../environment.robot

# O QUE FAZER ANTES DA EXECUÇÃO DOS TESTES
Suite Setup         Before Suite

# O QUE FAZER ANTES DE CADA UM DOS TESTES - ABRIR NAVEGADOR
Test Setup          Before Scenario

# O QUE FAZER APÓS CADA UM DOS TESTES - FECHAR NAVEGADOR
# Test Teardown       After Scenario

*** Test Case ***
# # Localizar o banner de "Originais"
# Acessar Originais pelo menu Explore com um usuário anônimo e localizar o banner
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Originais"
#   Então o banner deve estar visível

# # Localizar o botão "Assine já" ao clicar em "Veja Mais" da série recomendada no banner
# Localizar o botão "Assine já" ao acessar o "Veja Mais" da série recomendada através do menu Explore com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Originais"
#   E selecionar "Veja Mais"
#   Então devo conseguir ver o botão "Assine já"

#------------------------ Novos cenários | Títulos


#------------------------ Novos cenários | Trilhos

# # Validação dos Trilhos de Originais
# Validar exibição do trilho "Séries" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Originais"
#   Então devo conseguir localizar o trilho "Séries"
#   E realiza a validação do grid do trilho "Séries"
#   E selecionar "Veja Mais"

# Validar exibição do trilho "Documentários" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Originais"
#   Então devo conseguir localizar o trilho "Documentários"
#   E realiza a validação do grid do trilho "Documentários"
#   E selecionar "Veja Mais"

# Validar exibição do trilho "Novela" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Originais"
#   Então devo conseguir localizar o trilho "Novela"

# Validar exibição do trilho "Podcasts" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Originais"
#   Então devo conseguir localizar o trilho "Podcasts"

# Validar exibição do trilho "Música" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Originais"
#   Então devo conseguir localizar o trilho "Música"
#   E realiza a validação do grid do trilho "Música"
#   E selecionar "Veja Mais"

# Validar exibição do trilho "Infantil" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Originais"
#   Então devo conseguir localizar o trilho "Infantil"
#   E selecionar "Veja Mais"

# Validar exibição do trilho "Talk Show" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Originais"
#   Então devo conseguir localizar o trilho "Talk Show"