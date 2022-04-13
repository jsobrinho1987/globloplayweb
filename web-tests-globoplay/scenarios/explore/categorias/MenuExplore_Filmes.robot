*** Settings ***

Documentation  Validação dos elementos de Filmes

# IMPORT DE VARIÁVEIS DE OUTROS ARQUIVOS
Resource            ${EXECDIR}/web-tests-globoplay/environment.robot

# O QUE FAZER ANTES DA EXECUÇÃO DOS TESTES
Suite Setup         Before Suite

# O QUE FAZER ANTES DE CADA UM DOS TESTES - ABRIR NAVEGADOR
Test Setup          Before Scenario

# O QUE FAZER APÓS CADA UM DOS TESTES - FECHAR NAVEGADOR
Test Teardown       After Scenario

*** Test Case ***
# # Localizar o banner de "Filmes"
# Acessar os Filmes pelo menu Explore com um usuário anônimo e localizar o banner
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Filmes"
#   Então o banner deve estar visível

# # Localizar o botão "Assine já" ao clicar em "Veja Mais" do filme recomendado no banner
# Localizar o botão "Assine já" ao acessar o "Veja Mais" do filme recomendado através do menu Explore com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Filmes"
#   E selecionar "Veja Mais"
#   Então devo conseguir ver o botão "Conheça o plano"

Validar exibição do trilho "Escolha pelo gênero" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar o trilho "Escolha pelo gênero"

Validar exibição do trilho "Grandes sucessos" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar o trilho "Grandes sucessos"
  
Validar exibição do trilho "Novidades" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar o trilho "Novidades"

Validar exibição do trilho "Mais assistidos" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar o trilho "Mais assistidos"

Validar exibição do trilho "Assista Filmes Ao Vivo" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar o trilho "Assista Filmes Ao Vivo"

Validar exibição do trilho "Romance" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar o trilho "Romance"

Validar exibição do trilho "Filmes exclusivos" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar o trilho "Filmes exclusivos"

Validar exibição do trilho "Premiados" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar o trilho "Premiados"

Validar exibição do trilho "Comédia" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar o trilho "Comédia"

Validar exibição do trilho "Animes" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar o trilho "Animes"

Validar exibição do trilho "Tesouros para cinéfilos" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar o trilho "Tesouros para cinéfilos"

Validar exibição do trilho "Cinelists do Telecine" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar o trilho "Cinelists do Telecine"

Validar exibição do trilho "Novos clássicos brasileiros" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar o trilho "Novos clássicos brasileiros"

Validar exibição do trilho "Filmes nacionais" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar o trilho "Filmes nacionais"

Validar exibição do trilho "Já são clássicos" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar o trilho "Já são clássicos"

Validar exibição do trilho "Clássicos do cinema brasileiro" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar o trilho "Clássicos do cinema brasileiro"

Validar exibição do trilho "Infantil" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar o trilho "Infantil"

Validar exibição do trilho "Podcasts" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar o trilho "Podcasts"

Validar exibição do trilho "Todos os filmes" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar o trilho "Todos os filmes"