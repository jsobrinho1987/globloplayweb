*** Settings ***

Documentation   Validação dos elementos de Universal+

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
# Localizar o título "Escolha seu plano" ao clicar no botão "Eu quero" no "Assista ao vivo" do Universal TV
Acessar o Universal através de "Canais" com um usuário anônimo e localizar o texto "Escolha seu plano"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Universal TV" no "Assista ao vivo"
  E selecionar "Eu quero"
  Então o título "Escolha seu plano" deve estar visível

# Localizar o título "Escolha seu plano" ao clicar no botão "Eu quero" no "Studio Universal" do Universal
Acessar o Studio Universal através de "Canais" com um usuário anônimo e localizar o texto "Escolha seu plano"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Studio Universal" no "Assista ao vivo"
  E selecionar "Eu quero"
  Então o título "Escolha seu plano" deve estar visível

# Localizar o título "Escolha seu plano" ao clicar no botão "Eu quero" no "Assista ao vivo" do SYFY
Acessar o SYFY através de "Canais" com um usuário anônimo e localizar o texto "Escolha seu plano"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "SYFY" no "Assista ao vivo"
  E selecionar "Eu quero"
  Então o título "Escolha seu plano" deve estar visível

# Localizar o banner do "Universal" através de "Canais"
 Acessar o Universal através de "Canais" com um usuário anônimo e localizar o banner
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Universal+" em "Canais"
  Então o banner deste canal deve estar visível

# Localizar o título "Escolha seu plano" ao clicar no botão "Conheça o novo plano" - "Eu quero" em "Canais" do Universal
Acessar o Universal no "Agora na TV" através de "Canais" com um usuário anônimo e localizar o texto "Escolha seu plano"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Universal+" em "Canais"
  E selecionar "Veja Mais" no banner
  E selecionar "Conheça o plano"
  E selecionar "Eu quero"
  Então o título "Escolha seu plano" deve estar visível

# Localizar o título "Escolha seu plano" ao clicar no botão "Eu quero" no "Universal TV"
Acessar o Universal através de "Canais" com um usuário anônimo e localizar o título "Escolha seu plano" no "Universal TV"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Universal+" em "Canais"
  E selecionar "Universal TV"
  E selecionar "Eu quero"
  Então o título "Escolha seu plano" deve estar visível

# Localizar o título "Escolha seu plano" ao clicar no botão "Eu quero" no "Studio Universal"
Acessar o Universal através de "Canais" com um usuário anônimo e localizar o título "Escolha seu plano" no "Studio Universal"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Universal+" em "Canais"
  E selecionar "Studio Universal"
  E selecionar "Eu quero"
  Então o título "Escolha seu plano" deve estar visível

# Localizar o título "Escolha seu plano" ao clicar no botão "Eu quero" no "SYFY"
Acessar o Universal através de "Canais" com um usuário anônimo e localizar o título "Escolha seu plano" no "SYFY"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Universal+" em "Canais"
  E selecionar "SYFY"
  E selecionar "Eu quero"
  Então o título "Escolha seu plano" deve estar visível

# Acessar o "Veja Mais" do Universal
Acessar o Universal através de "Canais" com um usuário anônimo e localizar "Veja mais"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Universal+" em "Canais"
  Então devo conseguir localizar "Ver todos"
