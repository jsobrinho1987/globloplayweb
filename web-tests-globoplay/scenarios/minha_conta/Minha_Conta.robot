*** Settings ***
Documentation   Acesso a tela/submenu minha conta

Default Tags    Minha Conta

# IMPORT DE VARIÁVEIS DE OUTROS ARQUIVOS
Resource            ${EXECDIR}/environment.robot

# O QUE FAZER ANTES DA EXECUÇÃO DOS TESTES
Suite Setup         Before Suite

# O QUE FAZER ANTES DE CADA UM DOS TESTES - ABRIR NAVEGADOR
Test Setup          Before Scenario

# O QUE FAZER APÓS CADA UM DOS TESTES - FECHAR NAVEGADOR
Test Teardown       After Scenario

*** Test Cases ***
Acessar o submenu minha conta com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    E que estou na home
    Quando clicar no menu "Minha Conta"
    E clicar no submenu "Minha Conta"
    ENTÃO a página minha conta deve ser exibida