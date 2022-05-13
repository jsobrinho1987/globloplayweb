*** Settings ***

Documentation  Validação dos elementos de Documentários

# IMPORT DE VARIÁVEIS DE OUTROS ARQUIVOS
Resource            ${EXECDIR}/../../../environment.robot

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

#------------------------ Novos cenários

# Validação dos Trilhos de Documentários
Validar exibição do trilho "Originais Globoplay" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Originais Globoplay"
  E realiza a validação do grid do trilho "Originais Globoplay"

Validar exibição do trilho "Novidades" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Novidades"
  E realiza a validação do grid do trilho "Novidades"

Validar exibição do trilho "Filmes mais vistos" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Filmes mais vistos"
  E realiza a validação do grid do trilho "Filmes mais vistos"

Validar exibição do trilho "Biografias" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Biografias"
  E realiza a validação do grid do trilho "Biografias"

Validar exibição do trilho "Nacionais" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Nacionais"
  E realiza a validação do grid do trilho "Nacionais"

Validar exibição do trilho "Crime e Investigação" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Crime e Investigação"
  E realiza a validação do grid do trilho "Crime e Investigação"

Validar exibição do trilho "História" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "História"
  E realiza a validação do grid do trilho "História"

Validar exibição do trilho "LGBTQIA+" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "LGBTQIA+"
  E realiza a validação do grid do trilho "LGBTQIA+"

Validar exibição do trilho "Ciência e Tecnologia" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Ciência e Tecnologia"
  E realiza a validação do grid do trilho "Ciência e Tecnologia"

Validar exibição do trilho "Artes" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Artes"
  E realiza a validação do grid do trilho "Artes"

Validar exibição do trilho "Só no Globoplay" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Só no Globoplay"
  E realiza a validação do grid do trilho "Só no Globoplay"
  
Validar exibição do trilho "Estilo de Vida" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Estilo de Vida"
  E realiza a validação do grid do trilho "Estilo de Vida"

Validar exibição do trilho "Premiados" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Premiados"
  E realiza a validação do grid do trilho "Premiados"

Validar exibição do trilho "Família Real" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Família Real"
  E realiza a validação do grid do trilho "Família Real"

Validar exibição do trilho "Questões Sociais" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Questões Sociais"
  E realiza a validação do grid do trilho "Questões Sociais"

Validar exibição do trilho "Saúde" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Saúde"
  E realiza a validação do grid do trilho "Saúde"

Validar exibição do trilho "Diversidade e Identidade" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Diversidade e Identidade"
  E realiza a validação do grid do trilho "Diversidade e Identidade"
  
Validar exibição do trilho "Retratos de Uma Vida" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Retratos de Uma Vida"
  E realiza a validação do grid do trilho "Retratos de Uma Vida"
  
Validar exibição do trilho "Dirigidos por Mulheres" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Dirigidos por Mulheres"
  E realiza a validação do grid do trilho "Dirigidos por Mulheres"

Validar exibição do trilho "Política" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Política"
  E realiza a validação do grid do trilho "Política"

Validar exibição do trilho "Cinema" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Cinema"
  E realiza a validação do grid do trilho "Cinema"

Validar exibição do trilho "Meio ambiente" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Meio ambiente"
  E realiza a validação do grid do trilho "Meio ambiente"

Validar exibição do trilho "Eduardo Coutinho" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Eduardo Coutinho"
  E realiza a validação do grid do trilho "Eduardo Coutinho"

Validar exibição do trilho "Música" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Música"
  E realiza a validação do grid do trilho "Música"

Validar exibição do trilho "Esportes Radicais" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Esportes Radicais"
  E realiza a validação do grid do trilho "Esportes Radicais"
  
Validar exibição do trilho "Esportes" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Esportes"
  E realiza a validação do grid do trilho "Esportes"

# Validação dos títulos dos Trilhos de Documentários
Validar exibição dos títulos do trilho "Originais Globoplay" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar todos os títulos do trilho "Originais Globoplay"

Validar exibição dos títulos do trilho "Novidades" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar todos os títulos do trilho "Novidades"

Validar exibição dos títulos do trilho "Filmes mais vistos" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar todos os títulos do trilho "Filmes mais vistos"

Validar exibição dos títulos do trilho "Biografias" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar todos os títulos do trilho "Biografias"

Validar exibição dos títulos do trilho "Nacionais" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar todos os títulos do trilho "Nacionais"

Validar exibição dos títulos do trilho "Crime e Investigação" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar todos os títulos do trilho "Crime e Investigação"

Validar exibição dos títulos do trilho "História" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar todos os títulos do trilho "História"

Validar exibição dos títulos do trilho "LGBTQIA+" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar todos os títulos do trilho "LGBTQIA+"

Validar exibição dos títulos do trilho "Ciência e Tecnologia" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar todos os títulos do trilho "Ciência e Tecnologia"

Validar exibição dos títulos do trilho "Artes" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar todos os títulos do trilho "Artes"

Validar exibição dos títulos do trilho "Só no Globoplay" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar todos os títulos do trilho "Só no Globoplay"

Validar exibição dos títulos do trilho "Estilo de Vida" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar todos os títulos do trilho "Estilo de Vida"

Validar exibição dos títulos do trilho "Premiados" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar todos os títulos do trilho "Premiados"

Validar exibição dos títulos do trilho "Família Real" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar todos os títulos do trilho "Família Real"

Validar exibição dos títulos do trilho "Questões Sociais" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar todos os títulos do trilho "Questões Sociais"

Validar exibição dos títulos do trilho "Saúde" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar todos os títulos do trilho "Saúde"

Validar exibição dos títulos do trilho "Diversidade e Identidade" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar todos os títulos do trilho "Diversidade e Identidade"

Validar exibição dos títulos do trilho "Retratos de Uma Vida" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar todos os títulos do trilho "Retratos de Uma Vida"

Validar exibição dos títulos do trilho "Dirigidos por Mulheres" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar todos os títulos do trilho "Dirigidos por Mulheres"

Validar exibição dos títulos do trilho "Política" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar todos os títulos do trilho "Política"

Validar exibição dos títulos do trilho "Cinema" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar todos os títulos do trilho "Cinema"

Validar exibição dos títulos do trilho "Meio ambiente" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar todos os títulos do trilho "Meio ambiente"

Validar exibição dos títulos do trilho "Eduardo Coutinho" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar todos os títulos do trilho "Eduardo Coutinho"

Validar exibição dos títulos do trilho "Música" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar todos os títulos do trilho "Música"

Validar exibição dos títulos do trilho "Esportes Radicais" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar todos os títulos do trilho "Esportes Radicais"

Validar exibição dos títulos do trilho "Esportes" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar todos os títulos do trilho "Esportes"
