*** Settings ***

Documentation  Validação dos elementos de Documentários

# IMPORT DE VARIÁVEIS DE OUTROS ARQUIVOS
Resource            ${EXECDIR}/web-tests-globoplay/environment.robot

# O QUE FAZER ANTES DA EXECUÇÃO DOS TESTES
Suite Setup         Before Suite

# O QUE FAZER ANTES DE CADA UM DOS TESTES - ABRIR NAVEGADOR
Test Setup          Before Scenario

# O QUE FAZER APÓS CADA UM DOS TESTES - FECHAR NAVEGADOR
Test Teardown       After Scenario

*** Test Case ***

# # Localizar o banner de "Documentários"
# Acessar os Documentários pelo menu Explore com um usuário anônimo e localizar o banner
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Documentários"
#   Então o banner deve estar visível

# # Localizar o botão "Assine já" ao clicar em "Veja Mais" do Documentário recomendado no banner
# Localizar o botão "Assine já" ao acessar o "Veja Mais" do documentário recomendado através do menu Explore com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Documentários"
#   E selecionar "Veja Mais"
#   Então devo conseguir ver o botão "Assine já"

# Validação dos Trilhos de Documentários
Validar exibição do trilho "Originais Globoplay" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Originais Globoplay"

Validar exibição do trilho "Novidades" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Novidades"

Validar exibição do trilho "Filmes mais vistos" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Filmes mais vistos"
Validar exibição do trilho "Biografias" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Biografias"

Validar exibição do trilho "Nacionais" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Nacionais"

Validar exibição do trilho "Crime e Investigação" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Crime e Investigação"

Validar exibição do trilho "História" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "História"

Validar exibição do trilho "LGBTQIA+" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "LGBTQIA+"

Validar exibição do trilho "Ciência e Tecnologia" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Ciência e Tecnologia"

Validar exibição do trilho "Artes" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Artes"

Validar exibição do trilho "Só no Globoplay" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Só no Globoplay"
  
Validar exibição do trilho "Estilo de Vida" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Estilo de Vida"

Validar exibição do trilho "Premiados" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Premiados"

Validar exibição do trilho "Família Real" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Família Real"

Validar exibição do trilho "Questões Sociais" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Questões Sociais"

Validar exibição do trilho "Saúde" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Saúde"

Validar exibição do trilho "Diversidade e Identidade" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Diversidade e Identidade"
  
Validar exibição do trilho "Retratos de Uma Vida" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Retratos de Uma Vida"
  
Validar exibição do trilho "Dirigidos por Mulheres" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Dirigidos por Mulheres"

Validar exibição do trilho "Política" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Política"

Validar exibição do trilho "Cinema" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Cinema"

Validar exibição do trilho "Meio ambiente" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Meio ambiente"

Validar exibição do trilho "Eduardo Coutinho" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Eduardo Coutinho"

Validar exibição do trilho "Música" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Música"

Validar exibição do trilho "Esportes Radicais" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Esportes Radicais"
  
Validar exibição do trilho "Esportes" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Esportes"
