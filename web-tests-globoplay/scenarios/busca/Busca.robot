*** Settings ***
Documentation   Busca de títulos

Default Tags    Busca

# IMPORT DE VARIÁVEIS DE OUTROS ARQUIVOS
Resource            ${EXECDIR}/environment.robot

# O QUE FAZER ANTES DA EXECUÇÃO DOS TESTES
Suite Setup         Before Suite

# O QUE FAZER ANTES DE CADA UM DOS TESTES - ABRIR NAVEGADOR
Test Setup          Before Scenario

# O QUE FAZER APÓS CADA UM DOS TESTES - FECHAR NAVEGADOR
Test Teardown       After Scenario

*** Test Cases ***
Acessar a tela de busca e realizar uma busca que retorne títulos com um usuário anônimo
    Dado que sou um usuário anônimo
    E que estou na home
    Quando clicar no menu "Busca"
    #E buscar o termo globo
    E buscar o termo caldeirao
    Então retornará o resultado correto

Acessar a tela de busca e realizar uma busca que retorne títulos com um usuário free
    Dado que sou um usuário free
    E que estou na home
    Quando clicar no menu "Busca"
    #E buscar o termo globo
    E buscar o termo caldeirao
    Então retornará o resultado correto

Acessar a tela de busca e realizar uma busca que retorne títulos com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    E que estou na home
    Quando clicar no menu "Busca"
    #E buscar o termo globo
    E buscar o termo caldeirao
    Então retornará o resultado correto

Acessar a tela de busca e realizar uma busca que não retorne títulos com um usuário anônimo
    Dado que sou um usuário anônimo
    E que estou na home
    Quando clicar no menu "Busca"
    E buscar o termo dstjjhffdrt
   Então retornará o resultado correto

Acessar a tela de busca e realizar uma busca que não retorne títulos com um usuário free
    Dado que sou um usuário free
    E que estou na home
    Quando clicar no menu "Busca"
    E buscar o termo dstjjhffdrt
    Então retornará o resultado correto

Acessar a tela de busca e realizar uma busca que não retorne títulos com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    E que estou na home
    Quando clicar no menu "Busca"
    E buscar o termo dstjjhffdrt
    Então retornará o resultado correto
