*** Settings ***

Documentation  Validação dos elementos de Infantil

# IMPORT DE VARIÁVEIS DE OUTROS ARQUIVOS
Resource            ${EXECDIR}/web-tests-globoplay/environment.robot

# O QUE FAZER ANTES DA EXECUÇÃO DOS TESTES
Suite Setup         Before Suite

# O QUE FAZER ANTES DE CADA UM DOS TESTES - ABRIR NAVEGADOR
Test Setup          Before Scenario

# O QUE FAZER APÓS CADA UM DOS TESTES - FECHAR NAVEGADOR
Test Teardown       After Scenario

*** Test Case ***
# # Localizar o banner de "Infantil"
# Acessar o Infantil pelo menu Explore com um usuário anônimo e localizar o banner
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Infantil"
#   Então o banner deve estar visível

# # Localizar o botão "Assine já" ao clicar em "Veja Mais" do filme infantil recomendado no banner
# Localizar o botão "Assine já" ao acessar o "Veja Mais" do filme infantil recomendado através do menu Explore com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Infantil"
#   E selecionar "Veja Mais"
#   Então devo conseguir ver o botão "Assine já"

# Validação dos Trilhos de Infantil
Validar exibição do trilho "Só no Globoplay" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Séries"
  Então devo conseguir localizar o trilho "Só no Globoplay"
  E realiza a validação do grid do trilho "Só no Globoplay"

Validar exibição do trilho "Acabaram de chegar" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Séries"
  Então devo conseguir localizar o trilho "Acabaram de chegar"
  E realiza a validação do grid do trilho "Acabaram de chegar"

Validar exibição do trilho "Os mais vistos pela galera!" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Séries"
  Então devo conseguir localizar o trilho "Os mais vistos pela galera!"
  E realiza a validação do grid do trilho "Os mais vistos pela galera!"

Validar exibição do trilho "Personagens" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Séries"
  Então devo conseguir localizar o trilho "Personagens"
  E realiza a validação do grid do trilho "Personagens"

Validar exibição do trilho "Filmes" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Séries"
  Então devo conseguir localizar o trilho "Filmes"
  E realiza a validação do grid do trilho "Filmes"

Validar exibição do trilho "Para crianças mais novas" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Séries"
  Então devo conseguir localizar o trilho "Para crianças mais novas"
  E realiza a validação do grid do trilho "Para crianças mais novas"

Validar exibição do trilho "Mundo da Barbie" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Séries"
  Então devo conseguir localizar o trilho "Mundo da Barbie"
  E realiza a validação do grid do trilho "Mundo da Barbie"

Validar exibição do trilho "Pokémon" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Séries"
  Então devo conseguir localizar o trilho "Pokémon"
  E realiza a validação do grid do trilho "Pokémon"

Validar exibição do trilho "Assista ao Vivo" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Séries"
  Então devo conseguir localizar o trilho "Assista ao Vivo"
  E realiza a validação do grid do trilho "Assista ao Vivo"

Validar exibição do trilho "Heróis de Lego" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Séries"
  Então devo conseguir localizar o trilho "Heróis de Lego"
  E realiza a validação do grid do trilho "Heróis de Lego"

Validar exibição do trilho "Para crianças mais velhas" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Séries"
  Então devo conseguir localizar o trilho "Para crianças mais velhas"
  E realiza a validação do grid do trilho "Para crianças mais velhas"

Validar exibição do trilho "Superpoderosos" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Séries"
  Então devo conseguir localizar o trilho "Superpoderosos"
  E realiza a validação do grid do trilho "Superpoderosos"

Validar exibição do trilho "Trabalho em equipe" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Séries"
  Então devo conseguir localizar o trilho "Trabalho em equipe"
  E realiza a validação do grid do trilho "Trabalho em equipe"

Validar exibição do trilho "Episódios curtos" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Séries"
  Então devo conseguir localizar o trilho "Episódios curtos"
  E realiza a validação do grid do trilho "Episódios curtos"

Validar exibição do trilho "Personagens clássicos" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Séries"
  Então devo conseguir localizar o trilho "Personagens clássicos"
  E realiza a validação do grid do trilho "Personagens clássicos"

Validar exibição do trilho "Animais falantes" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Séries"
  Então devo conseguir localizar o trilho "Animais falantes"
  E realiza a validação do grid do trilho "Animais falantes"

Validar exibição do trilho "Meninas no comando" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Séries"
  Então devo conseguir localizar o trilho "Meninas no comando"
  E realiza a validação do grid do trilho "Meninas no comando"

Validar exibição do trilho "Para assistir em família" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Séries"
  Então devo conseguir localizar o trilho "Para assistir em família"
  E realiza a validação do grid do trilho "Para assistir em família"

Validar exibição do trilho "Podcasts" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Séries"
  Então devo conseguir localizar o trilho "Podcasts"
  E realiza a validação do grid do trilho "Podcasts"

Validar exibição do trilho "Ver todos" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Séries"
  Então devo conseguir localizar o trilho "Ver todos"
  E realiza a validação do grid do trilho "Ver todos"
