*** Settings ***

Resource       /Users/thalias/Documents/menu_explore/script/keywords.robot
Resource       /Users/thalias/Documents/menu_explore/keywords/variables.robot
Resource       /Users/thalias/Documents/menu_explore/config/BDD-pt-br.robot
Test Teardown  Close Browser

*** Test Case ***
# Localizar o banner de "Filmes"
Acessar os Filmes pelo menu Explore com um usuário anônimo e localizar o banner
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então o banner deve estar visível

# Localizar o botão "Assine já" ao clicar em "Veja Mais" do filme recomendado no banner
Localizar o botão "Assine já" ao acessar o "Veja Mais" do filme recomendado através do menu Explore com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  E selecionar "Veja Mais"
  Então devo conseguir ver o botão "Conheça o plano"

# Localizar "Todos os filmes"
Acessar os Filmes pelo menu Explore com um usuário anônimo e localizar "Todos os filmes"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar "Todos os filmes"
