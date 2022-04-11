*** Settings ***
Documentation   Acesso tela de Explore e valida opção Podcasts Esporte

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

# ACESSO CENÁRIOS PODCASTS ESPORTES

# Acessar podcasts acessando opção com Esportes
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Original Globoplay
#
# Acessar podcasts Esportes acessando opção Prancheta
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "Prancheta"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção Resumão GE
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "Resumão GE"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção Prancheta
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "Prancheta"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção Café&Bola
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "Café&Bola"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção GE Chapecoense
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "GE Chapecoense"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção GE Juventude
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "GE Juventude"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção Legal!
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "Legal!"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção GE Bragantino
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "GE Bragantino"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção GE Cuiabá
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "GE Cuiabá"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção GE América-MG
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "GE América-MG"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção Match Point Beach Tennis
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "Match Point Beach Tennis"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção Maré Feminina
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "ATR no GE"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção GE Flamengo
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "GE Flamengo"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção Hoje Sim
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "Hoje Sim"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção Na Ponta dos Dedos
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "Na Ponta dos Dedos"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção Fala, Fera! - Eric Faria
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "Fala, Fera! - Eric Faria"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção Gringolândia
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "Gringolândia"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção Dinheiro em Jogo
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "Dinheiro em Jogo"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção Early Game
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "Early Game"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção GE Vasco
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "GE Vasco"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção GE São Paulo
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "GE São Paulo"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção GE Santos
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "GE Santos"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção GE Santos
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "GE Santos"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção GE Palmeiras
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "GE Palmeiras"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção GE Internacional
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "GE Internacional"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção GE Grêmio
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "GE Grêmio"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção GE Fluminense
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "GE Fluminense"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção GE Cruzeiro
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "GE Cruzeiro"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção GE Coritiba
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "GE São Paulo"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção GE Corinthians
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "GE Corinthians"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção GE Botafogo
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "GE Botafogo"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção GE Atlético-MG
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "GE Atlético-MG"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção GE Athletico
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "GE Athletico"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção Mundo da Luta
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "Mundo da Luta"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção CartolaCast
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "CartolaCast"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção Embolada
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "Embolada"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção Clássico Mineiro
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "Clássico Mineiro"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção A Mesa
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "A Mesa"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção Segue o BAba
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "Segue o BAba"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção Na Escuta
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "Na Escuta"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção Rodada Tripla
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "Rodada Tripla"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção Casão Troca Ideia
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "Casão Troca Ideia"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção Ubuntu Esporte Clube
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "Ubuntu Esporte Clube"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção GE Corinthians
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "GE Corinthians"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção Sexta Estrela
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "Sexta Estrela"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção La Pelota
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "La Pelota"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção A Dona do Campinho
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "A Dona do Campinho"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção Vocês da Imprensa
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "Vocês da Imprensa"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção 2 Pontos NBA
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "2 Pontos NBA"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção A Dona do Campinho
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "A Dona do Campinho"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção Ponte Aérea
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "Ponte Aérea"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção Primeira Descida
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "Primeira Descida"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção Na Rede com Nalbert
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "Na Rede com Nalbert"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção Rumo ao Pódio
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "Rumo ao Pódio"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção Toca e Sai
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "Toca e Sai"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção Match Point
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "Match Point"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção Correria
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "Correria"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção Na Rede com Nalbert
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "Na Rede com Nalbert"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção Grande Círculo
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "Grande Círculo"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção Conexão
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "Conexão"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção Jogo em Casa
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "Jogo em Casa"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção Futebol Arte
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "Futebol Arte"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Esportes acessando opção Goleada
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Esportes"
#     E apresenta opções disponiveis do Esportes
#     Quando seleciona opção "Goleada"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
