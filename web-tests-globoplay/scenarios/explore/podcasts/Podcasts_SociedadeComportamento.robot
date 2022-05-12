*** Settings ***
Documentation   Acesso tela de Explore e valida opção Podcasts Sociedade e Comportamento

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

# ACESSO CENÁRIOS PODCASTS SOCIEDADE E COMPORTAMENTO

# Acessar podcasts acessando opção com Sociedade e Comportamento
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#
# Acessar podcasts Sociedade e Comportamento acessando opção Fale Mais Sobre Isso, Iozzi
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#     Quando seleciona opção "Fale Mais Sobre Isso, Iozzi"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Sociedade e Comportamento acessando opção Promessas
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#     Quando seleciona opção "Promessas"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Sociedade e Comportamento acessando opção Frango com Quiabo
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#     Quando seleciona opção "Frango com Quiabo"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Sociedade e Comportamento acessando opção E aí Gay?
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#     Quando seleciona opção "E aí Gay?"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Sociedade e Comportamento acessando opção Cadê meu Trampo?
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#     Quando seleciona opção "Cadê meu Trampo?"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Sociedade e Comportamento acessando opção Pistoleiros
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#     Quando seleciona opção "Pistoleiros"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Sociedade e Comportamento acessando opção Abuso
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#     Quando seleciona opção "Abuso"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Sociedade e Comportamento acessando opção Papo de Parente
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#     Quando seleciona opção "Papo de Parente"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Sociedade e Comportamento acessando opção Conversas Paralelas
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#     Quando seleciona opção "Conversas Paralelas"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Sociedade e Comportamento acessando opção A República das Milícias
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#     Quando seleciona opção "A República das Milícias"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Sociedade e Comportamento acessando opção Fale Mais Sobre Isso, Iozzi
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#     Quando seleciona opção "Fale Mais Sobre Isso, Iozzi"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Sociedade e Comportamento acessando opção Caminhos Intuitivos
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#     Quando seleciona opção "Caminhos Intuitivos"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Sociedade e Comportamento acessando opção DIÁRIO DE BORDO
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#     Quando seleciona opção "DIÁRIO DE BORDO"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Sociedade e Comportamento acessando opção Bem Juntinhos
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#     Quando seleciona opção "Bem Juntinhos"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Sociedade e Comportamento acessando opção Tô na Trace
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#     Quando seleciona opção "Tô na Trace"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Sociedade e Comportamento acessando opção Pega essa Ref
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#     Quando seleciona opção "Pega essa Ref"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Sociedade e Comportamento acessando opção Bichos na Escuta
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#     Quando seleciona opção "Bichos na Escuta"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Sociedade e Comportamento acessando opção Prazer, Renata
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#     Quando seleciona opção "Prazer, Renata"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Sociedade e Comportamento acessando opção Isso Está Acontecendo
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#     Quando seleciona opção "Isso Está Acontecendo"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Sociedade e Comportamento acessando opção Decodificando
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#     Quando seleciona opção "Decodificando"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Sociedade e Comportamento acessando opção Gente Conversa
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#     Quando seleciona opção "Gente Conversa"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Sociedade e Comportamento acessando opção Gente Investiga
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#     Quando seleciona opção "Gente Investiga"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Sociedade e Comportamento acessando opção Gente Podcasts
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#     Quando seleciona opção "Gente Podcasts"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Sociedade e Comportamento acessando opção À Mão Armada
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#     Quando seleciona opção "À Mão Armada"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Sociedade e Comportamento acessando opção Eu Te Explico
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#     Quando seleciona opção "Eu Te Explico"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Sociedade e Comportamento acessando opção Escuta que o filho é teu
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#     Quando seleciona opção "Escuta que o filho é teu"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Sociedade e Comportamento acessando opção Projeto Humanos: O Caso Evandro
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#     Quando seleciona opção "Projeto Humanos: O Caso Evandro"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Sociedade e Comportamento acessando opção Mamilos
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#     Quando seleciona opção "Mamilos"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Sociedade e Comportamento acessando opção Braincast
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#     Quando seleciona opção "Braincast"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Sociedade e Comportamento acessando opção Astrológicas
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#     Quando seleciona opção "Astrológicas"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Sociedade e Comportamento acessando opção Atenção, Passageiros
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#     Quando seleciona opção "Atenção, Passageiros"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Sociedade e Comportamento acessando opção Cozinha Prática com Rita Lobo
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#     Quando seleciona opção "Cozinha Prática com Rita Lobo"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Sociedade e Comportamento acessando opção Masterclass Meia Palavra
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#     Quando seleciona opção "Masterclass Meia Palavra"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Sociedade e Comportamento acessando opção Viagem a Qualquer Custo
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#     Quando seleciona opção "Viagem a Qualquer Custo"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Sociedade e Comportamento acessando opção Mude minha ideia
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#     Quando seleciona opção "Mude minha ideia"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Sociedade e Comportamento acessando opção Papo de Segunda
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#     Quando seleciona opção "Papo de Segunda"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Sociedade e Comportamento acessando opção Saia Justa
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#     Quando seleciona opção "Saia Justa"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Sociedade e Comportamento acessando opção Jout Jout de Saia
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#     Quando seleciona opção "Jout Jout de Saia"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Sociedade e Comportamento acessando opção Academia CBN - Mario Sergio Cortella
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#     Quando seleciona opção "Academia CBN - Mario Sergio Cortella"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Sociedade e Comportamento acessando opção Conversa com Bial
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#     Quando seleciona opção "Conversa com Bial"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Sociedade e Comportamento acessando opção PodParaná
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#     Quando seleciona opção "Conversa com Bial"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Sociedade e Comportamento acessando opção Isso é Fantástico
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#     Quando seleciona opção "Conversa com Bial"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Sociedade e Comportamento acessando opção O tema é - Como Será?
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#     Quando seleciona opção "O tema é - Como Será?"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Sociedade e Comportamento acessando opção Diálogos Virtuais
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#     Quando seleciona opção "Diálogos Virtuais"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Sociedade e Comportamento acessando opção GloboNews - Em Movimento
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#     Quando seleciona opção "GloboNews - Em Movimento"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Sociedade e Comportamento acessando opção #Engajadxs - Como Será?
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#     Quando seleciona opção "#Engajadxs - Como Será?"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
#
# Acessar podcasts Sociedade e Comportamento acessando opção Agora é Assim?
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando seleciona o menu Explore
#     E direciona para a página do Explore
#     Quando seleciona a aba "Podcasts"
#     E apresenta as opções disponiveis do podcasts
#     Quando seleciona opção "Sociedade e Comportamento"
#     E apresenta opções disponiveis do Sociedade e Comportamento
#     Quando seleciona opção "Agora é Assim?"
#     E apresenta opções disponiveis de episódios
#     Quando seleciona aba de "Detalhes"
#     E apresenta os detalhes da serie do podcasts
