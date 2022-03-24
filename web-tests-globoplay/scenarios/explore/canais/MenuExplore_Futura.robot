*** Settings ***

Resource       /Users/thalias/Documents/menu_explore/script/keywords.robot
Resource       /Users/thalias/Documents/menu_explore/keywords/variables.robot
Resource       /Users/thalias/Documents/menu_explore/config/BDD-pt-br.robot
Test Teardown  Close Browser

*** Test Case ***
# Solicitação de login ao acessar o Futura através do "Assista ao vivo"
Solicitar o login ao acessar o Futura no "Agora na TV" com um usuário anônimo através do "Assista ao vivo"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Futura" no "Assista ao vivo"
  E selecionar "Assista agora" em "Agora na Tv"
  Então devo ver a solicitação de login com a Conta Globo

# Localizar o banner do "Futura" através de "Canais"
 Acessar o Futura através de "Canais" com um usuário anônimo e localizar o banner
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Futura" em "Canais"
  Então o banner deste canal deve estar visível

# Solicitação de login ao acessar o Futura através de "Canais"
Solicitar o login ao acessar o Futura no "Agora na TV" com um usuário anônimo através de "Canais"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Futura" em "Canais"
  E selecionar "Assista" no banner
  E selecionar "Assista agora" em "Agora na Tv"
  Então devo ver a solicitação de login com a Conta Globo

# Acessar o "Veja Mais" do Futura
Acessar o Futura através de "Canais" com um usuário anônimo e localizar "Veja mais"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Futura" em "Canais"
  Então devo conseguir localizar "Ver Todos"
