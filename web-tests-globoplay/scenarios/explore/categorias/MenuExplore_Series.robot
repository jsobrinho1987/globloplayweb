*** Settings ***

Documentation  Validação dos elementos de Séries

# IMPORT DE VARIÁVEIS DE OUTROS ARQUIVOS
Resource            ${EXECDIR}/web-tests-globoplay/environment.robot

# O QUE FAZER ANTES DA EXECUÇÃO DOS TESTES
Suite Setup         Before Suite

# O QUE FAZER ANTES DE CADA UM DOS TESTES - ABRIR NAVEGADOR
Test Setup          Before Scenario

# O QUE FAZER APÓS CADA UM DOS TESTES - FECHAR NAVEGADOR
Test Teardown       After Scenario

*** Test Case ***
# # Localizar o banner de "Séries"
# Acessar as Séries pelo menu Explore com um usuário anônimo e localizar o banner
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Séries"
#   Então o banner deve estar visível

# # Localizar o botão "Assine já" ao clicar em "Veja Mais" da série recomendada no banner
# Localizar o botão "Assine já" ao acessar o "Veja Mais" da série recomendada através do menu Explore com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Séries"
#   E selecionar "Veja Mais"
#   Então devo conseguir ver o botão "Assine já"

# Validação dos Trilhos de Série
Validar exibição do trilho "Escolha pelo gênero" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Séries"
  Então devo conseguir localizar o trilho "Escolha pelo gênero"
  E realiza a validação do grid do trilho "Escolha pelo gênero"

Validar exibição do trilho "Novidades" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Séries"
  Então devo conseguir localizar o trilho "Novidades"
  E realiza a validação do grid do trilho "Novidades"

Validar exibição do trilho "Originais Globoplay" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Séries"
  Então devo conseguir localizar o trilho "Originais Globoplay"
  E realiza a validação do grid do trilho "Originais Globoplay"

Validar exibição do trilho "Comédia" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Séries"
  Então devo conseguir localizar o trilho "Comédia"
  E realiza a validação do grid do trilho "Comédia"

Validar exibição do trilho "Ação" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Séries"
  Então devo conseguir localizar o trilho "Ação"
  E realiza a validação do grid do trilho "Ação"

Validar exibição do trilho "Séries brasileiras" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Séries"
  Então devo conseguir localizar o trilho "Séries brasileiras"
  E realiza a validação do grid do trilho "Séries brasileiras"

Validar exibição do trilho "Exclusivo Globoplay" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Séries"
  Então devo conseguir localizar o trilho "Exclusivo Globoplay"
  E realiza a validação do grid do trilho "Exclusivo Globoplay"

Validar exibição do trilho "Séries médicas" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Séries"
  Então devo conseguir localizar o trilho "Séries médicas"
  E realiza a validação do grid do trilho "Séries médicas"

Validar exibição do trilho "Séries de época" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Séries"
  Então devo conseguir localizar o trilho "Séries de época"
  E realiza a validação do grid do trilho "Séries de época"

Validar exibição do trilho "Premiadas" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Séries"
  Então devo conseguir localizar o trilho "Premiadas"
  E realiza a validação do grid do trilho "Premiadas"

Validar exibição do trilho "Sessão nostalgia" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Séries"
  Então devo conseguir localizar o trilho "Sessão nostalgia"
  E realiza a validação do grid do trilho "Sessão nostalgia"

Validar exibição do trilho "Para ver rapidinho" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Séries"
  Então devo conseguir localizar o trilho "Para ver rapidinho"
  E realiza a validação do grid do trilho "Para ver rapidinho"

Validar exibição do trilho "Sucessos no Globoplay" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Séries"
  Então devo conseguir localizar o trilho "Sucessos no Globoplay"
  E realiza a validação do grid do trilho "Sucessos no Globoplay"

Validar exibição do trilho "Séries completas" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Séries"
  Então devo conseguir localizar o trilho "Séries completas"
  E realiza a validação do grid do trilho "Séries completas"

Validar exibição do trilho "Franquias e spin-offs" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Séries"
  Então devo conseguir localizar o trilho "Franquias e spin-offs"
  E realiza a validação do grid do trilho "Franquias e spin-offs"

Validar exibição do trilho "Mistério" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Séries"
  Então devo conseguir localizar o trilho "Mistério"
  E realiza a validação do grid do trilho "Mistério"

Validar exibição do trilho "Séries da Globo" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Séries"
  Então devo conseguir localizar o trilho "Séries da Globo"
  E realiza a validação do grid do trilho "Séries da Globo"

Validar exibição do trilho "Novas temporadas" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Séries"
  Então devo conseguir localizar o trilho "Novas temporadas"
  E realiza a validação do grid do trilho "Novas temporadas"

Validar exibição do trilho "Para ver de graça" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Séries"
  Então devo conseguir localizar o trilho "Para ver de graça"
  E realiza a validação do grid do trilho "Para ver de graça"

Validar exibição do trilho "Faroeste" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Séries"
  Então devo conseguir localizar o trilho "Faroeste"
  E realiza a validação do grid do trilho "Faroeste"

Validar exibição do trilho "Podcasts" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Séries"
  Então devo conseguir localizar o trilho "Podcasts"
  E realiza a validação do grid do trilho "Podcasts"

Validar exibição do trilho "Todas as séries" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Séries"
  Então devo conseguir localizar o trilho "Todas as séries"
  E realiza a validação do grid do trilho "Todas as séries"
