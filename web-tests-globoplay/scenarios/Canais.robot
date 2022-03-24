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
Acessar canal Globo com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Canais"
    E clicar no canal globo

Acessar canal Multishow com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Canais"
    E clicar no canal multishow

Acessar canal Globo News com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Canais"
    E clicar no canal globonews

Acessar canal Sportv com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Canais"
    E clicar no canal sportv

Acessar canal Gnt com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Canais"
    E clicar no canal gnt

Acessar canal Viva com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Canais"
    E clicar no canal viva

Acessar canal Gloob com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Canais"
    E clicar no canal gloob

Acessar canal Gloobinho com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Canais"
    E clicar no canal gloobinho

Acessar canal Megapix com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Canais"
    E clicar no canal megapix

Acessar canal Universal com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Canais"
    E clicar no canal universal

Acessar canal Brasil com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Canais"
    E clicar no canal canalbrasil

Acessar canal Off com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Canais"
    E clicar no canal canaloff

Acessar canal Bis com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Canais"
    E clicar no canal bis

Acessar canal Mais com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Canais"
    E clicar no canal mais

Acessar canal Futura com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Canais"
    E clicar no canal futura

Acessar canal Premiere com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Canais"
    E clicar no canal premiere

Acessar canal Combate com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Canais"
    E clicar no canal combate