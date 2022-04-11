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

*** Test Cases ***
Acessar explore Podcasts com usuário anônimo
    Dado que sou um usuário anônimo
    E que estou na home
    Quando seleciona o menu Explore
    E direciona para a página do Explore
    Quando seleciona a aba "Podcasts"
    E apresenta as opções disponiveis do podcasts

# ACESSO CENÁRIOS PODCASTS ORIGINAL GLOBOPLAY

Acessar podcasts acessando opção com Original Globoplay
    Dado que sou um usuário anônimo
    E que estou na home
    Quando seleciona o menu Explore
    E direciona para a página do Explore
    Quando seleciona a aba "Podcasts"
    E apresenta as opções disponiveis do podcasts
    Quando seleciona opção "Original Globoplay"
    E apresenta opções disponiveis do Original Globoplay

Acessar podcasts Original Globoplay acessando opção À Mão Armada
    Dado que sou um usuário anônimo
    E que estou na home
    Quando seleciona o menu Explore
    E direciona para a página do Explore
    Quando seleciona a aba "Podcasts"
    E apresenta as opções disponiveis do podcasts
    Quando seleciona opção "Original Globoplay"
    E apresenta opções disponiveis do Original Globoplay
    Quando seleciona opção "À Mão Armada"
    E apresenta opções disponiveis de episódios
    Quando seleciona aba de "Detalhes"
    E apresenta os detalhes da serie do podcasts

Acessar podcasts Original Globoplay acessando opção Papo de Parente
    Dado que sou um usuário anônimo
    E que estou na home
    Quando seleciona o menu Explore
    E direciona para a página do Explore
    Quando seleciona a aba "Podcasts"
    E apresenta as opções disponiveis do podcasts
    Quando seleciona opção "Original Globoplay"
    E apresenta opções disponiveis do Original Globoplay
    Quando seleciona opção "Papo de Parente"
    E apresenta opções disponiveis de episódios
    Quando seleciona aba de "Detalhes"
    E apresenta os detalhes da serie do podcasts

Acessar podcasts Original Globoplay acessando opção A República das Milícias
    Dado que sou um usuário anônimo
    E que estou na home
    Quando seleciona o menu Explore
    E direciona para a página do Explore
    Quando seleciona a aba "Podcasts"
    E apresenta as opções disponiveis do podcasts
    Quando seleciona opção "Original Globoplay"
    E apresenta opções disponiveis do Original Globoplay
    Quando seleciona opção "A República das Milícias"
    E apresenta opções disponiveis de episódios
    Quando seleciona aba de "Detalhes"
    E apresenta os detalhes da serie do podcasts

Acessar podcasts Original Globoplay acessando opção Abuso
    Dado que sou um usuário anônimo
    E que estou na home
    Quando seleciona o menu Explore
    E direciona para a página do Explore
    Quando seleciona a aba "Podcasts"
    E apresenta as opções disponiveis do podcasts
    Quando seleciona opção "Original Globoplay"
    E apresenta opções disponiveis do Original Globoplay
    Quando seleciona opção "Abuso"
    E apresenta opções disponiveis de episódios
    Quando seleciona aba de "Detalhes"
    E apresenta os detalhes da serie do podcasts

Acessar podcasts Original Globoplay acessando opção Pistoleiros
    Dado que sou um usuário anônimo
    E que estou na home
    Quando seleciona o menu Explore
    E direciona para a página do Explore
    Quando seleciona a aba "Podcasts"
    E apresenta as opções disponiveis do podcasts
    Quando seleciona opção "Original Globoplay"
    E apresenta opções disponiveis do Original Globoplay
    Quando seleciona opção "Pistoleiros"
    E apresenta opções disponiveis de episódios
    Quando seleciona aba de "Detalhes"
    E apresenta os detalhes da serie do podcasts
