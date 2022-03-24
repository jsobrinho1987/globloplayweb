*** Settings ***
Documentation       Trocar Conta

Default Tags        Trocar Conta    Login

# IMPORT DE VARIÁVEIS DE OUTROS ARQUIVOS
Resource            ${EXECDIR}/environment.robot

# O QUE FAZER ANTES DA EXECUÇÃO DOS TESTES
Suite Setup         Before Suite

# O QUE FAZER ANTES DE CADA UM DOS TESTES - ABRIR NAVEGADOR
Test Setup          Before Scenario

# O QUE FAZER APÓS CADA UM DOS TESTES - FECHAR NAVEGADOR
Test Teardown       After Scenario



*** Test Cases ***
Trocar conta anônima para uma conta logada
    DADO que sou um usuário assinante globoplay básico
    E que estou na home
    QUANDO clicar no menu "Minha Conta"
    E trocar conta para user anônimo
    E clicar no menu "Minha Conta"
    E trocar conta para user logado
    E clicar no menu "Minha Conta"
    ENTÃO o usuário deve continuar logado


Trocar conta logada para uma conta anônima
    DADO que sou um usuário assinante globoplay básico
    E que estou na home
    QUANDO clicar no menu "Minha Conta"
    E trocar conta para user anônimo
    E clicar no menu "Minha Conta"
    ENTÃO o usuário deve ser deslogado


Trocar conta logada para outra conta logada
    DADO que sou um usuário assinante globoplay básico
    E que estou na home
    E que sou um usuário assinante globoplay canais ao vivo
    E clicar no menu "Minha Conta"
    E clicar em "Trocar Conta"
    E selecionar um usuário
    E clicar no menu "Minha Conta"
    ENTÃO o usuário deve continuar logado