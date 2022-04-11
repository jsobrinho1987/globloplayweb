*** Settings ***
Documentation   Acesso tela de Explore e valida opção Podcasts Lançamentos Imperdíveis

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

# ACESSO CENÁRIOS PODCASTS LANÇAMENTOS IMPERDÍVEIS

# Acessar podcasts acessando opção com Novidades
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Lançamentos Imperdíveis"
#     E apresenta opções disponiveis do Lançamentos Imperdíveis

# Acessar podcasts Lançamentos Imperdíveis acessando opção Fale Mais Sobre Isso, Iozzi
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Lançamentos Imperdíveis"
#     E apresenta opções disponiveis do Lançamentos Imperdíveis
#     Quando seleciona opção "Fale Mais Sobre Isso, Iozzi"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts

# Acessar podcasts Lançamentos Imperdíveis acessando Promessas
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Lançamentos Imperdíveis"
#     E apresenta opções disponiveis do Lançamentos Imperdíveis
#     Quando seleciona opção "Promessas"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts

# Acessar podcasts Lançamentos Imperdíveis acessando Frango com Quiabo
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Lançamentos Imperdíveis"
#     E apresenta opções disponiveis do Lançamentos Imperdíveis
#     Quando seleciona opção "Frango com Quiabo"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts

# Acessar podcasts Lançamentos Imperdíveis acessando E aí Gay?
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Lançamentos Imperdíveis"
#     E apresenta opções disponiveis do Lançamentos Imperdíveis
#     Quando seleciona opção "E aí Gay?"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts

# Acessar podcasts Lançamentos Imperdíveis acessando Cadê meu Trampo?
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Lançamentos Imperdíveis"
#     E apresenta opções disponiveis do Lançamentos Imperdíveis
#     Quando seleciona opção "Cadê meu Trampo?"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts

# Acessar podcasts Lançamentos Imperdíveis acessando BBB - Big Brother Brasil
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Lançamentos Imperdíveis"
#     E apresenta opções disponiveis do Lançamentos Imperdíveis
#     Quando seleciona opção "BBB - Big Brother Brasil"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts

# Acessar podcasts Lançamentos Imperdíveis acessando Choque de Cultura - Ambiente de Música
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Lançamentos Imperdíveis"
#     E apresenta opções disponiveis do Lançamentos Imperdíveis
#     Quando seleciona opção "Choque de Cultura - Ambiente de Música"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts

# Acessar podcasts Lançamentos Imperdíveis acessando Pistoleiros
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Lançamentos Imperdíveis"
#     E apresenta opções disponiveis do Lançamentos Imperdíveis
#     Quando seleciona opção "Pistoleiros"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts

# Acessar podcasts Lançamentos Imperdíveis acessando Modus Operandi
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Lançamentos Imperdíveis"
#     E apresenta opções disponiveis do Lançamentos Imperdíveis
#     Quando seleciona opção "Modus Operandi"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts

# Acessar podcasts Lançamentos Imperdíveis acessando Prancheta
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Lançamentos Imperdíveis"
#     E apresenta opções disponiveis do Lançamentos Imperdíveis
#     Quando seleciona opção "Prancheta"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts

# Acessar podcasts Lançamentos Imperdíveis acessando Abuso
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Lançamentos Imperdíveis"
#     E apresenta opções disponiveis do Lançamentos Imperdíveis
#     Quando seleciona opção "Abuso"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts

# Acessar podcasts Lançamentos Imperdíveis acessando Papo de Parente
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Lançamentos Imperdíveis"
#     E apresenta opções disponiveis do Lançamentos Imperdíveis
#     Quando seleciona opção "Papo de Parente"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts

# Acessar podcasts Lançamentos Imperdíveis acessando Conversas Paralelas
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Lançamentos Imperdíveis"
#     E apresenta opções disponiveis do Lançamentos Imperdíveis
#     Quando seleciona opção "Conversas Paralelas"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts

# Acessar podcasts Lançamentos Imperdíveis acessando A República das Milícias
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Lançamentos Imperdíveis"
#     E apresenta opções disponiveis do Lançamentos Imperdíveis
#     Quando seleciona opção "A República das Milícias"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts

# Acessar podcasts Lançamentos Imperdíveis acessando Cena Aberta
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Lançamentos Imperdíveis"
#     E apresenta opções disponiveis do Lançamentos Imperdíveis
#     Quando seleciona opção "Cena Aberta"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts

# Acessar podcasts Lançamentos Imperdíveis acessando Caminhos Intuitivos
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Lançamentos Imperdíveis"
#     E apresenta opções disponiveis do Lançamentos Imperdíveis
#     Quando seleciona opção "Caminhos Intuitivos"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts

# Acessar podcasts Lançamentos Imperdíveis acessando Cena Aberta
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Lançamentos Imperdíveis"
#     E apresenta opções disponiveis do Lançamentos Imperdíveis
#     Quando seleciona opção "Cena Aberta"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts

# Acessar podcasts Lançamentos Imperdíveis acessando DIÁRIO DE BORDO
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Lançamentos Imperdíveis"
#     E apresenta opções disponiveis do Lançamentos Imperdíveis
#     Quando seleciona opção "DIÁRIO DE BORDO"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts

# Acessar podcasts Lançamentos Imperdíveis acessando As Histórias na Globonews
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Lançamentos Imperdíveis"
#     E apresenta opções disponiveis do Lançamentos Imperdíveis
#     Quando seleciona opção "As Histórias na Globonews"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts

# Acessar podcasts Lançamentos Imperdíveis acessando Bem Juntinhos
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Lançamentos Imperdíveis"
#     E apresenta opções disponiveis do Lançamentos Imperdíveis
#     Quando seleciona opção "Bem Juntinhos"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts

# Acessar podcasts Lançamentos Imperdíveis acessando Donos da Razão
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Lançamentos Imperdíveis"
#     E apresenta opções disponiveis do Lançamentos Imperdíveis
#     Quando seleciona opção "Donos da Razão"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
