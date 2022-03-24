*** Settings ***
Documentation   Acesso ao submenu Canais

Default Tags    Canais

# IMPORT DE VARIÁVEIS DE OUTROS ARQUIVOS
Resource            ${EXECDIR}/environment.robot

# O QUE FAZER ANTES DA EXECUÇÃO DOS TESTES
Suite Setup         Before Suite

# O QUE FAZER ANTES DE CADA UM DOS TESTES - ABRIR NAVEGADOR
Test Setup          Before Scenario

# O QUE FAZER APÓS CADA UM DOS TESTES - FECHAR NAVEGADOR
Test Teardown       After Scenario

*** Test Cases ***


### User Anônimo

Acessar conteúdo aovivo Todos com usuário anônimo
    Dado que sou um usuário anônimo
    E que estou na home
    Quando clicar no menu "Agora na TV"
    E clicar no sub menu todos
    E clicar no aovivo todos
    Então vejo o tapume com a mensagem Aproveite

# Acessar conteúdo aovivo Gratuito com usuário anônimo
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando clicar no menu "Agora na TV"
#     E clicar no sub menu gratuitos
#     E clicar no aovivo gratuitos
#     Então vejo o tapume com a mensagem Aproveite

# Acessar conteúdo aovivo Mais Canais com usuário anônimo
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando clicar no menu "Agora na TV"
#     E clicar no sub menu maiscanais
#     E clicar no aovivo maiscanais
#     Então vejo o tapume com a mensagem Conteúdo exclusivo

# Acessar conteúdo aovivo Filmes com usuário anônimo
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando clicar no menu "Agora na TV"
#     E clicar no sub menu filmes
#     E clicar no aovivo megapix
#     Então vejo o tapume com a mensagem Conteúdo exclusivo

# Acessar conteúdo aovivo Esportes com usuário anônimo
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando clicar no menu "Agora na TV"
#     E clicar no sub menu esportes
#     E clicar no aovivo sportv
#     Então vejo o tapume com a mensagem Conteúdo exclusivo

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


Navegar no troca de canais
    Dado que sou um usuário anônimo
    E que estou na home
    Quando clicar no menu "Agora na TV"
    E clicar no sub menu todos
    Então troco o canal selecionado

# Acessar o EPG pelo link programação
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Quando clicar no menu "Agora na TV"
#     E clicar no sub menu todos
#     E clicar no link programação
#     Então vejo a tela do EPG
