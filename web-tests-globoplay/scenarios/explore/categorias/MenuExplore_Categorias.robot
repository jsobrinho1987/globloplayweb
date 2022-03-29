*** Settings ***
Documentation   Acesso tela de Explore e valida opção Podcasts

# Default Tags    Ajuda  Minha Conta

# IMPORT DE VARIÁVEIS DE OUTROS ARQUIVOS
Resource            ${EXECDIR}/web-tests-globoplay/environment.robot

# O QUE FAZER ANTES DA EXECUÇÃO DOS TESTES
Suite Setup         Before Suite

# O QUE FAZER ANTES DE CADA UM DOS TESTES - ABRIR NAVEGADOR
Test Setup          Before Scenario

# O QUE FAZER APÓS CADA UM DOS TESTES - FECHAR NAVEGADOR
Test Teardown       After Scenario

*** Test Case ***
# Localizar o título "Novelas" em Categorias
Acessar "Categorias" pelo Menu Explore e localizar o título "Novelas" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  Então o título "Novelas" deve estar visível

# Localizar o título "Séries" em Categorias
Acessar "Categorias" pelo Menu Explore e localizar o título "Séries" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  Então o título "Séries" deve estar visível

# Localizar o título "Filmes" em Categorias
Acessar "Filmes" pelo Menu Explore e localizar o título "Filmes" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  Então o título "Filmes" deve estar visível

# Localizar o título "Infantil" em Categorias
Acessar "Categorias" pelo Menu Explore e localizar o título "Infantil" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  Então o título "Infantil" deve estar visível

# Localizar o título "Realities" em Categorias
Acessar "Categorias" pelo Menu Explore e localizar o título "Realities" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  Então o título "Realities" deve estar visível

# Localizar o título "Documentários" em Categorias
Acessar "Categorias" pelo Menu Explore e localizar o título "Documentários" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  Então o título "Documentários" deve estar visível

# Localizar o título "Variedades" em Categorias
Acessar "Categorias" pelo Menu Explore e localizar o título "Variedades" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  Então o título "Variedades" deve estar visível

# Localizar o título "Humor" em Categorias
Acessar "Categorias" pelo Menu Explore e localizar o título "Humor" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  Então o título "Humor" deve estar visível

# Localizar o título "Música" em Categorias
Acessar "Categorias" pelo Menu Explore e localizar o título "Música" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  Então o título "Música" deve estar visível

# Localizar o título "Esportes" em Categorias
Acessar "Categorias" pelo Menu Explore e localizar o título "Esportes" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  Então o título "Esportes" deve estar visível

# Localizar o título "Jornalismo" em Categorias
Acessar "Categorias" pelo Menu Explore e localizar o título "Jornalismo" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  Então o título "Jornalismo" deve estar visível

# Localizar o título "Programas Locais" em Categorias
Acessar "Categorias" pelo Menu Explore e localizar o título "Programas Locais" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  Então o título "Programas Locais" deve estar visível

# Redirecionar a página para "Novelas" através de Categorias
Localizar o título "Novelas" em Categorias com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Novelas"
  Então devo ser redirecinado para a página "Novelas"

# Redirecionar a página para "Séries" através de Categorias
Localizar o título "Séries" em Categorias com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Séries"
  Então devo ser redirecinado para a página "Séries"

# Redirecionar a página para "Filmes" através de Categorias
Localizar o título "Filmes" em Categorias com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo ser redirecinado para a página "Filmes"

# Redirecionar a página para "Infantil" através de Categorias
Localizar o título "Infantil" em Categorias com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Infantil"
  Então devo ser redirecinado para a página "Infantil"

# Redirecionar a página para "Realities" através de Categorias
Localizar o título "Realities" em Categorias com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Realities"
  Então devo ser redirecinado para a página "Realities"

# Redirecionar a página para "Documentários" através de Categorias
Localizar o título "Documentários" em Categorias com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo ser redirecinado para a página "Documentários"

# Redirecionar a página para "Variedades" através de Categorias
Localizar o título "Variedades" em Categorias com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Variedades"
  Então devo ser redirecinado para a página "Variedades"

# Redirecionar a página para "Humor" através de Categorias
Localizar o título "Humor" em Categorias com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Humor"
  Então devo ser redirecinado para a página "Humor"

# Redirecionar a página para "Música" através de Categorias
Localizar o título "Música" em Categorias com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Música"
  Então devo ser redirecinado para a página "Música"

# Redirecionar a página para "Esportes" através de Categorias
Localizar o título "Esportes" em Categorias com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Esportes"
  Então devo ser redirecinado para a página "Esportes"

# Redirecionar a página para "Jornalismo" através de Categorias
Localizar o título "Jornalismo" em Categorias com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Jornalismo"
  Então devo ser redirecinado para a página "Jornalismo"

# Redirecionar a página para "Programas Locais" através de Categorias
Localizar o título "Programas Locais" em Categorias com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Programas Locais"
  Então devo ser redirecinado para a página "Programas Locais"
