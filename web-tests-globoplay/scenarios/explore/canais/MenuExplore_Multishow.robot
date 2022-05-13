*** Settings ***

Documentation   Validação dos elementos de Multishow

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
# Localizar o título "Escolha seu plano" ao clicar no botão "Eu quero" no "Assista ao vivo" do Multishow
# Acessar o Multishow através de "Canais" com um usuário anônimo e localizar o texto "Escolha seu plano"
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Canais"
#   E selecionar "Multishow" no "Assista ao vivo"
#   E selecionar "Eu quero"
#   Então o título "Escolha seu plano" deve estar visível

# # Localizar o banner do "Multishow" através de "Canais"
#  Acessar o Multishow através de "Canais" com um usuário anônimo e localizar o banner
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Canais"
#   E selecionar "Multishow" em "Canais"
#   Então o banner deste canal deve estar visível

# # Localizar o título "Escolha seu plano" ao clicar nSo botão "Conheça o novo plano" - "Eu quero" em "Canais" do Multishow
# Acessar o Multishow no "Agora na TV" através de "Canais" com um usuário anônimo e localizar o texto "Escolha seu plano"
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Canais"
#   E selecionar "Multishow" em "Canais"
#   E selecionar "Assista" no banner
#   E selecionar "Conheça o novo plano"
#   E selecionar "Eu quero"
#   Então o título "Escolha seu plano" deve estar visível

# # Acessar o "Ver todos" do Multishow
# Acessar o Multishow através de "Canais" com um usuário anônimo e selecionar "Ver todos"
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Canais"
#   E selecionar "Multishow" em "Canais"
#   E selecionar "Veja Mais" em Ver Todos
#   Então devo conseguir ver o texto "Todos os títulos - Multishow"


Acessar as Novelas pelo menu Explore com um usuário anônimo e localizar o banner
# [Tags]      Canal Multishow    Banner
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Multishow"
  Então o banner deve estar visível


Localizar o botão "Assine já" ao acessar o "Veja Mais" da novela recomendada através do menu Explore com um usuário anônimo
# [Tags]      Canal Multishow    Botão "Assine já"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Multishow"
  Então devo conseguir ver no banner o botão "Assista"


Validar exibição dos títulos do trilho "Todas os titulos" com um usuário anônimo
# [Tags]      Canal Multishow    "Todas os titulos" 
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Multishow"
  Então devo conseguir localizar todos os títulos do trilho "Todos os titulos"

# Validação dos Trilhos de Novelas
Validar exibição do trilho "Shows do Lollapalooza 2022" com um usuário anônimo
# [Tags]      Canal Multishow    Shows do Lollapalooza 2022  
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Multishow"
  Então devo conseguir localizar o trilho "Shows do Lollapalooza 2022"
  E realiza a validação do grid do trilho "Shows do Lollapalooza 2022"


Validar exibição do trilho "Entre na folia com o Multishow!" com um usuário anônimo
# [Tags]      Canal Multishow    Shows do Lollapalooza 2022  
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Multishow"
  Então devo conseguir localizar o trilho "Entre na folia com o Multishow!"
  E realiza a validação do grid do trilho "Entre na folia com o Multishow!"


Validar exibição do trilho "Shows do Lollapalooza 2022" com um usuário anônimo
# [Tags]      Canal Multishow    Shows do Lollapalooza 2022  
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Multishow"
  Então devo conseguir localizar o trilho "Shows do Lollapalooza 2022"
  E realiza a validação do grid do trilho "Shows do Lollapalooza 2022"


Validar exibição do trilho "BBB - A Eliminação" com um usuário anônimo
# [Tags]      Canal Multishow    BBB - A Eliminação 
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Multishow"
  Então devo conseguir localizar o trilho "BBB - A Eliminação"
  E realiza a validação do grid do trilho "BBB - A Eliminação"


Validar exibição do trilho "Humor" com um usuário anônimo
# [Tags]      Canal Multishow    Humor  
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Multishow"
  Então devo conseguir localizar o trilho "Humor"
  E realiza a validação do grid do trilho "Humor"


Validar exibição do trilho "Música" com um usuário anônimo
# [Tags]      Canal Multishow    Música  
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Multishow"
  Então devo conseguir localizar o trilho "Música"
  E realiza a validação do grid do trilho "Música"


Validar exibição do trilho "Novidades" com um usuário anônimo
# [Tags]      Canal Multishow    Novidades  
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Multishow"
  Então devo conseguir localizar o trilho "Novidades"
  E realiza a validação do grid do trilho "Novidades"


Validar exibição do trilho "Entrevistas e Talk Shows" com um usuário anônimo
# [Tags]      Canal Multishow    Humor  
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Multishow"
  Então devo conseguir localizar o trilho "Entrevistas e Talk Shows"
  E realiza a validação do grid do trilho "Entrevistas e Talk Shows"


Validar exibição do trilho "Reality Show" com um usuário anônimo
# [Tags]      Canal Multishow    Reality Show  
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Multishow"
  Então devo conseguir localizar o trilho "Reality Show"
  E realiza a validação do grid do trilho "Reality Show"


Validar exibição do trilho "Viagem" com um usuário anônimo
# [Tags]      Canal Multishow    Viagem 
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Multishow"
  Então devo conseguir localizar o trilho "Viagem"
  E realiza a validação do grid do trilho "Viagem"


Validar exibição do trilho "Ver todos" com um usuário anônimo
# [Tags]      Canal Multishow    Ver todos 
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Multishow"
  Então devo conseguir localizar o trilho "Ver todos"
  E realiza a validação do grid do trilho "Ver todos"


