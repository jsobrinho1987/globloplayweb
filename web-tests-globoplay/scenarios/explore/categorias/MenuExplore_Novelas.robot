*** Settings ***

Resource       /Users/thalias/Documents/menu_explore/script/keywords.robot
Resource       /Users/thalias/Documents/menu_explore/keywords/variables.robot
Resource       /Users/thalias/Documents/menu_explore/config/BDD-pt-br.robot
Test Teardown  Close Browser

*** Test Case ***
# Localizar o banner de "Novelas"
Acessar as Novelas pelo menu Explore com um usuário anônimo e localizar o banner
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Novelas"
  Então o banner deve estar visível

# Localizar o botão "Assine já" ao clicar em "Veja Mais" da novela recomendada no banner
Localizar o botão "Assine já" ao acessar o "Veja Mais" da novela recomendada através do menu Explore com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Novelas"
  E selecionar "Veja Mais"
  Então devo conseguir ver o botão "Assine já"

# Localizar "Todas as novelas"
Acessar as Novelas pelo menu Explore com um usuário anônimo e localizar "Todas as novelas"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Novelas"
  Então devo conseguir localizar "Todas as novelas"
