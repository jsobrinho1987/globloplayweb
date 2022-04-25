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
# Localizar o título "Escolha seu plano" ao clicar no botão "Eu quero" no "Assista ao vivo" do Gloob
# Acessar o Gloob através de "Canais" com um usuário anônimo e localizar o texto "Escolha seu plano"
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Canais"
#   E selecionar "Gloob" no "Assista ao vivo"
#   E selecionar "Eu quero"
#   Então o título "Escolha seu plano" deve estar visível

# # Localizar o banner do "Gloob" através de "Canais"
#  Acessar o Gloob através de "Canais" com um usuário anônimo e localizar o banner
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Canais"
#   E selecionar "Gloob" em "Canais"
#   Então o banner deste canal deve estar visível

# # Localizar o título "Escolha seu plano" ao clicar no botão "Conheça o novo plano" - "Eu quero" em "Canais" do Gloob
# Acessar o Gloob no "Agora na TV" através de "Canais" com um usuário anônimo e localizar o texto "Escolha seu plano"
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Canais"
#   E selecionar "Gloob" em "Canais"
#   E selecionar "Assista" no banner
#   E selecionar "Conheça o novo plano"
#   E selecionar "Eu quero"
#   Então o título "Escolha seu plano" deve estar visível

# # Acessar o "Veja Mais" do Gloob
# Acessar o Gloob através de "Canais" com um usuário anônimo e localizar "Veja mais"
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Canais"
#   E selecionar "Gloob" em "Canais"
#   Então devo conseguir localizar "Ver Todos"


Acessar as Novelas pelo menu Explore com um usuário anônimo e localizar o banner
# [Tags]      Canal Globo    Banner
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Novelas"
  Então o banner deve estar visível


Localizar o botão "Assine já" ao acessar o "Veja Mais" da novela recomendada através do menu Explore com um usuário anônimo
# [Tags]      Canal Globo    Botão "Assine já"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Globo"
  Então devo conseguir ver o botão "Assine já"

Validar exibição dos títulos do trilho "Todas os titulos" com um usuário anônimo
# [Tags]      Canal Multishow    Botão "Todas os titulos""  
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Globo"
  Então devo conseguir localizar todos os títulos do trilho "Todos os titulos"

# Validação dos Trilhos de Novelas
Validar exibição do trilho "Novelas" com um usuário anônimo
# [Tags]      Canal Globo    Novelas  
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Globo"
  Então devo conseguir localizar o trilho "Novelas"
  E realiza a validação do grid do trilho "Novelas"


Validar exibição do trilho "Séries" com um usuário anônimo
# [Tags]      Canal Globo    Séries  
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Globo"
  Então devo conseguir localizar o trilho "Séries"
  E realiza a validação do grid do trilho "Séries"


Validar exibição do trilho "Jornalismo" com um usuário anônimo
# [Tags]      Canal Globo    Jornalismo  
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Globo"
  Então devo conseguir localizar o trilho "Jornalismo"
  E realiza a validação do grid do trilho "Jornalismo"


Validar exibição do trilho "Variedades" com um usuário anônimo
# [Tags]      Canal Globo    Variedades  
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Globo"
  Então devo conseguir localizar o trilho "Variedades"
  E realiza a validação do grid do trilho "Variedades"


 Validar exibição do trilho "Realities" com um usuário anônimo
# [Tags]      Canal Globo    Realities  
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Globo"
  Então devo conseguir localizar o trilho "Realities"
  E realiza a validação do grid do trilho "Realities"


  Validar exibição do trilho "Jornalismo" com um usuário anônimo
# [Tags]      Canal Globo    Novelas  
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Globo"
  Então devo conseguir localizar o trilho "Jornalismo"
  E realiza a validação do grid do trilho "Jornalismo"


Validar exibição do trilho "Humor" com um usuário anônimo
# [Tags]      Canal Globo    Humor  
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Globo"
  Então devo conseguir localizar o trilho "Humor"
  E realiza a validação do grid do trilho "Humor"


 Validar exibição do trilho "Esporte" com um usuário anônimo
# [Tags]      Canal Globo    Esporte
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Globo"
  Então devo conseguir localizar o trilho "Esporte"
  E realiza a validação do grid do trilho "Esporte"