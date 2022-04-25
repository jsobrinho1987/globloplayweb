*** Settings ***

Documentation  Validação dos elementos de Novelas

# IMPORT DE VARIÁVEIS DE OUTROS ARQUIVOS
Resource            ${EXECDIR}/web-tests-globoplay/environment.robot

# O QUE FAZER ANTES DA EXECUÇÃO DOS TESTES
Suite Setup         Before Suite

# O QUE FAZER ANTES DE CADA UM DOS TESTES - ABRIR NAVEGADOR
Test Setup          Before Scenario

# O QUE FAZER APÓS CADA UM DOS TESTES - FECHAR NAVEGADOR
Test Teardown       After Scenario

*** Test Case ***
# # Localizar o banner de "Novelas"
# Acessar as Novelas pelo menu Explore com um usuário anônimo e localizar o banner
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Novelas"
#   Então o banner deve estar visível

# # Localizar o botão "Assine já" ao clicar em "Veja Mais" da novela recomendada no banner
# Localizar o botão "Assine já" ao acessar o "Veja Mais" da novela recomendada através do menu Explore com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Novelas"
#   E selecionar "Veja Mais"
#   Então devo conseguir ver o botão "Assine já"

# Validação dos Trilhos de Novelas
Validar exibição do trilho "Lançamentos mais recentes" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Novelas"
  Então devo conseguir localizar o trilho "Lançamentos mais recentes"
  E realiza a validação do grid do trilho "Lançamentos mais recentes"

Validar exibição do trilho "No ar na TV Globo" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Novelas"
  Então devo conseguir localizar o trilho "No ar na TV Globo"
  E realiza a validação do grid do trilho "No ar na TV Globo"

Validar exibição do trilho "No ar no VIVA" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Novelas"
  Então devo conseguir localizar o trilho "No ar no VIVA"
  E realiza a validação do grid do trilho "No ar no VIVA"

Validar exibição do trilho "Novelas Estrangeiras" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Novelas"
  Então devo conseguir localizar o trilho "Novelas Estrangeiras"
  E realiza a validação do grid do trilho "Novelas Estrangeiras"

Validar exibição do trilho "Anos 2020" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Novelas"
  Então devo conseguir localizar o trilho "Anos 2020"
  E realiza a validação do grid do trilho "Anos 2020"

Validar exibição do trilho "Anos 2015-2019" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Novelas"
  Então devo conseguir localizar o trilho "Anos 2015-2019"
  E realiza a validação do grid do trilho "Anos 2015-2019"

Validar exibição do trilho "Anos 2010-2014" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Novelas"
  Então devo conseguir localizar o trilho "Anos 2010-2014"
  E realiza a validação do grid do trilho "Anos 2010-2014"

Validar exibição do trilho "Anos 2000" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Novelas"
  Então devo conseguir localizar o trilho "Anos 2000"
  E realiza a validação do grid do trilho "Anos 2000"

Validar exibição do trilho "Anos 90" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Novelas"
  Então devo conseguir localizar o trilho "Anos 90"
  E realiza a validação do grid do trilho "Anos 90"

Validar exibição do trilho "Anos 70 e 80" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Novelas"
  Então devo conseguir localizar o trilho "Anos 70 e 80"
  E realiza a validação do grid do trilho "Anos 70 e 80"

Validar exibição do trilho "Malhação" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Novelas"
  Então devo conseguir localizar o trilho "Malhação"
  E realiza a validação do grid do trilho "Malhação"

Validar exibição do trilho "Memória da TV" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Novelas"
  Então devo conseguir localizar o trilho "Memória da TV"
  E realiza a validação do grid do trilho "Memória da TV"

Validar exibição do trilho "Todas as Novelas" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Novelas"
  Então devo conseguir localizar o trilho "Todas as Novelas"
  E realiza a validação do grid do trilho "Todas as Novelas"

# Validação dos títulos dos Trilhos de Novelas
Validar exibição dos títulos do trilho "Lançamentos mais recentes" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Novelas"
  Então devo conseguir localizar todos os títulos do trilho "Lançamentos mais recentes"

Validar exibição dos títulos do trilho "No ar na TV Globo" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Novelas"
  Então devo conseguir localizar todos os títulos do trilho "No ar na TV Globo"

Validar exibição dos títulos do trilho "No ar no VIVA" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Novelas"
  Então devo conseguir localizar todos os títulos do trilho "No ar no VIVA"

Validar exibição dos títulos do trilho "Novelas Estrangeiras" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Novelas"
  Então devo conseguir localizar todos os títulos do trilho "Novelas Estrangeiras"

Validar exibição dos títulos do trilho "Anos 2020" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Novelas"
  Então devo conseguir localizar todos os títulos do trilho "Anos 2020"

Validar exibição dos títulos do trilho "Anos 2015-2019" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Novelas"
  Então devo conseguir localizar todos os títulos do trilho "Anos 2015-2019"

Validar exibição dos títulos do trilho "Anos 2010-2014" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Novelas"
  Então devo conseguir localizar todos os títulos do trilho "Anos 2010-2014"

Validar exibição dos títulos do trilho "Anos 2000" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Novelas"
  Então devo conseguir localizar todos os títulos do trilho "Anos 2000"

Validar exibição dos títulos do trilho "Anos 90" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Novelas"
  Então devo conseguir localizar todos os títulos do trilho "Anos 90"

Validar exibição dos títulos do trilho "Anos 70 e 80" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Novelas"
  Então devo conseguir localizar todos os títulos do trilho "Anos 70 e 80"

Validar exibição dos títulos do trilho "Malhação" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Novelas"
  Então devo conseguir localizar todos os títulos do trilho "Malhação"

Validar exibição dos títulos do trilho "Memória da TV" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Novelas"
  Então devo conseguir localizar todos os títulos do trilho "Memória da TV"

Validar exibição dos títulos do trilho "Todas as Novelas" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Novelas"
  Então devo conseguir localizar todos os títulos do trilho "Todas as Novelas"