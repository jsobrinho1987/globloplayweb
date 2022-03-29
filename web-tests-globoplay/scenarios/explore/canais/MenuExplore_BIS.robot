*** Settings ***
Documentation   Acesso tela de Explore e valida opção Podcasts

# Default Tags    Ajuda  Minha Conta

# IMPORT DE VARIÁVEIS DE OUTROS ARQUIVOS
Resource            ${EXECDIR}/web-tests-globoplay/environment.robot

# O QUE FAZER ANTES DA EXECUÇÃO DOS TESTES
Suite Setup         Before Suite

# O QUE FAZER ANTES DE CADA UM DOS TESTES - ABRIR NAVEGADOR
Test Setup          Before Scenario

# O QUE FAZER APÓS CADA UM DOS TESTES - FECHAR NAVEGADOR
Test Teardown       After Scenario

*** Test Case ***
# Localizar o título "Escolha seu plano" ao clicar no botão "Eu quero" no "Assista ao vivo" do BIS
Acessar o BIS através de "Canais" com um usuário anônimo e localizar o texto "Escolha seu plano"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "BIS" no "Assista ao vivo"
  E selecionar "Eu quero"
  Então o título "Escolha seu plano" deve estar visível

# Localizar o banner do "BIS" através de "Canais"
 Acessar o BIS através de "Canais" com um usuário anônimo e localizar o banner
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "BIS" em "Canais"
  Então o banner deste canal deve estar visível

# Localizar o título "Escolha seu plano" ao clicar no botão "Conheça o novo plano" - "Eu quero" em "Canais" do BIS
Acessar o BIS no "Agora na TV" através de "Canais" com um usuário anônimo e localizar o texto "Escolha seu plano"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "BIS" em "Canais"
  E selecionar "Assista" no banner
  E selecionar "Conheça o novo plano"
  E selecionar "Eu quero"
  Então o título "Escolha seu plano" deve estar visível

# Acessar o "Veja Mais" do BIS
Acessar o BIS através de "Canais" com um usuário anônimo e localizar "Veja mais"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "BIS" em "Canais"
  Então devo conseguir localizar "Ver todos"
