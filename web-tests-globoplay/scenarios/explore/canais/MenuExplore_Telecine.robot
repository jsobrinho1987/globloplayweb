*** Settings ***

Documentation   Validação dos elementos de Telecine

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
# Localizar o título "Escolha seu plano" ao clicar no botão "Assine já" no "Assista ao vivo" do Telecine Premium
Acessar o Telecine Premium através de "Canais" com um usuário anônimo e localizar o texto "Escolha seu plano"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Telecine Premium" no "Assista ao vivo"
  E selecionar "Assine já"
  Então o título "Escolha seu plano" deve estar visível

# Localizar o título "Escolha seu plano" ao clicar no botão "Assine já" no "Assista ao vivo" do Telecine Action
Acessar o Telecine Action através de "Canais" com um usuário anônimo e localizar o texto "Escolha seu plano"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Telecine Action" no "Assista ao vivo"
  E selecionar "Assine já"
  Então o título "Escolha seu plano" deve estar visível

# Localizar o título "Escolha seu plano" ao clicar no botão "Assine já" no "Assista ao vivo" do Telecine Touch
Acessar o Telecine Touch através de "Canais" com um usuário anônimo e localizar o texto "Escolha seu plano"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Telecine Touch" no "Assista ao vivo"
  E selecionar "Assine já"
  Então o título "Escolha seu plano" deve estar visível

# Localizar o título "Escolha seu plano" ao clicar no botão "Assine já" no "Assista ao vivo" do Telecine Fun
Acessar o Telecine Fun através de "Canais" com um usuário anônimo e localizar o texto "Escolha seu plano"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Telecine Fun" no "Assista ao vivo"
  E selecionar "Assine já"
  Então o título "Escolha seu plano" deve estar visível

# Localizar o título "Escolha seu plano" ao clicar no botão "Assine já" no "Assista ao vivo" do Telecine Pipoca
Acessar o Telecine Pipoca através de "Canais" com um usuário anônimo e localizar o texto "Escolha seu plano"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Telecine Pipoca" no "Assista ao vivo"
  E selecionar "Assine já"
  Então o título "Escolha seu plano" deve estar visível

# Localizar o título "Escolha seu plano" ao clicar no botão "Assine já" no "Assista ao vivo" do Telecine Cult
Acessar o Telecine Cult através de "Canais" com um usuário anônimo e localizar o texto "Escolha seu plano"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Telecine Cult" no "Assista ao vivo"
  E selecionar "Assine já"
  Então o título "Escolha seu plano" deve estar visível

# Localizar o banner do "Telecine" através de "Canais"
Acessar o Telecine através de "Canais" com um usuário anônimo e localizar o banner
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Telecine" em "Canais"
  Então o banner deste canal deve estar visível

# Localizar o título "Escolha seu plano" ao clicar no botão "Assine já" em "Canais Telecine"
Acessar o Telecine Premium através de "Canais" com um usuário anônimo e localizar o título "Escolha seu plano" em "Canais Telecine"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Telecine" em "Canais"
  E selecionar "Telecine Premium" em "Canais Telecine"
  E selecionar "Assine já"
  Então o título "Escolha seu plano" deve estar visível

# Localizar o título "Escolha seu plano" ao clicar no botão "Assine já" em "Canais Telecine"
Acessar o Telecine Action através de "Canais" com um usuário anônimo e localizar o título "Escolha seu plano" em "Canais Telecine"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Telecine" em "Canais"
  E selecionar "Telecine Action" em "Canais Telecine"
  E selecionar "Assine já"
  Então o título "Escolha seu plano" deve estar visível

# Localizar o título "Escolha seu plano" ao clicar no botão "Assine já" em "Canais Telecine"
Acessar o Telecine Touch através de "Canais" com um usuário anônimo e localizar o título "Escolha seu plano" em "Canais Telecine"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Telecine" em "Canais"
  E selecionar "Telecine Touch" em "Canais Telecine"
  E selecionar "Assine já"
  Então o título "Escolha seu plano" deve estar visível

# Localizar o título "Escolha seu plano" ao clicar no botão "Assine já" em "Canais Telecine"
Acessar o Telecine Fun através de "Canais" com um usuário anônimo e localizar o título "Escolha seu plano" em "Canais Telecine"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Telecine" em "Canais"
  E selecionar "Telecine Fun" em "Canais Telecine"
  E selecionar "Assine já"
  Então o título "Escolha seu plano" deve estar visível

# Localizar o título "Escolha seu plano" ao clicar no botão "Assine já" em "Canais Telecine"
Acessar o Telecine Pipoca através de "Canais" com um usuário anônimo e localizar o título "Escolha seu plano" em "Canais Telecine"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Telecine" em "Canais"
  E selecionar "Telecine Pipoca" em "Canais Telecine"
  E selecionar "Assine já"
  Então o título "Escolha seu plano" deve estar visível

# Localizar o título "Escolha seu plano" ao clicar no botão "Assine já" em "Canais Telecine"
Acessar o Telecine Cult através de "Canais" com um usuário anônimo e localizar o título "Escolha seu plano" em "Canais Telecine"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Telecine" em "Canais"
  E selecionar "Telecine Cult" em "Canais Telecine"
  E selecionar "Assine já"
  Então o título "Escolha seu plano" deve estar visível
