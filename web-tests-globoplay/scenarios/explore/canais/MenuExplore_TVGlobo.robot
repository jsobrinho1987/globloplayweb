*** Settings ***

Resource       /Users/thalias/Documents/menu_explore/script/keywords.robot
Resource       /Users/thalias/Documents/menu_explore/keywords/variables.robot
Resource       /Users/thalias/Documents/menu_explore/config/BDD-pt-br.robot
Test Teardown  Close Browser
#Library        Screenshot    screenshots/canais

*** Test Case ***
# Solicitação de login ao acessar a TV Globo através do "Assista ao vivo"
Solicitar o login ao acessar a TV Globo no "Agora na TV" com um usuário anônimo através do "Assista ao vivo"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "TV Globo" no "Assista ao vivo"
  E selecionar "Assista agora" em "Agora na Tv"
  Então devo ver a solicitação de login com a Conta Globo

# Localizar o banner da "TV Globo" através de "Canais"
 Acessar a TV Globo através de "Canais" com um usuário anônimo e localizar o banner
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "TV Globo" em "Canais"
  Então o banner deste canal deve estar visível

# Solicitação de login ao acessar a TV Globo através de "Canais"
Solicitar o login ao acessar a TV Globo no "Agora na TV" com um usuário anônimo através de "Canais"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "TV Globo" em "Canais"
  E selecionar "Assista" no banner
  E selecionar "Assista agora" em "Agora na Tv"
  Então devo ver a solicitação de login com a Conta Globo
