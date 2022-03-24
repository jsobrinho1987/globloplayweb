*** Settings ***
Documentation       Logout

Default Tags        Login   Logout

# IMPORT DE VARIÁVEIS DE OUTROS ARQUIVOS
Resource            ${EXECDIR}/environment.robot

# O QUE FAZER ANTES DA EXECUÇÃO DOS TESTES
Suite Setup         Before Suite

# O QUE FAZER ANTES DE CADA UM DOS TESTES - ABRIR NAVEGADOR
Test Setup          Before Scenario

# O QUE FAZER APÓS CADA UM DOS TESTES - FECHAR NAVEGADOR
Test Teardown       After Scenario



*** Test Cases ***
Logout de conta via submenu Perfil - Cancelar ação de logout
    DADO que sou um usuário free
    E que estou na home
    QUANDO clicar no menu "Minha Conta"
    E clicar em "Sair"
    E clicar em "Não"
    ENTÃO o usuário deve continuar logado


Logout de conta via submenu Perfil - Confirmar ação de logout
    DADO que sou um usuário free
    E que estou na home
    QUANDO clicar no menu "Minha Conta"
    E clicar em "Sair"
    E clicar em "Sim"
    ENTÃO o usuário deve ser deslogado


Logout de conta via tela de troca de conta - Cancelar ação de logout
    DADO que sou um usuário free
    E que estou na home
    QUANDO clicar no menu "Minha Conta"
    E clicar em "Trocar Conta"
    E clicar em "Sair"
    E clicar em "Não"
    ENTÃO o usuário deve continuar logado


Logout de conta via tela de troca de conta - Confirmar ação de logout
    DADO que sou um usuário free
    que estou na home
    QUANDO clicar no menu "Minha Conta"
    E clicar em "Trocar Conta"
    E clicar em "Sair"
    E clicar em "Sim"
    ENTÃO o usuário deve ser deslogado