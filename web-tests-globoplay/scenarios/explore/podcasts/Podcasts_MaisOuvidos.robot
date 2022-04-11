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
# Acessar explore Podcasts com usuário anônimo
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts

# ACESSO CENÁRIOS PODCASTS MAIS OUVIDOS

# Acessar acessando opção Podcasts Mais Ouvidos
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Mais Ouvidos"
#     E apresenta opções disponiveis do Podcasts Mais Ouvidos

# Acessar Podcasts Mais Ouvidos acessando opção BBB - Big Brother Brasil
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Mais Ouvidos"
#     E apresenta opções disponiveis do Podcasts Mais Ouvidos
#     Quando seleciona opção "BBB - Big Brother Brasil"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts

# Acessar Podcasts Mais Ouvidos acessando opção Modus Operandi
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Mais Ouvidos"
#     E apresenta opções disponiveis do Podcasts Mais Ouvidos
#     Quando seleciona opção "Modus Operandi"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Mais Ouvidos acessando opção Lady Night
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Mais Ouvidos"
#     E apresenta opções disponiveis do Podcasts Mais Ouvidos
#     Quando seleciona opção "Lady Night"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Mais Ouvidos acessando opção O Assunto
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Mais Ouvidos"
#     E apresenta opções disponiveis do Podcasts Mais Ouvidos
#     Quando seleciona opção "O Assunto"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
# #
# Acessar Podcasts Mais Ouvidos acessando opção A República das Milícias
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Mais Ouvidos"
#     E apresenta opções disponiveis do Podcasts Mais Ouvidos
#     Quando seleciona opção "A República das Milícias"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
Acessar Podcasts Mais Ouvidos acessando opção Pistoleiros
    Dado que sou um usuário anônimo
    E que estou na home
    Quando seleciona o menu Explore
    E direciona para a página do Explore
    Quando seleciona a aba "Podcasts"
    E apresenta as opções disponiveis do podcasts
    Quando seleciona opção "Podcasts Mais Ouvidos"
    E apresenta opções disponiveis do Podcasts Mais Ouvidos
    Quando seleciona opção "Pistoleiros"
    E apresenta opções disponiveis de episódios
    Quando seleciona aba de "Detalhes"
    E apresenta os detalhes da serie do podcasts

# Acessar Podcasts Mais Ouvidos acessando opção Isso é Fantástico
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Mais Ouvidos"
#     E apresenta opções disponiveis do Podcasts Mais Ouvidos
#     Quando seleciona opção "Isso é Fantástico"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Mais Ouvidos acessando opção Novela das 9
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Mais Ouvidos"
#     E apresenta opções disponiveis do Podcasts Mais Ouvidos
#     Quando seleciona opção "Novela das 9"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts

# Acessar Podcasts Mais Ouvidos acessando opção Que História É Essa, Porchat?
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Mais Ouvidos"
#     E apresenta opções disponiveis do Podcasts Mais Ouvidos
#     Quando seleciona opção "Que História É Essa, Porchat?"
#     E apresenta opções disponiveis de episódios Que História É Essa, Porchat?
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Mais Ouvidos acessando opção Conversa com Bial
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Mais Ouvidos"
#     E apresenta opções disponiveis do Podcasts Mais Ouvidos
#     Quando seleciona opção "Conversa com Bial"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Mais Ouvidos acessando opção Prazer, Renata
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Mais Ouvidos"
#     E apresenta opções disponiveis do Podcasts Mais Ouvidos
#     Quando seleciona opção "Prazer, Renata"
#     E apresenta opções disponiveis de episódios Prazer, Renata
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Mais Ouvidos acessando opção Mamilos
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Mais Ouvidos"
#     E apresenta opções disponiveis do Podcasts Mais Ouvidos
#     Quando seleciona opção "Mamilos"
#     E apresenta opções disponiveis de episódios Astrológicas
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Mais Ouvidos acessando opção Abuso
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Mais Ouvidos"
#     E apresenta opções disponiveis do Podcasts Mais Ouvidos
#     Quando seleciona opção "Abuso"
#     E apresenta opções disponiveis de episódios Resumão GE
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Mais Ouvidos acessando opção Podcast Para Tudo
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Mais Ouvidos"
#     E apresenta opções disponiveis do Podcasts Mais Ouvidos
#     Quando seleciona opção "Podcast Para Tudo"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Mais Ouvidos acessando opção Papo de Política
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Mais Ouvidos"
#     E apresenta opções disponiveis do Podcasts Mais Ouvidos
#     Quando seleciona opção "Papo de Política"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts

# Acessar Podcasts Mais Ouvidos acessando opção E aí Gay?
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Mais Ouvidos"
#     E apresenta opções disponiveis do Podcasts Mais Ouvidos
#     Quando seleciona opção "E aí Gay?"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
# #
# Acessar Podcasts Mais Ouvidos acessando opção Cena Aberta
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Mais Ouvidos"
#     E apresenta opções disponiveis do Podcasts Mais Ouvidos
#     Quando seleciona opção "Cena Aberta"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Mais Ouvidos acessando opção Donos da Razão
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Mais Ouvidos"
#     E apresenta opções disponiveis do Podcasts Mais Ouvidos
#     Quando seleciona opção "Donos da Razão"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Mais Ouvidos acessando opção Braincast
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Mais Ouvidos"
#     E apresenta opções disponiveis do Podcasts Mais Ouvidos
#     Quando seleciona opção "Braincast"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Mais Ouvidos acessando opção DIÁRIO DE BORDO
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Mais Ouvidos"
#     E apresenta opções disponiveis do Podcasts Mais Ouvidos
#     Quando seleciona opção "DIÁRIO DE BORDO"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Mais Ouvidos acessando opção GE Flamengo
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Mais Ouvidos"
#     E apresenta opções disponiveis do Podcasts Mais Ouvidos
#     Quando seleciona opção "GE Flamengo"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
#
# Acessar Podcasts Mais Ouvidos acessando opção Astrológicas
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Mais Ouvidos"
#     E apresenta opções disponiveis do Podcasts Mais Ouvidos
#     Quando seleciona opção "Astrológicas"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
#
# Acessar Podcasts Mais Ouvidos acessando opção À Mão Armada
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Mais Ouvidos"
#     E apresenta opções disponiveis do Podcasts Mais Ouvidos
#     Quando seleciona opção "À Mão Armada"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
#
Acessar Podcasts Mais Ouvidos acessando opção Conversas Paralelas
    Dado que sou um usuário anônimo
    E que estou na home
    Quando seleciona o menu Explore
    E direciona para a página do Explore
    Quando seleciona a aba "Podcasts"
    E apresenta as opções disponiveis do podcasts
    Quando seleciona opção "Podcasts Mais Ouvidos"
    E apresenta opções disponiveis do Podcasts Mais Ouvidos
    Quando seleciona opção "Conversas Paralelas"
    E apresenta opções disponiveis de episódios
    Quando seleciona aba de "Detalhes"
    E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Mais Ouvidos acessando opção Jojo Nove e Meia
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Mais Ouvidos"
#     E apresenta opções disponiveis do Podcasts Mais Ouvidos
#     Quando seleciona opção "Jojo Nove e Meia"
#     E apresenta opções disponiveis de episódios Papo de Política
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Mais Ouvidos acessando opção Atenção, Passageiros
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Mais Ouvidos"
#     E apresenta opções disponiveis do Podcasts Mais Ouvidos
#     Quando seleciona opção "Atenção, Passageiros"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Mais Ouvidos acessando opção GE Vasco
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Mais Ouvidos"
#     E apresenta opções disponiveis do Podcasts Mais Ouvidos
#     Quando seleciona opção "GE Vasco"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Mais Ouvidos acessando opção Projeto Humanos: O Caso Evandro
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Mais Ouvidos"
#     E apresenta opções disponiveis do Podcasts Mais Ouvidos
#     Quando seleciona opção "Projeto Humanos: O Caso Evandro"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Mais Ouvidos acessando opção Promessas
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Mais Ouvidos"
#     E apresenta opções disponiveis do Podcasts Mais Ouvidos
#     Quando seleciona opção "Promessas"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Mais Ouvidos acessando opção GE Botafogo
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Mais Ouvidos"
#     E apresenta opções disponiveis do Podcasts Mais Ouvidos
#     Quando seleciona opção "GE Botafogo"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Mais Ouvidos acessando opção Conversas Paralela
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Mais Ouvidos"
#     E apresenta opções disponiveis do Podcasts Mais Ouvidos
#     Quando seleciona opção "Conversas Paralela"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
