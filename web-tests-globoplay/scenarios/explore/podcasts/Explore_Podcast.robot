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

# ACESSO CENÁRIOS PODCASTS ORIGINAL GLOBOPLAY

# Acessar podcasts acessando opção com Original Globoplay
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Original Globoplay"
#     E apresenta opções disponiveis do Original Globoplay

# Acessar podcasts Original Globoplay acessando opção À Mão Armada
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Original Globoplay"
#     E apresenta opções disponiveis do Original Globoplay
#     Quando seleciona opção "À Mão Armada"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts

# Acessar podcasts Original Globoplay acessando opção Papo de Parente
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Original Globoplay"
#     E apresenta opções disponiveis do Original Globoplay
#     Quando seleciona opção "Papo de Parente"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts

# Acessar podcasts Original Globoplay acessando opção A República das Milícias
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Original Globoplay"
#     E apresenta opções disponiveis do Original Globoplay
#     Quando seleciona opção "A República das Milícias"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
# 
# Acessar podcasts Original Globoplay acessando opção Abuso
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Original Globoplay"
#     E apresenta opções disponiveis do Original Globoplay
#     Quando seleciona opção "Abuso"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Original Globoplay acessando opção Pistoleiros
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Original Globoplay"
#     E apresenta opções disponiveis do Original Globoplay
#     Quando seleciona opção "Pistoleiros"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
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
Acessar Podcasts Mais Ouvidos acessando opção O Assunto
    Dado que sou um usuário anônimo
    E que estou na home
    Quando seleciona o menu Explore
    E direciona para a página do Explore
    Quando seleciona a aba "Podcasts"
    E apresenta as opções disponiveis do podcasts
    Quando seleciona opção "Podcasts Mais Ouvidos"
    E apresenta opções disponiveis do Podcasts Mais Ouvidos
    Quando seleciona opção "O Assunto"
    E apresenta opções disponiveis de episódios
    Quando seleciona aba de "Detalhes"
    E apresenta os detalhes da serie do podcasts
#
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
#     E apresenta opções disponiveis de episódioss
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
#
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
#     E apresenta opções disponiveis de episódios E aí Gay?
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
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
#     E apresenta opções disponiveis de episódios E aí Gay?
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
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
#     E apresenta opções disponiveis de episódios Abuso
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
#     E apresenta opções disponiveis de episódios Astrológicas
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Mais Ouvidos acessando opção Resumão GE
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Mais Ouvidos"
#     E apresenta opções disponiveis do Podcasts Mais Ouvidos
#     Quando seleciona opção "Resumão GE"
#     E apresenta opções disponiveis de episódios Resumão GE
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
#     E apresenta opções disponiveis de episódios DIÁRIO DE BORDO
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
#     E apresenta opções disponiveis de episódios Podcast Para Tudo
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
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
#     E apresenta opções disponiveis de episódios Isso é FantásticoS
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
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
#     E apresenta opções disponiveis de episódios Jojo Nove e Meia
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Mais Ouvidos acessando opção Resumão Diário
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Mais Ouvidos"
#     E apresenta opções disponiveis do Podcasts Mais Ouvidos
#     Quando seleciona opção "Resumão Diário"
#     E apresenta opções disponiveis de episódios Resumão Diário
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
#     E apresenta opções disponiveis de episódios Mamilos
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
#     E apresenta opções disponiveis de episódios Atenção, Passageiros
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
#     E apresenta opções disponiveis de episódios Papo de Política
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
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
#     E apresenta opções disponiveis de episódios À Mão Armada
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
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
#     E apresenta opções disponiveis de episódios Cena Aberta
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Mais Ouvidos acessando opção GE Palmeiras
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Mais Ouvidos"
#     E apresenta opções disponiveis do Podcasts Mais Ouvidos
#     Quando seleciona opção "GE Palmeiras"
#     E apresenta opções disponiveis de episódios GE Palmeiras
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
#     E apresenta opções disponiveis de episódios Donos da Razão
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Mais Ouvidos acessando opção Conversas Paralelas
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Mais Ouvidos"
#     E apresenta opções disponiveis do Podcasts Mais Ouvidos
#     Quando seleciona opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando seleciona opção "Conversas Paralelas"
#     E apresenta opções disponiveis de episódios Conversas Paralelas
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
#     Quando seleciona opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando seleciona opção "Novela das 9"
#     E apresenta opções disponiveis de episódios Novela das 9
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Mais Ouvidos acessando opção Bichos na Escuta
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Mais Ouvidos"
#     E apresenta opções disponiveis do Podcasts Mais Ouvidos
#     Quando seleciona opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando seleciona opção "Bichos na Escuta"
#     E apresenta opções disponiveis de episódios Bichos na Escuta
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Mais Ouvidos acessando opção Cadê meu Trampo?
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Mais Ouvidos"
#     E apresenta opções disponiveis do Podcasts Mais Ouvidos
#     Quando seleciona opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando seleciona opção "Cadê meu Trampo?"
#     E apresenta opções disponiveis de episódios Cadê meu Trampo?
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
#     Quando seleciona opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando seleciona opção "Projeto Humanos: O Caso Evandro"
#     E apresenta opções disponiveis de episódios Projeto Humanos: O Caso Evandro
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# # ACESSO CENÁRIOS PODCASTS NOVIDADES
#
# Acessar Podcasts Novidades acessando opção E aí Gay?
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Novidades"
#     E apresenta opções disponiveis do Podcasts Novidades
#     Quando seleciona opção "E aí Gay?"
#     E apresenta opções disponiveis de episódios E aí Gay?
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Novidades acessando opção Cadê meu Trampo?
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Novidades"
#     E apresenta opções disponiveis do Podcasts Novidades
#     Quando seleciona opção "Cadê meu Trampo?"
#     E apresenta opções disponiveis de episódios Cadê meu Trampo?
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Novidades acessando opção BBB - Big Brother Brasil
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Novidades"
#     E apresenta opções disponiveis do Podcasts Novidades
#     Quando seleciona opção "BBB - Big Brother Brasil"
#     E apresenta opções disponiveis de episódios BBB - Big Brother Brasil
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Novidades acessando opção Choque de Cultura - Ambiente de Música
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Novidades"
#     E apresenta opções disponiveis do Podcasts Novidades
#     Quando seleciona opção "Choque de Cultura - Ambiente de Música"
#     E apresenta opções disponiveis de episódios Choque de Cultura - Ambiente de Música
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Novidades acessando opção Pistoleiros
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Novidades"
#     E apresenta opções disponiveis do Podcasts Novidades
#     Quando seleciona opção "Pistoleiros"
#     E apresenta opções disponiveis de episódios Pistoleiros
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Novidades acessando opção Modus Operandi
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Novidades"
#     E apresenta opções disponiveis do Podcasts Novidades
#     Quando seleciona opção "Modus Operandi"
#     E apresenta opções disponiveis de episódios Modus Operandi
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Novidades acessando opção Prancheta
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Novidades"
#     E apresenta opções disponiveis do Podcasts Novidades
#     Quando seleciona opção "Prancheta"
#     E apresenta opções disponiveis de episódios Prancheta
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Novidades acessando opção Choque de Cultura - Ambiente de Música
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Novidades"
#     E apresenta opções disponiveis do Podcasts Novidades
#     Quando seleciona opção "Abuso"
#     E apresenta opções disponiveis de episódios Abuso
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Novidades acessando opção Papo de Parente
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Novidades"
#     E apresenta opções disponiveis do Podcasts Novidades
#     Quando seleciona opção "Papo de Parente"
#     E apresenta opções disponiveis de episódios Papo de Parente
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Novidades acessando opção Conversas Paralelas
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Novidades"
#     E apresenta opções disponiveis do Podcasts Novidades
#     Quando seleciona opção "Conversas Paralelas"
#     E apresenta opções disponiveis de episódios Conversas Paralelas
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Novidades acessando opção A República das Milícias
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Novidades"
#     E apresenta opções disponiveis do Podcasts Novidades
#     Quando seleciona opção "A República das Milícias"
#     E apresenta opções disponiveis de episódios A República das Milícias
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Novidades acessando opção Cena Aberta
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Novidades"
#     E apresenta opções disponiveis do Podcasts Novidades
#     Quando seleciona opção "Cena Aberta"
#     E apresenta opções disponiveis de episódios Cena Aberta
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Novidades acessando opção Caminhos Intuitivos
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Novidades"
#     E apresenta opções disponiveis do Podcasts Novidades
#     Quando seleciona opção "Caminhos Intuitivos"
#     E apresenta opções disponiveis de episódios Caminhos Intuitivos
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Novidades acessando opção DIÁRIO DE BORDO
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Novidades"
#     E apresenta opções disponiveis do Podcasts Novidades
#     Quando seleciona opção "DIÁRIO DE BORDO"
#     E apresenta opções disponiveis de episódios DIÁRIO DE BORDO
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Novidades acessando opção As Histórias na Globonews
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Novidades"
#     E apresenta opções disponiveis do Podcasts Novidades
#     Quando seleciona opção "As Histórias na Globonews"
#     E apresenta opções disponiveis de episódios As Histórias na Globonews
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Novidades acessando opção Bem Juntinhos
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Novidades"
#     E apresenta opções disponiveis do Podcasts Novidades
#     Quando seleciona opção "Bem Juntinhos"
#     E apresenta opções disponiveis de episódios Bem Juntinhos
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Novidades acessando opção Donos da Razão
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Novidades"
#     E apresenta opções disponiveis do Podcasts Novidades
#     Quando seleciona opção "Donos da Razão"
#     E apresenta opções disponiveis de episódios Donos da Razão
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Novidades acessando opção Resumão GE
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Novidades"
#     E apresenta opções disponiveis do Podcasts Novidades
#     Quando seleciona opção "Resumão GE"
#     E apresenta opções disponiveis de episódios Resumão GE
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Novidades acessando opção Café&Bola
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Novidades"
#     E apresenta opções disponiveis do Podcasts Novidades
#     Quando seleciona opção "Café&Bola"
#     E apresenta opções disponiveis de episódios Café&Bola
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Novidades acessando opção Jojo Nove e Meia
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Novidades"
#     E apresenta opções disponiveis do Podcasts Novidades
#     Quando seleciona opção "Jojo Nove e Meia"
#     E apresenta opções disponiveis de episódios Jojo Nove e Meia
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# # ACESSO CENÁRIOS PODCASTS JORNALISMO
#
# Acessar Podcasts Jornalismo acessando opção Pistoleiros
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Jornalismo"
#     E apresenta opções disponiveis do Podcasts Jornalismo
#     Quando seleciona opção "Pistoleiros"
#     E apresenta opções disponiveis de episódios Pistoleiros
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Jornalismo acessando opção As Histórias na Globonews
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Jornalismo"
#     E apresenta opções disponiveis do Podcasts Jornalismo
#     Quando seleciona opção "As Histórias na Globonews"
#     E apresenta opções disponiveis de episódios As Histórias na Globonews
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Jornalismo acessando opção A Malu tá ON
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Jornalismo"
#     E apresenta opções disponiveis do Podcasts Jornalismo
#     Quando seleciona opção "A Malu tá ON"
#     E apresenta opções disponiveis de episódios A Malu tá ON
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Jornalismo acessando opção À Mão Armada
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Jornalismo"
#     E apresenta opções disponiveis do Podcasts Jornalismo
#     Quando seleciona opção "À Mão Armada"
#     E apresenta opções disponiveis de episódios À Mão Armada
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Jornalismo acessando opção Eu Te Explico
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Jornalismo"
#     E apresenta opções disponiveis do Podcasts Jornalismo
#     Quando seleciona opção "Eu Te Explico"
#     E apresenta opções disponiveis de episódios Eu Te Explico
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Jornalismo acessando opção As Histórias na Globonews
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Jornalismo"
#     E apresenta opções disponiveis do Podcasts Jornalismo
#     Quando seleciona opção "Resumão Diário"
#     E apresenta opções disponiveis de episódios Resumão Diário
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Jornalismo acessando opção Mamilos
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Jornalismo"
#     E apresenta opções disponiveis do Podcasts Jornalismo
#     Quando seleciona opção "Mamilos"
#     E apresenta opções disponiveis de episódios Mamilos
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Jornalismo acessando opção Rádio Sucupira
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Jornalismo"
#     E apresenta opções disponiveis do Podcasts Jornalismo
#     Quando seleciona opção "Rádio Sucupira"
#     E apresenta opções disponiveis de episódios Rádio Sucupira
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Jornalismo acessando opção Lauro e Gabeira
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Jornalismo"
#     E apresenta opções disponiveis do Podcasts Jornalismo
#     Quando seleciona opção "Lauro e Gabeira"
#     E apresenta opções disponiveis de episódios Lauro e Gabeira
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Jornalismo acessando opção Ao Ponto
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Jornalismo"
#     E apresenta opções disponiveis do Podcasts Jornalismo
#     Quando seleciona opção "Ao Ponto"
#     E apresenta opções disponiveis de episódios Ao Ponto
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Jornalismo acessando opção Panorama CBN
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Jornalismo"
#     E apresenta opções disponiveis do Podcasts Jornalismo
#     Quando seleciona opção "Panorama CBN"
#     E apresenta opções disponiveis de episódios Panorama CBN
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Jornalismo acessando opção O Assunto
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Jornalismo"
#     E apresenta opções disponiveis do Podcasts Jornalismo
#     Quando seleciona opção "O Assunto"
#     E apresenta opções disponiveis de episódios O Assunto
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Jornalismo acessando opção G1 - Funciona assim
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Jornalismo"
#     E apresenta opções disponiveis do Podcasts Jornalismo
#     Quando seleciona opção "G1 - Funciona assim"
#     E apresenta opções disponiveis de episódios G1 - Funciona assim
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Jornalismo acessando opção Resumão
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Jornalismo"
#     E apresenta opções disponiveis do Podcasts Jornalismo
#     Quando seleciona opção "Resumão"
#     E apresenta opções disponiveis de episódios Resumão
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Jornalismo acessando opção Ao Ponto
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Jornalismo"
#     E apresenta opções disponiveis do Podcasts Jornalismo
#     Quando seleciona opção "Ao Ponto"
#     E apresenta opções disponiveis de episódios Ao Ponto
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Jornalismo acessando opção PodParaná
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Jornalismo"
#     E apresenta opções disponiveis do Podcasts Jornalismo
#     Quando seleciona opção "PodParaná"
#     E apresenta opções disponiveis de episódios PodParaná
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Jornalismo acessando opção Baixada do Pauta
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Jornalismo"
#     E apresenta opções disponiveis do Podcasts Jornalismo
#     Quando seleciona opção "Baixada do Pauta"
#     E apresenta opções disponiveis de episódios Baixada do Pauta
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Jornalismo acessando opção G1 - Novo Coronavírus
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Jornalismo"
#     E apresenta opções disponiveis do Podcasts Jornalismo
#     Quando seleciona opção "Novo Coronavírus"
#     E apresenta opções disponiveis de episódios Novo Coronavírus
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Jornalismo acessando opção Isso é Fantástico
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Jornalismo"
#     E apresenta opções disponiveis do Podcasts Jornalismo
#     Quando seleciona opção "Isso é Fantástico"
#     E apresenta opções disponiveis de episódios Isso é Fantástico
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Jornalismo acessando opção Desenrola, Rio
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Jornalismo"
#     E apresenta opções disponiveis do Podcasts Jornalismo
#     Quando seleciona opção "Desenrola, Rio"
#     E apresenta opções disponiveis de episódios Desenrola, Rio
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Jornalismo acessando opção Papo de Política
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Jornalismo"
#     E apresenta opções disponiveis do Podcasts Jornalismo
#     Quando seleciona opção "Papo de Política"
#     E apresenta opções disponiveis de episódios Papo de Política
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Jornalismo acessando opção Bem Estar
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Jornalismo"
#     E apresenta opções disponiveis do Podcasts Jornalismo
#     Quando seleciona opção "Bem Estar"
#     E apresenta opções disponiveis de episódios Bem Estar
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Jornalismo acessando opção GloboNews Internacional
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Jornalismo"
#     E apresenta opções disponiveis do Podcasts Jornalismo
#     Quando seleciona opção "GloboNews Internacional"
#     E apresenta opções disponiveis de episódios GloboNews Internacional
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Jornalismo acessando opção GloboNews - Em Movimento
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Jornalismo"
#     E apresenta opções disponiveis do Podcasts Jornalismo
#     Quando seleciona opção "GloboNews - Em Movimento"
#     E apresenta opções disponiveis de episódios GloboNews - Em Movimento
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# # ACESSO CENÁRIOS PODCASTS ESPORTES
#
# Acessar Podcasts Esportes acessando opção Prancheta
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "Prancheta"
#     E apresenta opções disponiveis de episódios Prancheta
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção Resumão GE
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "Resumão GE"
#     E apresenta opções disponiveis de episódios Resumão GE
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção Café&Bola
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "Café&Bola"
#     E apresenta opções disponiveis de episódios Café&Bola
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção GE Chapecoense
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "GE Chapecoense"
#     E apresenta opções disponiveis de episódios GE Chapecoense
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção GE Juventude
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "GE Juventude"
#     E apresenta opções disponiveis de episódios GE Juventude
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção Legal!
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "Legal!"
#     E apresenta opções disponiveis de episódios Legal!
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção GE Bragantino
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "GE Bragantinoa"
#     E apresenta opções disponiveis de episódios GE Bragantino
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção GE Cuiabá
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "GE Cuiabá"
#     E apresenta opções disponiveis de episódios GE Cuiabá
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção Match Point Beach Tennis
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "Match Point Beach Tennis"
#     E apresenta opções disponiveis de episódios Match Point Beach Tennis
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção Maré Feminina
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "Maré Feminina"
#     E apresenta opções disponiveis de episódios Maré Feminina
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção ATR no GE
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "ATR no GE"
#     E apresenta opções disponiveis de episódios ATR no GE
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção GE Flamengo
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "GE Flamengo"
#     E apresenta opções disponiveis de episódios GE Flamengo
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção Hoje Sim
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "Hoje Sim"
#     E apresenta opções disponiveis de episódios Hoje Sim
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção Na Ponta dos Dedos
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "Na Ponta dos Dedos"
#     E apresenta opções disponiveis de episódios Na Ponta dos Dedos
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção Fala, Fera!
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "Fala, Fera!"
#     E apresenta opções disponiveis de episódios Fala, Fera!
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção Gringolândia
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "Gringolândia"
#     E apresenta opções disponiveis de episódios Gringolândia
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção Dinheiro do Jogo
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "Dinheiro do Jogo"
#     E apresenta opções disponiveis de episódios Dinheiro do Jogo
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção Early Game
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "Early Game"
#     E apresenta opções disponiveis de episódios Early Game
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção GE Vasco
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "GE Vasco"
#     E apresenta opções disponiveis de episódios GE Vasco
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção GE São Paulo
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "GE São Paulo"
#     E apresenta opções disponiveis de episódios GE São Paulo
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção GE Santos
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "GE Santos"
#     E apresenta opções disponiveis de episódios GE Santos
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção GE Palmeiras
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "GE Palmeiras"
#     E apresenta opções disponiveis de episódios GE Palmeiras
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção GE Internacional
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "GE Internacional"
#     E apresenta opções disponiveis de episódios GE Internacional
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção GE Grêmio
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando seleciona opção "GE Grêmio"
#     E apresenta opções disponiveis de episódios GE Grêmio
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção GE Fluminense
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando seleciona opção "GE Fluminense"
#     E apresenta opções disponiveis de episódios GE Fluminense
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção GE Cruzeiro
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando seleciona opção "GE Cruzeiro"
#     E apresenta opções disponiveis de episódios GE Cruzeiro
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção GE Coritiba
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando seleciona opção "GE Coritiba"
#     E apresenta opções disponiveis de episódios GE Coritiba
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção GE Corinthians
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando seleciona opção "GE Corinthians"
#     E apresenta opções disponiveis de episódios GE Corinthians
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção GE Botafogo
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando seleciona opção "GE Botafogo"
#     E apresenta opções disponiveis de episódios GE Botafogo
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção GE Atlético-MG
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando seleciona opção "GE Atlético-MG"
#     E apresenta opções disponiveis de episódios GE Atlético-MG
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção GE GE Athletico
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando seleciona opção "GE Athletico"
#     E apresenta opções disponiveis de episódios GE Athletico
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção Mundo da Luta
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando seleciona opção "Mundo da Luta"
#     E apresenta opções disponiveis de episódios Mundo da Luta
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção CartolaCast
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando seleciona opção "CartolaCast"
#     E apresenta opções disponiveis de episódios CartolaCast
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção Embolada
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando seleciona opção "Embolada"
#     E apresenta opções disponiveis de episódios Embolada
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção Clássico Mineiro
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando seleciona opção "Clássico Mineiro"
#     E apresenta opções disponiveis de episódios Clássico Mineiro
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção CE na rede
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando seleciona opção "CE na rede"
#     E apresenta opções disponiveis de episódios CE na rede
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção GE A Mesa
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando seleciona opção "A Mesa"
#     E apresenta opções disponiveis de episódios A Mesa
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção Segue o BAba
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando seleciona opção "Segue o BAba"
#     E apresenta opções disponiveis de episódios Segue o BAba
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção Na Escuta
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando seleciona opção "Na Escuta"
#     E apresenta opções disponiveis de episódios Na Escuta
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção Rodada Tripla
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando seleciona opção "Rodada Tripla"
#     E apresenta opções disponiveis de episódios Rodada Tripla
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção Casão Troca Ideia
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando seleciona opção "Casão Troca Ideia"
#     E apresenta opções disponiveis de episódios Casão Troca Ideia
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção Ubuntu Esporte Clube
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando seleciona opção "Ubuntu Esporte Clube"
#     E apresenta opções disponiveis de episódios Ubuntu Esporte Clube
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção Sexta Estrela
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando seleciona opção "Sexta Estrela"
#     E apresenta opções disponiveis de episódios Sexta Estrela
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção La Pelota
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando seleciona opção "La Pelota"
#     E apresenta opções disponiveis de episódios La Pelota
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção A Dona do Campinho
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando seleciona opção "A Dona do Campinho"
#     E apresenta opções disponiveis de episódios A Dona do Campinho
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção Vocês da Imprensa
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando seleciona opção "Vocês da Imprensa"
#     E apresenta opções disponiveis de episódios Vocês da Imprensa
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção 2 Pontos NBA
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando seleciona opção "2 Pontos NBA"
#     E apresenta opções disponiveis de episódios 2 Pontos NBA
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção Ponte Aérea
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando selecionE mais uma vez a opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando seleciona opção "Ponte Aérea"
#     E apresenta opções disponiveis de episódios Ponte Aérea
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção Primeira Descida
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando selecionE mais uma vez a opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando seleciona opção "Primeira Descida"
#     E apresenta opções disponiveis de episódios Primeira Descida
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção Na Rede com Nalbert
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando selecionE mais uma vez a opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando seleciona opção "Na Rede com Nalbert"
#     E apresenta opções disponiveis de episódios Na Rede com Nalbert
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção Rumo ao Pódio
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando selecionE mais uma vez a opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando seleciona opção "Rumo ao Pódio"
#     E apresenta opções disponiveis de episódios Rumo ao Pódio
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção O Cientista do Esporte
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando selecionE mais uma vez a opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando seleciona opção "O Cientista do Esporte"
#     E apresenta opções disponiveis de episódios O Cientista do Esporte
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção Toca e Sai
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando selecionE mais uma vez a opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando seleciona opção "Toca e Sai"
#     E apresenta opções disponiveis de episódios Toca e Sai
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção Match Point
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando selecionE mais uma vez a opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando seleciona opção "Match Point"
#     E apresenta opções disponiveis de episódios Match Point
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção Correria
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando selecionE mais uma vez a opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando seleciona opção "Correria"
#     E apresenta opções disponiveis de episódios Correria
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção Grande Círculo
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando selecionE mais uma vez a opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando seleciona opção "Grande Círculo"
#     E apresenta opções disponiveis de episódios Grande Círculo
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção Conexão
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando selecionE mais uma vez a opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando seleciona opção "Conexão"
#     E apresenta opções disponiveis de episódios Conexão
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção Jogo do Casa
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando selecionE mais uma vez a opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando seleciona opção "Jogo do Casa"
#     E apresenta opções disponiveis de episódios Jogo do Casa
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção Futebol Arte
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando selecionE mais uma vez a opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando seleciona opção "Futebol Arte"
#     E apresenta opções disponiveis de episódios Futebol Arte
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar Podcasts Esportes acessando opção Goleada
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Podcasts Esportes"
#     E apresenta opções disponiveis do Podcasts Esportes
#     Quando seleciona opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando selecionE mais uma vez a opção "VEJA MAIS"
#     E apresenta novas opções de podcats
#     Quando seleciona opção "Goleada"
#     E apresenta opções disponiveis de episódios Goleada
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# # ACESSO CENÁRIOS PODCASTS SOCIEDADE E COMPORTAMENTO
#
# Acessar Podcasts Sociedade e Comportamento acessando opção Frango com Quiabo
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Podcasts Sociedade e Comportamento
#     Quando seleciona opção "Frango com Quiabo"
#     E apresenta opções disponiveis de episódios Frango com Quiabo
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
