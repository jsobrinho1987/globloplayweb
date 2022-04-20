*** Settings ***

Documentation  Validação dos elementos de Esportes

# IMPORT DE VARIÁVEIS DE OUTROS ARQUIVOS
Resource            ${EXECDIR}/web-tests-globoplay/environment.robot

# O QUE FAZER ANTES DA EXECUÇÃO DOS TESTES
Suite Setup         Before Suite

# O QUE FAZER ANTES DE CADA UM DOS TESTES - ABRIR NAVEGADOR
Test Setup          Before Scenario

# O QUE FAZER APÓS CADA UM DOS TESTES - FECHAR NAVEGADOR
Test Teardown       After Scenario

*** Test Case ***
# # Localizar o banner de "Esportes"
# Acessar Esportes pelo menu Explore com um usuário anônimo e localizar o banner
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Esportes"
#   Então o banner deve estar visível

# # Localizar o texto "Conteúdo exclusivo gratuito para contas cadastradas" ao clicar em "Assista" o Esporte Espetacular
# Localizar a solicitação de login/cadastramento ao acessar o "Esporte Espetacular" através do menu Explore com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Esportes"
#   E selecionar "Esporte Espetacular"
#   E selecionar "Assista"
#   Então devo conseguir ver o texto "Conteúdo exclusivo gratuito para contas cadastradas"

# # Localizar "Ver todos"
# Acessar Esportes pelo menu Explore com um usuário anônimo e localizar "Ver todos"
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Esportes"
#   E selecionar "Veja Mais" em Ver Todos
#   Então devo conseguir localizar "Esportes - Todos os títulos"

# Validação dos Trilhos de Esportes
Validar exibição do trilho "Esportes ao vivo" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Esportes"
  Então devo conseguir localizar o trilho "Esportes ao vivo"
  E realiza a validação do grid do trilho "Esportes ao vivo"

Validar exibição do trilho "Grandes Eventos" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Esportes"
  Então devo conseguir localizar o trilho "Grandes Eventos"
  E realiza a validação do grid do trilho "Grandes Eventos"

Validar exibição do trilho "Copa do Mundo 2022" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Esportes"
  Então devo conseguir localizar o trilho "Copa do Mundo 2022"
  E realiza a validação do grid do trilho "Copa do Mundo 2022"

Validar exibição do trilho "Futebol" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Esportes"
  Então devo conseguir localizar o trilho "Futebol"
  E realiza a validação do grid do trilho "Futebol"

Validar exibição do trilho "Globo Esporte" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Esportes"
  Então devo conseguir localizar o trilho "Globo Esporte"
  E realiza a validação do grid do trilho "Globo Esporte"

Validar exibição do trilho "Lutas" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Esportes"
  Então devo conseguir localizar o trilho "Lutas"
  E realiza a validação do grid do trilho "Lutas"

Validar exibição do trilho "No asfalto" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Esportes"
  Então devo conseguir localizar o trilho "No asfalto"
  E realiza a validação do grid do trilho "No asfalto"

Validar exibição do trilho "No mar" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Esportes"
  Então devo conseguir localizar o trilho "No mar"
  E realiza a validação do grid do trilho "No mar"

Validar exibição do trilho "+ esportes" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Esportes"
  Então devo conseguir localizar o trilho "+ esportes"
  E realiza a validação do grid do trilho "+ esportes"

Validar exibição do trilho "Documentários" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Esportes"
  Então devo conseguir localizar o trilho "Documentários"
  E realiza a validação do grid do trilho "Documentários"

Validar exibição do trilho "Podcasts" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Esportes"
  Então devo conseguir localizar o trilho "Podcasts"
  E realiza a validação do grid do trilho "Podcasts"

Validar exibição do trilho "Ver todos" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Esportes"
  Então devo conseguir localizar o trilho "Ver todos"
  E realiza a validação do grid do trilho "Ver todos"

# Validação dos títulos dos Trilhos de Esportes
Validar exibição dos títulos do trilho "Esportes ao vivo" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Esportes"
  Então devo conseguir localizar todos os títulos do trilho "Esportes ao vivo"

Validar exibição dos títulos do trilho "Grandes Eventos" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Esportes"
  Então devo conseguir localizar todos os títulos do trilho "Grandes Eventos"

Validar exibição dos títulos do trilho "Copa do Mundo 2022" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Esportes"
  Então devo conseguir localizar todos os títulos do trilho "Copa do Mundo 2022"

Validar exibição dos títulos do trilho "Futebol" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Esportes"
  Então devo conseguir localizar todos os títulos do trilho "Futebol"

Validar exibição dos títulos do trilho "Globo Esporte" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Esportes"
  Então devo conseguir localizar todos os títulos do trilho "Globo Esporte"

Validar exibição dos títulos do trilho "Lutas" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Esportes"
  Então devo conseguir localizar todos os títulos do trilho "Lutas"

Validar exibição dos títulos do trilho "No asfalto" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Esportes"
  Então devo conseguir localizar todos os títulos do trilho "No asfalto"

Validar exibição dos títulos do trilho "No mar" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Esportes"
  Então devo conseguir localizar todos os títulos do trilho "No mar"

Validar exibição dos títulos do trilho "+ esportes" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Esportes"
  Então devo conseguir localizar todos os títulos do trilho "+ esportes"

Validar exibição dos títulos do trilho "Documentários" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Esportes"
  Então devo conseguir localizar todos os títulos do trilho "Documentários"

Validar exibição dos títulos do trilho "" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Esportes"
  Então devo conseguir localizar todos os títulos do trilho ""

Validar exibição dos títulos do trilho "Podcasts" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Esportes"
  Então devo conseguir localizar todos os títulos do trilho "Podcasts"

Validar exibição dos títulos do trilho "Ver todos" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Esportes"
  Então devo conseguir localizar todos os títulos do trilho "Ver todos"
