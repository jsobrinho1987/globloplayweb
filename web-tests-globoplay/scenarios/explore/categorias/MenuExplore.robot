*** Settings ***

*** Test Case ***
# Componentes do menu Explore
Localizar o componente "Categorias" no menu "Explore"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  Então o texto "Categorias" deve estar visível

Localizar o componente "Podcasts" no menu "Explore"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  Então o texto "Podcasts" deve estar visível

Localizar o componente "Canais" no menu "Explore"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  Então o texto "Canais" deve estar visível

# Componentes do Categorias dentro do menu Explore
Acessar "Novelas" em "Categorias" no menu "Explore"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E clicar em "Novelas"
  Então devo ser redirecionado para a página de Novelas

Acessar "Séries" em "Categorias" no menu "Explore"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E clicar em "Séries"
  Então devo ser redirecionado para a página de Séries

Acessar "Filmes" em "Categorias" no menu "Explore"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E clicar em "Filmes"
  Então devo ser redirecionado para a página de Filmes

Acessar "Infantil" em "Categorias" no menu "Explore"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E clicar em "Infantil"
  Então devo ser redirecionado para a página de Infantil

Acessar "BBB" em "Categorias" no menu "Explore"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E clicar em "BBB"
  Então devo ser redirecionado para a página de BBB

Acessar "Realities" em "Categorias" no menu "Explore"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E clicar em "Realities"
  Então devo ser redirecionado para a página de Realities

Acessar "Documentários" em "Categorias" no menu "Explore"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E clicar em "Documentários"
  Então devo ser redirecionado para a página de Documentários

Acessar "Variedades" em "Categorias" no menu "Explore"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E clicar em "Variedades"
  Então devo ser redirecionado para a página de Variedades

Acessar "Humor" em "Categorias" no menu "Explore"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E clicar em "Humor"
  Então devo ser redirecionado para a página de Humor

Acessar "Música" em "Categorias" no menu "Explore"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E clicar em "Música"
  Então devo ser redirecionado para a página de Música

Acessar "Esportes" em "Categorias" no menu "Explore"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E clicar em "Esportes"
  Então devo ser redirecionado para a página de Esportes

Acessar "Jornalismo" em "Categorias" no menu "Explore"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E clicar em "Jornalismo"
  Então devo ser redirecionado para a página de Jornalismo

Acessar "Programas Locais" em "Categorias" no menu "Explore"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E clicar em "Programas Locais"
  Então devo ser redirecionado para a página de Programas Locais
