*** Settings ***

Resource       /Users/thalias/Documents/menu_explore/script/keywords.robot
Resource       /Users/thalias/Documents/menu_explore/keywords/variables.robot
Resource       /Users/thalias/Documents/menu_explore/config/BDD-pt-br.robot
Test Teardown  Close Browser

*** Test Case ***
# Localizar o banner de "Infantil"
Acessar o Infantil pelo menu Explore com um usuário anônimo e localizar o banner
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Infantil"
  Então o banner deve estar visível

# Localizar o botão "Assine já" ao clicar em "Veja Mais" do filme infantil recomendado no banner
Localizar o botão "Assine já" ao acessar o "Veja Mais" do filme infantil recomendado através do menu Explore com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Infantil"
  E selecionar "Veja Mais"
  Então devo conseguir ver o botão "Assine já"

# Localizar "Ver todos"
Acessar o Infantil pelo menu Explore com um usuário anônimo e localizar "Ver todos"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Infantil"
  Então devo conseguir localizar "Ver Todos"
