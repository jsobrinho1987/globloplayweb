*** Settings ***

Resource       /Users/thalias/Documents/menu_explore/script/keywords.robot
Resource       /Users/thalias/Documents/menu_explore/keywords/variables.robot
Resource       /Users/thalias/Documents/menu_explore/config/BDD-pt-br.robot
Test Teardown  Close Browser

*** Test Case ***

# Localizar o banner de "Documentários"
Acessar os Documentários pelo menu Explore com um usuário anônimo e localizar o banner
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então o banner deve estar visível

# Localizar o botão "Assine já" ao clicar em "Veja Mais" do Documentário recomendado no banner
Localizar o botão "Assine já" ao acessar o "Veja Mais" do documentário recomendado através do menu Explore com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  E selecionar "Veja Mais"
  Então devo conseguir ver o botão "Assine já"

# # Localizar "Todos os documentários" (Não contém o trilho)
# Acessar os Documentários pelo menu Explore com um usuário anônimo e localizar "Todos os documentários"
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Documentários"
#   Então devo conseguir localizar "Todos os documentários"
