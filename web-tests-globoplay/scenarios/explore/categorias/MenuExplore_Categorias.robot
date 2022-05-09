*** Settings ***

Documentation  Validação dos elementos de Categorias

# IMPORT DE VARIÁVEIS DE OUTROS ARQUIVOS
Resource            ${EXECDIR}/../../../environment.robot

# O QUE FAZER ANTES DA EXECUÇÃO DOS TESTES
Suite Setup         Before Suite

# O QUE FAZER ANTES DE CADA UM DOS TESTES - ABRIR NAVEGADOR
Test Setup          Before Scenario

# O QUE FAZER APÓS CADA UM DOS TESTES - FECHAR NAVEGADOR
Test Teardown       After Scenario

*** Test Case ***
# Localizar os títulos de Categorias
Acessar "Categorias" pelo Menu Explore e localizar o título "Novelas" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  Então o título "Novelas" deve estar visível

Acessar "Categorias" pelo Menu Explore e localizar o título "Séries" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  Então o título "Séries" deve estar visível

Acessar "Filmes" pelo Menu Explore e localizar o título "Filmes" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  Então o título "Filmes" deve estar visível

Acessar "Categorias" pelo Menu Explore e localizar o título "Infantil" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  Então o título "Infantil" deve estar visível

Acessar "Categorias" pelo Menu Explore e localizar o título "Realities" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  Então o título "Realities" deve estar visível

Acessar "Categorias" pelo Menu Explore e localizar o título "Documentários" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  Então o título "Documentários" deve estar visível

Acessar "Categorias" pelo Menu Explore e localizar o título "Variedades" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  Então o título "Variedades" deve estar visível

Acessar "Categorias" pelo Menu Explore e localizar o título "Humor" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  Então o título "Humor" deve estar visível

Acessar "Categorias" pelo Menu Explore e localizar o título "Música" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  Então o título "Música" deve estar visível

Acessar "Categorias" pelo Menu Explore e localizar o título "Esportes" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  Então o título "Esportes" deve estar visível

Acessar "Categorias" pelo Menu Explore e localizar o título "Jornalismo" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  Então o título "Jornalismo" deve estar visível

Acessar "Categorias" pelo Menu Explore e localizar o título "Programas Locais" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  Então o título "Programas Locais" deve estar visível

# Acessar os títulos de Categorias
Acessar "Novelas" pelo Menu Explore através de "Categorias" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Novelas"
  Então devo ser redirecionado para a página "Novelas"

Acessar "Séries" pelo Menu Explore através de "Categorias" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Séries"
  Então devo ser redirecionado para a página "Séries"

Acessar "Filmes" pelo Menu Explore através de "Categorias" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo ser redirecionado para a página "Filmes"

Acessar "Infantil" pelo Menu Explore através de "Categorias" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Infantil"
  Então devo ser redirecionado para a página "Infantil"

# Cenário novo
Acessar "BBB" pelo Menu Explore através de "Categorias" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "BBB"
  Então devo ser redirecionado para a página "BBB"

Acessar "Realities" pelo Menu Explore através de "Categorias" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Realities"
  Então devo ser redirecionado para a página "Realities"

Acessar "Documentários" pelo Menu Explore através de "Categorias" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo ser redirecionado para a página "Documentários"

Acessar "Variedades" pelo Menu Explore através de "Categorias" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Variedades"
  Então devo ser redirecionado para a página "Variedades"

Acessar "Humor" pelo Menu Explore através de "Categorias" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Humor"
  Então devo ser redirecionado para a página "Humor"

Acessar "Música" pelo Menu Explore através de "Categorias" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Música"
  Então devo ser redirecionado para a página "Música"

Acessar "Esportes" pelo Menu Explore através de "Categorias" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Esportes"
  Então devo ser redirecionado para a página "Esportes"

Acessar "Jornalismo" pelo Menu Explore através de "Categorias" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Jornalismo"
  Então devo ser redirecionado para a página "Jornalismo"

Acessar "Programas Locais" pelo Menu Explore através de "Categorias" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Programas Locais"
  Então devo ser redirecionado para a página "Programas Locais"
