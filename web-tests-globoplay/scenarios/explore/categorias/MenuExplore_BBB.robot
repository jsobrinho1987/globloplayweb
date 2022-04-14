*** Settings ***

Documentation  Validação dos elementos de BBB

# IMPORT DE VARIÁVEIS DE OUTROS ARQUIVOS
Resource            ${EXECDIR}/web-tests-globoplay/environment.robot

# O QUE FAZER ANTES DA EXECUÇÃO DOS TESTES
Suite Setup         Before Suite

# O QUE FAZER ANTES DE CADA UM DOS TESTES - ABRIR NAVEGADOR
Test Setup          Before Scenario

# O QUE FAZER APÓS CADA UM DOS TESTES - FECHAR NAVEGADOR
Test Teardown       After Scenario

*** Test Case ***
# # Localizar o banner de "BBB"
# Acessar BBB pelo menu Explore com um usuário anônimo e localizar o banner
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "BBB"
#   Então o banner deve estar visível

# # Localizar o texto "Exclusivo para assinantes do produto Globoplay" ao clicar em "Assista" no banner
# Localizar o texto "Exclusivo para assinantes do produto Globoplay" ao clicar em "Assista" no banner através do menu Explore com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "BBB"
#   E selecionar "Assista" no banner
#   Então devo conseguir ver o texto "Conteúdo exclusivo gratuito para contas cadastradas"

# # Validação dos Trilhos de BBB
# Validar exibição do trilho "Ao Vivo no BBB 22" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "BBB"
#   Então devo conseguir localizar o trilho "Ao Vivo no BBB 22"

# Validar exibição do trilho "Últimas do BBB 22" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "BBB"
#   Então devo conseguir localizar o trilho "Últimas do BBB 22"

# Validar exibição do trilho "Os Melhores Momentos da Festa" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "BBB"
#   Então devo conseguir localizar o trilho "Os Melhores Momentos da Festa"

# Validar exibição do trilho "Big Terapia" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "BBB"
#   Então devo conseguir localizar o trilho "Big Terapia"

# Validar exibição do trilho "Click BBB 22" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "BBB"
#   Então devo conseguir localizar o trilho "Click BBB 22"

# Validar exibição do trilho "Participantes Pipoca" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "BBB"
#   Então devo conseguir localizar o trilho "Participantes Pipoca"

# Validar exibição do trilho "Participantes Camarote" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "BBB"
#   Então devo conseguir localizar o trilho "Participantes Camarote"

# Validar exibição do trilho "Programas na íntegra" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "BBB"
#   Então devo conseguir localizar o trilho "Programas na íntegra"

# Validar exibição do trilho "Programas BBB" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "BBB"
#   Então devo conseguir localizar o trilho "Programas BBB"

# Validar exibição do trilho "Títulos mencionados pelos brothers e sisters" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "BBB"
#   Então devo conseguir localizar o trilho "Títulos mencionados pelos brothers e sisters"

# Validar exibição do trilho "Podcasts sobre o BBB 22" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "BBB"
#   Então devo conseguir localizar o trilho "Podcasts sobre o BBB 22"

# Validar exibição do trilho "O melhor do BBB" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "BBB"
#   Então devo conseguir localizar o trilho "O melhor do BBB"