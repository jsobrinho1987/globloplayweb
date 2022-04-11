*** Settings ***
Documentation   Acesso tela de Explore e valida opção Podcasts Tecnologia

# Default Tags    Ajuda  Minha Conta

# IMPORT DE VARIÁVEIS DE OUTROS ARQUIVOS
Resource            ${EXECDIR}/web-tests-globoplay/environment.robot

# O QUE FAZER ANTES DA EXECUÇÃO DOS TESTES
Suite Setup         Before Suite

# O QUE FAZER ANTES DE CADA UM DOS TESTES - ABRIR NAVEGADOR
Test Setup          Before Scenario

# O QUE FAZER APÓS CADA UM DOS TESTES - FECHAR NAVEGADOR
Test Teardown       After Scenario

*** Test Cases ***
# Acessar explore Podcasts com usuário anônimo
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts

# ACESSO CENÁRIOS PODCASTS TECNOLOGIA

# Acessar podcasts acessando opção com Tecnologia
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Tecnologia"
#     E apresenta opções disponiveis do Tecnologia
#
# Acessar podcasts Original Globoplay acessando opção Braincast
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Tecnologia"
#     E apresenta opções disponiveis do Tecnologia
#     Quando seleciona opção "Braincast"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Original Globoplay acessando opção HUB GloboNews
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Tecnologia"
#     E apresenta opções disponiveis do Tecnologia
#     Quando seleciona opção "HUB GloboNews"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Original Globoplay acessando opção GloboNews - Em Movimento
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Tecnologia"
#     E apresenta opções disponiveis do Tecnologia
#     Quando seleciona opção "GloboNews - Em Movimento"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts