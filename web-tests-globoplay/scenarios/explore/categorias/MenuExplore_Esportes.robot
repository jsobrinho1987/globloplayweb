*** Settings ***

Resource       /Users/thalias/Documents/menu_explore/script/keywords.robot
Resource       /Users/thalias/Documents/menu_explore/keywords/variables.robot
Resource       /Users/thalias/Documents/menu_explore/config/BDD-pt-br.robot
Test Teardown  Close Browser

*** Test Case ***
# Localizar o banner de "Esportes"
Acessar Esportes pelo menu Explore com um usuário anônimo e localizar o banner
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Esportes"
  Então o banner deve estar visível

# Localizar o texto "Conteúdo exclusivo gratuito para contas cadastradas" ao clicar em "Assista" o Esporte Espetacular
Localizar a solicitação de login/cadastramento ao acessar o "Esporte Espetacular" através do menu Explore com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Esportes"
  E selecionar "Esporte Espetacular"
  E selecionar "Assista"
  Então devo conseguir ver o texto "Conteúdo exclusivo gratuito para contas cadastradas"

# Localizar "Ver todos"
Acessar Esportes pelo menu Explore com um usuário anônimo e localizar "Ver todos"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Esportes"
  E selecionar "Veja Mais" em Ver Todos
  Então devo conseguir localizar "Esportes - Todos os títulos"
