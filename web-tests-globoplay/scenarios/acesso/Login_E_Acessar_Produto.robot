*** Settings ***
Documentation       Login E Acessar Produto

Default Tags        Perfil    Login   Categorias  Título  Episódios

# IMPORT DE VARIÁVEIS DE OUTROS ARQUIVOS
Resource            ${EXECDIR}/environment.robot

# O QUE FAZER ANTES DA EXECUÇÃO DOS TESTES
Suite Setup         Before Suite

# O QUE FAZER ANTES DE CADA UM DOS TESTES - ABRIR NAVEGADOR
Test Setup          Before Scenario

# O QUE FAZER APÓS CADA UM DOS TESTES - FECHAR NAVEGADOR
Test Teardown       After Scenario



*** Test Cases ***
Acessar os episódios do produto com um usuário anônimo
    Dado que sou um usuário anônimo
    E que estou na home
    Quando clicar no menu "Explore"
    E clicar em "Categorias"
    E clicar na categoria series
    E acessar uma série
    E acessar a lista de episódios
    Então a tag "assinantes" deve estar visível


Acessar os episódios do produto com um usuário free e verificar a presença da tag "assinante"
    Dado que sou um usuário free
    E que estou na home
    Quando clicar no menu "Explore"
    E clicar em "Categorias"
    E clicar na categoria series
    E acessar uma série
    E acessar a lista de episódios
    Então a tag "assinantes" deve estar visível


Acessar os episódios do produto com um usuário assinante globoplay básico e verificar a ausência da tag "assinante"
    Dado que sou um usuário assinante globoplay básico
    E que estou na home
    Quando clicar no menu "Explore"
    E clicar em "Categorias"
    E clicar na categoria series
    E acessar uma série
    E acessar a lista de episódios
   Então a tag "assinantes" não deve estar visível


Acessar os episódios do produto com um usuário assinante globoplay canais ao vivo e verificar a ausência da tag "assinante"
    Dado que sou um usuário assinante globoplay canais ao vivo
    E que estou na home
    Quando clicar no menu "Explore"
    E clicar em "Categorias"
    E clicar na categoria series
    E acessar uma série
    E acessar a lista de episódios
    Então a tag "assinantes" não deve estar visível


Acessar os episódios do produto com um usuário assinante globoplay básico inadimplente e verificar a presença da tag "assinante"
    Dado que sou um usuário assinante globoplay inadimplente
    E que estou na home
    Quando clicar no menu "Explore"
    E clicar em "Categorias"
    E clicar na categoria series
    E acessar uma série
    E acessar a lista de episódios
    Então a tag "assinantes" deve estar visível



