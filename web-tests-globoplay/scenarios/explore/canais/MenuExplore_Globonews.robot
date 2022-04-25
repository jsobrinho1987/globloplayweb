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
# Localizar o título "Escolha seu plano" ao clicar no botão "Eu quero" no "Assista ao vivo" da Globonews
# Acessar a Globonews através de "Canais" com um usuário anônimo e localizar o texto "Escolha seu plano"
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Canais"
#   E selecionar "Globonews" no "Assista ao vivo"
#   E selecionar "Eu quero"
#   Então o título "Escolha seu plano" deve estar visível

# # Localizar o banner do "Globonews" através de "Canais"
#  Acessar a Globonews através de "Canais" com um usuário anônimo e localizar o banner
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Canais"
#   E selecionar "Globonews" em "Canais"
#   Então o banner deste canal deve estar visível

# # Localizar o título "Escolha seu plano" ao clicar no botão "Conheça o novo plano" - "Eu quero" em "Canais" da Globonews
# Acessar a Globonews no "Agora na TV" através de "Canais" com um usuário anônimo e localizar o texto "Escolha seu plano"
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Canais"
#   E selecionar "Globonews" em "Canais"
#   E selecionar "Assista" no banner
#   E selecionar "Conheça o novo plano"
#   E selecionar "Eu quero"
#   Então o título "Escolha seu plano" deve estar visível

# # Acessar o "Veja Mais" da Globonews
# Acessar a Globonews através de "Canais" com um usuário anônimo e localizar "Veja mais"
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Canais"
#   E selecionar "Globonews" em "Canais"
#   Então devo conseguir localizar o botão "Veja mais"


Acessar Globonews pelo menu de Canais com um usuário anônimo e localizar o banner
# [Tags]      Canal Globo    Banner
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Globo"
  Então o banner deve estar visível


Localizar o botão "Assista" no menu Globo opção Globonews com um usuário anônimo
# [Tags]      Canal Globonews    Botão "Assista"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Globonews"
  Então devo conseguir ver o botão "Assista"


Localizar o botão "Ver Programação" no menu Globo na opção Globonews com um usuário anônimo
# [Tags]      Canal Globonews    Botão "Assista"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Globonews"
  Então devo conseguir ver o botão "Ver Programação"


Validar exibição dos títulos de "Todas os titulos" com um usuário anônimo
# [Tags]      Canal Globonews    Botão "Todas os titulos""  
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Globonews"
  Então devo conseguir localizar todos os títulos do trilho "Todos os titulos"


Validar exibição do titulo "GloboNews Miriam Leitão" com usuário anônimo
# [Tags]      Canal Globonews    Botão "Todas os titulos""  
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Globonews"
  Então deve apresentar os titulos de "Globonews"
  Quando seleciona opção "GloboNews Miriam Leitão"
  E apresenta os episódios disponiveis
  Quando seleciona aba de "Detalhes"
  E apresenta os detalhes da serie do GloboNews


Validar opções de botão do titulo "GloboNews Miriam Leitão" com usuário anônimo
# [Tags]      Canal Globonews    Botão "Todas os titulos""  
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Globonews"
  Então deve apresentar os titulos de "Globonews"
  Quando seleciona opção "GloboNews Miriam Leitão"
  E apresenta os episódios disponiveis
  Quando seleciona aba de "Detalhes"
  E apresenta os detalhes da serie do GloboNews