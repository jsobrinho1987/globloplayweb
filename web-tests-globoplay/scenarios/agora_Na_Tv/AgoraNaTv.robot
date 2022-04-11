*** Settings ***
Documentation   Acesso ao submenu Canais

# Default Tags    Canais

# IMPORT OS DADOS DOS BROWSER DE EXECUÇÃO DO NAVEGADOR
Resource            ${EXECDIR}/web-tests-globoplay/environment.robot

#ANTES DA EXECUÇÃO DOS TESTES
Suite Setup         Before Suite

# ANTES DE CADA UM DOS TESTES - ABRIR NAVEGADOR
Test Setup          Before Scenario

# APÓS CADA UM DOS TESTES - FECHAR NAVEGADOR
Test Teardown       After Scenario

*** Test Cases ***

#------------------------------------#
# ACESSOS ANONIMO
#------------------------------------#

# [Tags]      Acessa   Agora na TV
Acessar conteúdo de "Agora na TV" com usuário anônimo
    Dado que sou um usuário anônimo
    E que estou na home
    Então seleciona o menu "Agora na TV"


# [Tags]      Agora na TV    TODOS
Acessar conteúdo de Agora na TV na opção "Todos" com usuário anônimo
    Dado que sou um usuário anônimo
    E que estou na home
    Então seleciona o menu "Agora na TV"
    E clica no sub menu Todos
    Então seleciona os canais da playlist


# [Tags]      Agora na TV    BBB
Acessar conteúdo de Agora na TV na opção "BBB" com usuário anônimo
    Dado que sou um usuário anônimo
    E que estou na home
    Então seleciona o menu "Agora na TV"
    E clica no sub menu BBB
    Então seleciona os canais da playlist


# [Tags]      Agora na TV    Gratuito
Acessar conteúdo de Agora na TV na opção "Gratuito" com usuário anônimo
    Dado que sou um usuário anônimo
    E que estou na home
    Então seleciona o menu "Agora na TV"
    E clica no sub menu Gratuitos
    Então seleciona os canais da playlist


# [Tags]      Agora na TV    +Canais
Acessar conteúdo de Agora na TV na opção "+Canais" com usuário anônimo
    Dado que sou um usuário anônimo
    E que estou na home
    Então seleciona o menu "Agora na TV"
    E clica no sub menu +Canais
    Então seleciona os canais da playlist


# [Tags]      Agora na TV    Filmes e Séries
Acessar conteúdo de Agora na TV na opção "Filmes e Séries" com usuário anônimo
    Dado que sou um usuário anônimo
    E que estou na home
    Então seleciona o menu "Agora na TV"
    E clica no sub menu "Filmes e Séries"
    Então seleciona os canais da playlist


# [Tags]      Agora na TV    Esportes
Acessar conteúdo de Agora na TV na opção "Esportes" com usuário anônimo
    Dado que sou um usuário anônimo
    E que estou na home
    Então seleciona o menu "Agora na TV"
    E clica no sub menu "Esportes"
    Então seleciona os canais da playlist


# [Tags]      Agora na TV    Jornalismo
Acessar conteúdo de Agora na TV na opção "Jornalismo" com usuário anônimo
    Dado que sou um usuário anônimo
    E que estou na home
    Então seleciona o menu "Agora na TV"
    E clica no sub menu "Jornalismo"
    Então seleciona os canais da playlist


# [Tags]      Agora na TV    Infantil
Acessar conteúdo de Agora na TV na opção "Infantil" com usuário anônimo
    Dado que sou um usuário anônimo
    E que estou na home
    Então seleciona o menu "Agora na TV"
    E clica no sub menu "Infantil"
    Então seleciona os canais da playlist



# Acessar conteúdo aovivo Jornalismo com usuário anônimo
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando clicar no menu "Agora na TV"
#     E clicar no sub menu jornalismo
#     E clicar no aovivo jornalismo
#     Então vejo o tapume com a mensagem Aproveite

# Acessar conteúdo aovivo Infantil com usuário anônimo
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando clicar no menu "Agora na TV"
#     E clicar no sub menu infantil
#     E clicar no aovivo gloob
#     Então vejo o tapume com a mensagem Conteúdo exclusivo




### User Básico

# Acessar conteúdo aovivo Todos com usuário assinante globoplay básico
#     Dado que sou um usuário assinante globoplay básico
#     E que estou na home
#     Quando clicar no menu "Agora na TV"
#     E clicar no sub menu todos
#     E clicar no aovivo todos
#     Então não vejo o tapume com a mensagem Aproveite

# Acessar conteúdo aovivo Gratuito com usuário assinante globoplay básico
#     Dado que sou um usuário assinante globoplay básico
#     E que estou na home
#     Quando clicar no menu "Agora na TV"
#     E clicar no sub menu gratuitos
#     E clicar no aovivo gratuitos
#     Então não vejo o tapume com a mensagem Aproveite

# Acessar conteúdo aovivo Mais Canais com usuário assinante globoplay básico
#     Dado que sou um usuário assinante globoplay básico
#     E que estou na home
#     Quando clicar no menu "Agora na TV"
#     E clicar no sub menu maiscanais
#     E clicar no aovivo maiscanais
#     Então vejo o tapume com a mensagem Conteúdo exclusivo

# Acessar conteúdo aovivo Filmes com usuário assinante globoplay básico
#     Dado que sou um usuário assinante globoplay básico
#     E que estou na home
#     Quando clicar no menu "Agora na TV"
#     E clicar no sub menu filmes
#     E clicar no aovivo megapix
#     Então vejo o tapume com a mensagem Conteúdo exclusivo

# Acessar conteúdo aovivo Esportes com usuário assinante globoplay básico
#     Dado que sou um usuário assinante globoplay básico
#     E que estou na home
#     Quando clicar no menu "Agora na TV"
#     E clicar no sub menu esportes
#     E clicar no aovivo sportv
#     Então vejo o tapume com a mensagem Conteúdo exclusivo

# Acessar conteúdo aovivo Jornalismo com usuário assinante globoplay básico
#     Dado que sou um usuário assinante globoplay básico
#     E que estou na home
#     Quando clicar no menu "Agora na TV"
#     E clicar no sub menu jornalismo
#     E clicar no aovivo jornalismo
#     Então não vejo o tapume com a mensagem Aproveite

# Acessar conteúdo aovivo Infantil com usuário assinante globoplay básico
#     Dado que sou um usuário assinante globoplay básico
#     E que estou na home
#     Quando clicar no menu "Agora na TV"
#     E clicar no sub menu infantil
#     E clicar no aovivo gloob
#     Então vejo o tapume com a mensagem Conteúdo exclusivo


### User +Canais

# Acessar conteúdo aovivo Todos com usuário assinante globoplay Canais Ao Vivo
#     Dado que sou um usuário assinante globoplay Canais Ao Vivo
#     E que estou na home
#     Quando clicar no menu "Agora na TV"
#     E clicar no sub menu todos
#     E clicar no aovivo todos
#     Então não vejo o tapume com a mensagem Aproveite

# Acessar conteúdo aovivo Gratuito com usuário assinante globoplay Canais Ao Vivo
#     Dado que sou um usuário assinante globoplay Canais Ao Vivo
#     E que estou na home
#     Quando clicar no menu "Agora na TV"
#     E clicar no sub menu gratuitos
#     E clicar no aovivo gratuitos
#     Então não vejo o tapume com a mensagem Aproveite

# Acessar conteúdo aovivo Mais Canais com usuário assinante globoplay Canais Ao Vivo
#     Dado que sou um usuário assinante globoplay Canais Ao Vivo
#     E que estou na home
#     Quando clicar no menu "Agora na TV"
#     E clicar no sub menu maiscanais
#     E clicar no aovivo maiscanais
#     Então não vejo o tapume com a mensagem Conteúdo exclusivo

# Acessar conteúdo aovivo Filmes com usuário assinante globoplay Canais Ao Vivo
#     Dado que sou um usuário assinante globoplay Canais Ao Vivo
#     E que estou na home
#     Quando clicar no menu "Agora na TV"
#     E clicar no sub menu filmes
#     E clicar no aovivo megapix
#     Então não vejo o tapume com a mensagem Conteúdo exclusivo

# Acessar conteúdo aovivo Esportes com usuário assinante globoplay Canais Ao Vivo
#     Dado que sou um usuário assinante globoplay Canais Ao Vivo
#     E que estou na home
#     Quando clicar no menu "Agora na TV"
#     E clicar no sub menu esportes
#     E clicar no aovivo sportv
#     Então não vejo o tapume com a mensagem Conteúdo exclusivo

# Acessar conteúdo aovivo Jornalismo com usuário assinante globoplay Canais Ao Vivo
#     Dado que sou um usuário assinante globoplay Canais Ao Vivo
#     E que estou na home
#     Quando clicar no menu "Agora na TV"
#     E clicar no sub menu jornalismo
#     E clicar no aovivo jornalismo
#     Então não vejo o tapume com a mensagem Aproveite

# Acessar conteúdo aovivo Infantil com usuário assinante globoplay Canais Ao Vivo
#     Dado que sou um usuário assinante globoplay Canais Ao Vivo
#     E que estou na home
#     Quando clicar no menu "Agora na TV"
#     E clicar no sub menu infantil
#     E clicar no aovivo gloob
#     Então não vejo o tapume com a mensagem Conteúdo exclusivo


# Navegar no troca de canais
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando clicar no menu "Agora na TV"
#     E clicar no sub menu todos
#     Então troco o canal selecionado

# Acessar o EPG pelo link programação
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando clicar no menu "Agora na TV"
#     E clicar no sub menu todos
#     E clicar no link programação
#     Então vejo a tela do EPG
