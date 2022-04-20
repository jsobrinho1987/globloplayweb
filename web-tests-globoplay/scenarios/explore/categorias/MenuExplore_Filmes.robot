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

# Validação dos Trilhos de Filmes
Validar exibição do trilho "Escolha pelo gênero" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar o trilho "Escolha pelo gênero"
  E realiza a validação do grid do trilho "Escolha pelo gênero"

Validar exibição do trilho "Grandes sucessos" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar o trilho "Grandes sucessos"
  E realiza a validação do grid do trilho "Grandes sucessos"

Validar exibição do trilho "Novidades" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar o trilho "Novidades"
  E realiza a validação do grid do trilho "Novidades"

Validar exibição do trilho "Mais assistidos" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar o trilho "Mais assistidos"
  E realiza a validação do grid do trilho "Mais assistidos"

Validar exibição do trilho "Assista Filmes Ao Vivo" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar o trilho "Assista Filmes Ao Vivo"
  E realiza a validação do grid do trilho "Assista Filmes Ao Vivo"

Validar exibição do trilho "Romance" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar o trilho "Romance"
  E realiza a validação do grid do trilho "Romance"

Validar exibição do trilho "Filmes exclusivos" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar o trilho "Filmes exclusivos"
  E realiza a validação do grid do trilho "Filmes exclusivos"

Validar exibição do trilho "Premiados" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar o trilho "Premiados"
  E realiza a validação do grid do trilho "Premiados"

Validar exibição do trilho "Comédia" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar o trilho "Comédia"
  E realiza a validação do grid do trilho "Comédia"

Validar exibição do trilho "Animes" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar o trilho "Animes"
  E realiza a validação do grid do trilho "Animes"

Validar exibição do trilho "Tesouros para cinéfilos" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar o trilho "Tesouros para cinéfilos"
  E realiza a validação do grid do trilho "Tesouros para cinéfilos"

Validar exibição do trilho "Cinelists do Telecine" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar o trilho "Cinelists do Telecine"
  E realiza a validação do grid do trilho "Cinelists do Telecine"

Validar exibição do trilho "Novos clássicos brasileiros" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar o trilho "Novos clássicos brasileiros"
  E realiza a validação do grid do trilho "Novos clássicos brasileiros"

Validar exibição do trilho "Filmes nacionais" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar o trilho "Filmes nacionais"
  E realiza a validação do grid do trilho "Filmes nacionais"

Validar exibição do trilho "Já são clássicos" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar o trilho "Já são clássicos"
  E realiza a validação do grid do trilho "Já são clássicos"

Validar exibição do trilho "Clássicos do cinema brasileiro" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar o trilho "Clássicos do cinema brasileiro"
  E realiza a validação do grid do trilho "Clássicos do cinema brasileiro"

Validar exibição do trilho "Infantil" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar o trilho "Infantil"
  E realiza a validação do grid do trilho "Infantil"

Validar exibição do trilho "Podcasts" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar o trilho "Podcasts"
  E realiza a validação do grid do trilho "Podcasts"

Validar exibição do trilho "Todos os filmes" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar o trilho "Todos os filmes"
  E realiza a validação do grid do trilho "Todos os filmes"

# Validação dos títulos dos Trilhos de Filmes
Validar exibição dos títulos do trilho "Escolha pelo gênero" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar todos os títulos do trilho "Escolha pelo gênero"

Validar exibição dos títulos do trilho "Grandes sucessos" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar todos os títulos do trilho "Grandes sucessos"

Validar exibição dos títulos do trilho "Novidades" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar todos os títulos do trilho "Novidades"

Validar exibição dos títulos do trilho "Mais assistidos" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar todos os títulos do trilho "Mais assistidos"

Validar exibição dos títulos do trilho "Assista Filmes Ao Vivo" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar todos os títulos do trilho "Assista Filmes Ao Vivo"

Validar exibição dos títulos do trilho "Romance" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar todos os títulos do trilho "Romance"

Validar exibição dos títulos do trilho "Filmes exclusivos" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar todos os títulos do trilho "Filmes exclusivos"

Validar exibição dos títulos do trilho "Premiados" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar todos os títulos do trilho "Premiados"

Validar exibição dos títulos do trilho "Comédia" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar todos os títulos do trilho "Comédia"

Validar exibição dos títulos do trilho "Animes" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar todos os títulos do trilho "Animes"

Validar exibição dos títulos do trilho "Tesouros para cinéfilos" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar todos os títulos do trilho "Tesouros para cinéfilos"

Validar exibição dos títulos do trilho "Cinelists do Telecine" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar todos os títulos do trilho "Cinelists do Telecine"

Validar exibição dos títulos do trilho "Novos clássicos brasileiros" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar todos os títulos do trilho "Novos clássicos brasileiros"

Validar exibição dos títulos do trilho "Filmes nacionais" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar todos os títulos do trilho "Filmes nacionais"

Validar exibição dos títulos do trilho "Já são clássicos" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar todos os títulos do trilho "Já são clássicos"

Validar exibição dos títulos do trilho "Clássicos do cinema brasileiro" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar todos os títulos do trilho "Clássicos do cinema brasileiro"

Validar exibição dos títulos do trilho "Infantil" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar todos os títulos do trilho "Infantil"

Validar exibição dos títulos do trilho "Podcasts" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar todos os títulos do trilho "Podcasts"

Validar exibição dos títulos do trilho "Todos os filmes" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Filmes"
  Então devo conseguir localizar todos os títulos do trilho "Todos os filmes"
