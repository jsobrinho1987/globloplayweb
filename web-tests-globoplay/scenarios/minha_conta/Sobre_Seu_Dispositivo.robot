*** Settings ***
Documentation   Acesso a tela de informações sobre o dispositivo utilizado

Default Tags    Sobre sua TV

# IMPORT DE VARIÁVEIS DE OUTROS ARQUIVOS
Resource            ${EXECDIR}/environment.robot

# O QUE FAZER ANTES DA EXECUÇÃO DOS TESTES
Suite Setup         Before Suite

# O QUE FAZER ANTES DE CADA UM DOS TESTES - ABRIR NAVEGADOR
Test Setup          Before Scenario

# O QUE FAZER APÓS CADA UM DOS TESTES - FECHAR NAVEGADOR
Test Teardown       After Scenario

*** Test Cases ***
Acessar o submenu sobre seu dispositivo com um usuário anônimo
    Dado que sou um usuário anônimo
    E que estou na home
    Quando clicar no menu "Minha Conta"
    E clicar no submenu "Sobre seu dispositivo"
    ENTÃO a página sobre seu dispositivo deve ser exibida


Acessar o submenu sobre seu dispositivo com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    E que estou na home
    Quando clicar no menu "Minha Conta"
    E clicar no submenu "Sobre seu dispositivo"
    ENTÃO a página sobre seu dispositivo deve ser exibida