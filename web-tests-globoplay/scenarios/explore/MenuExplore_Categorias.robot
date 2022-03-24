*** Settings ***
Documentation   Acesso ao menu categoria

Default Tags    Categoria

# IMPORT DE VARIÁVEIS DE OUTROS ARQUIVOS
Resource            ${EXECDIR}/environment.robot

# O QUE FAZER ANTES DA EXECUÇÃO DOS TESTES
Suite Setup         Before Suite

# O QUE FAZER ANTES DE CADA UM DOS TESTES - ABRIR NAVEGADOR
Test Setup          Before Scenario

# O QUE FAZER APÓS CADA UM DOS TESTES - FECHAR NAVEGADOR
Test Teardown       After Scenario

*** Test Cases ***
#Novelas
Acessar as novelas com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Categorias"
    E clicar na categoria novelas
    ENTÃO a página novelas deve ser exibida

#Séries
Acessar as séries com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Categorias"
    E clicar na categoria series
    ENTÃO a página séries deve ser exibida

#filmes
Acessar os filmes com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Categorias"
    E clicar na categoria filmes
    ENTÃO a página filmes deve ser exibida

#infantil
Acessar o conteúdo infantil com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Categorias"
    E clicar na categoria infantil
    ENTÃO a página infantil deve ser exibida

#humor
Acessar o conteúdo humor com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Categorias"
    E clicar na categoria humor
    ENTÃO a página humor deve ser exibida

#variedades
Acessar o conteúdo variedades com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Categorias"
    E clicar na categoria variedades
    ENTÃO a página variedades deve ser exibida

#realities
Acessar os realities com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Categorias"
    E clicar na categoria realities
    ENTÃO a página realities deve ser exibida

#musica
Acessar a página de música com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Categorias"
    E clicar na categoria musica
    ENTÃO a página música deve ser exibida

#documentarios
Acessar a página documentários com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Categorias"
    E clicar na categoria documentarios
    ENTÃO a página documentários deve ser exibida

#jornalismo
Acessar a página jornalismo com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Categorias"
    E clicar na categoria jornalismo
    ENTÃO a página jornalismo deve ser exibida

#esportes
Acessar a página de esportes com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Categorias"
    E clicar na categoria esportes
    ENTÃO a página esportes deve ser exibida

#programas_locais
Acessar a página programas locais com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Categorias"
    E clicar na categoria programas_locais
    ENTÃO a página programas locais deve ser exibida
