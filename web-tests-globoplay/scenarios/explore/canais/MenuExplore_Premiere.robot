*** Settings ***

Resource       /Users/thalias/Documents/menu_explore/script/keywords.robot
Resource       /Users/thalias/Documents/menu_explore/keywords/variables.robot
Resource       /Users/thalias/Documents/menu_explore/config/BDD-pt-br.robot
Test Teardown  Close Browser

*** Test Case ***
# Localizar o título "Escolha seu plano" ao clicar no botão "Eu quero" no "Assista ao vivo" do Premiere
Acessar o Premiere através de "Canais" com um usuário anônimo e localizar o texto "Escolha seu plano"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Premiere" no "Assista ao vivo"
  E selecionar "Escolha seu plano"
  Então o título "Escolha seu plano" deve estar visível

# Localizar o banner do "Premiere" através de "Canais"
 Acessar o Premiere através de "Canais" com um usuário anônimo e localizar o banner
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Premiere" em "Canais"
  Então o banner deste canal deve estar visível

# Localizar o título "Escolha seu plano" ao clicar no botão "Conheça o novo plano" - "Eu quero" em "Canais" do Premiere
Acessar o Premiere no "Agora na TV" através de "Canais" com um usuário anônimo e localizar o texto "Escolha seu plano"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Premiere" em "Canais"
  E selecionar "Assista" no banner
  E selecionar "Assine Já"
  E selecionar "Escolha seu plano"
  Então o título "Escolha seu plano" deve estar visível

# Localizar o título "Escolha seu plano" ao clicar no botão "Eu quero" no "Agora no Premiere"
Acessar o Premiere através de "Canais" com um usuário anônimo e localizar o título "Escolha seu plano" no "Agora no Premiere"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Premiere" em "Canais"
  E selecionar "Agora no Premiere"
  E selecionar "Escolha seu plano"
  Então o título "Escolha seu plano" deve estar visível
