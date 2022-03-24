*** Settings ***

Resource       /Users/thalias/Documents/menu_explore/script/keywords.robot
Resource       /Users/thalias/Documents/menu_explore/keywords/variables.robot
Resource       /Users/thalias/Documents/menu_explore/config/BDD-pt-br.robot
Test Teardown  Close Browser

*** Test Case ***
# Localizar o banner de "Séries"
Acessar as Séries pelo menu Explore com um usuário anônimo e localizar o banner
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Séries"
  Então o banner deve estar visível

# Localizar o botão "Assine já" ao clicar em "Veja Mais" da série recomendada no banner
Localizar o botão "Assine já" ao acessar o "Veja Mais" da série recomendada através do menu Explore com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Séries"
  E selecionar "Veja Mais"
  Então devo conseguir ver o botão "Assine já"

# Localizar "Todas as séries"
Acessar as Séries pelo menu Explore com um usuário anônimo e localizar "Todas as séries"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Séries"
  Então devo conseguir localizar "Todas as séries"
