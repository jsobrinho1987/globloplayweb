*** Settings ***
Documentation   Acesso a tela minha lista

Default Tags    Minha Lista

# IMPORT DE VARIÁVEIS DE OUTROS ARQUIVOS
Resource            ${EXECDIR}/environment.robot

# O QUE FAZER ANTES DA EXECUÇÃO DOS TESTES
Suite Setup         Before Suite

# O QUE FAZER ANTES DE CADA UM DOS TESTES - ABRIR NAVEGADOR
Test Setup          Before Scenario

# O QUE FAZER APÓS CADA UM DOS TESTES - FECHAR NAVEGADOR
Test Teardown       After Scenario

*** Test Cases ***
Acessar o submenu minha lista com um usuário assinante globoplay básico
    DADO que sou um usuário assinante globoplay básico
    E que estou na home
    E que estou na home
    QUANDO clicar no menu "Minha Conta"
    E clicar no submenu "Minha Lista"
    ENTÃO a página minha lista deve ser exibida


Incluir um título na minha lista com um usuário assinante globoplay básico
    DADO que sou um usuário assinante globoplay básico
    E que estou na home
    QUANDO acessar um título
    E incluir um título na minha lista
    E clicar em voltar
    E acessar a minha lista
    ENTÃO o título deve estar listado


Excluir um título na minha lista com um usuário assinante globoplay básico
    DADO que sou um usuário assinante globoplay básico
    E que estou na home
    QUANDO acessar a minha lista
    E acessar um título da minha lista
    E remover um título da minha lista
    E clicar em voltar
    ENTÃO o título não deve estar listado


Excluir todos os títulos da minha lista
    Dado que sou um usuário assinante globoplay básico
    E que estou na home
    QUANDO acessar a minha lista
    E esvaziar a minha lista
    Então a minha lista deve estar vazia