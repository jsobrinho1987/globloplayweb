*** Settings ***
Documentation   Acesso tela de Explore e valida opção Podcasts Ficção e Histórias

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

# ACESSO CENÁRIOS PODCASTS FICÇÃO E HOSTÓRIA

# Acessar podcasts acessando opção com Ficção e Histórias
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Ficção e Histórias"
#     E apresenta opções disponiveis do Ficção e Histórias
#
# Acessar podcasts Ficção e Histórias acessando opção Pistoleiros
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Ficção e Histórias"
#     E apresenta opções disponiveis do Ficção e Histórias
#     Quando seleciona opção "Pistoleiros"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Ficção e Histórias acessando opção Modus Operandi
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Ficção e Histórias"
#     E apresenta opções disponiveis do Ficção e Histórias
#     Quando seleciona opção "Modus Operandi"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Ficção e Histórias acessando opção Abuso
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Ficção e Histórias"
#     E apresenta opções disponiveis do Ficção e Histórias
#     Quando seleciona opção "Abuso"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Ficção e Histórias acessando opção A República das Milícias
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Ficção e Histórias"
#     E apresenta opções disponiveis do Ficção e Histórias
#     Quando seleciona opção "A República das Milícias"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Ficção e Histórias acessando opção Geopizza
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Ficção e Histórias"
#     E apresenta opções disponiveis do Ficção e Histórias
#     Quando seleciona opção "Geopizza"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Ficção e Histórias acessando opção Isso Está Acontecendo
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Ficção e Histórias"
#     E apresenta opções disponiveis do Ficção e Histórias
#     Quando seleciona opção "Isso Está Acontecendo"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Ficção e Histórias acessando opção À Mão Armada
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Ficção e Histórias"
#     E apresenta opções disponiveis do Ficção e Histórias
#     Quando seleciona opção "À Mão Armada"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Ficção e Histórias acessando opção Eu Te Explico
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Ficção e Histórias"
#     E apresenta opções disponiveis do Ficção e Histórias
#     Quando seleciona opção "Eu Te Explico"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Ficção e Histórias acessando opção Que História É Essa, Porchat?
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Ficção e Histórias"
#     E apresenta opções disponiveis do Ficção e Histórias
#     Quando seleciona opção "Que História É Essa, Porchat?"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Ficção e Histórias acessando opção Gilmar Baltazar, Detetive Particular
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Ficção e Histórias"
#     E apresenta opções disponiveis do Ficção e Histórias
#     Quando seleciona opção "Gilmar Baltazar, Detetive Particular"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts