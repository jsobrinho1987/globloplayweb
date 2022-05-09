*** Settings ***
Documentation   Acesso tela de Explore e valida opções

# Default Tags    Ajuda  Minha Conta

# IMPORT DE VARIÁVEIS DE OUTROS ARQUIVOS
Resource            ${EXECDIR}/../../../environment.robot

# O QUE FAZER ANTES DA EXECUÇÃO DOS TESTES
Suite Setup         Before Suite

# O QUE FAZER ANTES DE CADA UM DOS TESTES - ABRIR NAVEGADOR
Test Setup          Before Scenario

# O QUE FAZER APÓS CADA UM DOS TESTES - FECHAR NAVEGADOR
Test Teardown       After Scenario

*** Test Case ***
# Componentes do menu Explore
Localizar o componente "Categorias" no menu "Explore"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  Então o texto "Categorias" deve estar visível

Localizar o componente "Podcasts" no menu "Explore"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  Então o texto "Podcasts" deve estar visível

Localizar o componente "Canais" no menu "Explore"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  Então o texto "Canais" deve estar visível
