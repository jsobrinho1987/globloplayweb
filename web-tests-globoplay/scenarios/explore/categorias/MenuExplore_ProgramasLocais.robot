*** Settings ***

Documentation  Validação dos elementos de Programas Locais

# IMPORT DE VARIÁVEIS DE OUTROS ARQUIVOS
Resource            ${EXECDIR}/../../../environment.robot

# O QUE FAZER ANTES DA EXECUÇÃO DOS TESTES
Suite Setup         Before Suite

# O QUE FAZER ANTES DE CADA UM DOS TESTES - ABRIR NAVEGADOR
Test Setup          Before Scenario

# O QUE FAZER APÓS CADA UM DOS TESTES - FECHAR NAVEGADOR
Test Teardown       After Scenario

*** Test Case ***
# Localizar o título de "Programas Locais"
Acessar Programas Locais pelo menu Explore com um usuário anônimo e localizar o título "Programas Locais"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Programas Locais"
  Então o título "Programas Locais" deve estar visível

# Localizar o texto "Acre" ao acessar "Programas Locais"
Localizar o texto "Acre" ao acessar "Programas Locais" através do menu Explore com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Programas Locais"
  E selecionar "Acre"
  Então devo conseguir ver o texto "Acre"

# Localizar o texto "Alagoas" ao acessar "Programas Locais"
Localizar o texto "Alagoas" ao acessar "Programas Locais" através do menu Explore com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Programas Locais"
  E selecionar "Alagoas"
  Então devo conseguir ver o texto "Alagoas"

# Localizar o texto "Amapá" ao acessar "Programas Locais"
Localizar o texto "Amapá" ao acessar "Programas Locais" através do menu Explore com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Programas Locais"
  E selecionar "Amapá"
  Então devo conseguir ver o texto "Amapá"

# Localizar o texto "Amazonas" ao acessar "Programas Locais"
Localizar o texto "Amazonas" ao acessar "Programas Locais" através do menu Explore com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Programas Locais"
  E selecionar "Amazonas"
  Então devo conseguir ver o texto "Amazonas"

# Localizar o texto "Bahia" ao acessar "Programas Locais"
Localizar o texto "Bahia" ao acessar "Programas Locais" através do menu Explore com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Programas Locais"
  E selecionar "Bahia"
  Então devo conseguir ver o texto "Bahia"

# Localizar o texto "Ceará" ao acessar "Programas Locais"
Localizar o texto "Ceará" ao acessar "Programas Locais" através do menu Explore com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Programas Locais"
  E selecionar "Ceará"
  Então devo conseguir ver o texto "Ceará"

# Localizar o texto "Distrito Federal" ao acessar "Programas Locais"
Localizar o texto "Distrito Federal, DF" ao acessar "Programas Locais" através do menu Explore com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Programas Locais"
  E selecionar "Distrito Federal"
  Então devo conseguir ver o texto "Distrito Federal"

# Localizar o texto "Grande Vitória, ES" ao acessar "Programas Locais"
Localizar o texto "Grande Vitória, ES" ao acessar "Programas Locais" através do menu Explore com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Programas Locais"
  E selecionar "Espírito Santo"
  Então devo conseguir ver o texto "Grande Vitória, ES"

# Localizar o texto "Goiás" ao acessar "Programas Locais"
Localizar o texto "Goiás" ao acessar "Programas Locais" através do menu Explore com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Programas Locais"
  E selecionar "Goiás"
  Então devo conseguir ver o texto "Goiás"

# Localizar o texto "Maranhão" ao acessar "Programas Locais"
Localizar o texto "Maranhão" ao acessar "Programas Locais" através do menu Explore com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Programas Locais"
  E selecionar "Maranhão"
  Então devo conseguir ver o texto "Maranhão"

# Localizar o texto "Mato Grosso" ao acessar "Programas Locais"
Localizar o texto "Mato Grosso" ao acessar "Programas Locais" através do menu Explore com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Programas Locais"
  E selecionar "Mato Grosso"
  Então devo conseguir ver o texto "Mato Grosso"

# Localizar o texto "Mato Grosso do Sul" ao acessar "Programas Locais"
Localizar o texto "Mato Grosso do Sul" ao acessar "Programas Locais" através do menu Explore com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Programas Locais"
  E selecionar "Mato Grosso do Sul"
  Então devo conseguir ver o texto "Mato Grosso do Sul"

# Localizar o texto "Minas Gerais" ao acessar "Programas Locais"
Localizar o texto "Minas Gerais" ao acessar "Programas Locais" através do menu Explore com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Programas Locais"
  E selecionar "Minas Gerais"
  Então devo conseguir ver o texto "Minas Gerais"

# Localizar o texto "Paraná" ao acessar "Programas Locais"
Localizar o texto "Paraná" ao acessar "Programas Locais" através do menu Explore com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Programas Locais"
  E selecionar "Paraná"
  Então devo conseguir ver o texto "Paraná"

# Localizar o texto "Paraíba" ao acessar "Programas Locais"
Localizar o texto "Paraíba" ao acessar "Programas Locais" através do menu Explore com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Programas Locais"
  E selecionar "Paraíba"
  Então devo conseguir ver o texto "Paraíba"

# Localizar o texto "Pará" ao acessar "Programas Locais"
Localizar o texto "Pará" ao acessar "Programas Locais" através do menu Explore com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Programas Locais"
  E selecionar "Pará"
  Então devo conseguir ver o texto "Pará"

# Localizar o texto "Pernambuco" ao acessar "Programas Locais"
Localizar o texto "Pernambuco" ao acessar "Programas Locais" através do menu Explore com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Programas Locais"
  E selecionar "Pernambuco"
  Então devo conseguir ver o texto "Pernambuco"

# Localizar o texto "Piauí" ao acessar "Programas Locais"
Localizar o texto "Piauí" ao acessar "Programas Locais" através do menu Explore com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Programas Locais"
  E selecionar "Piauí"
  Então devo conseguir ver o texto "Piauí"

# Localizar o texto "Rio Grande do Norte" ao acessar "Programas Locais"
Localizar o texto "Rio Grande do Norte" ao acessar "Programas Locais" através do menu Explore com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Programas Locais"
  E selecionar "Rio Grande do Norte"
  Então devo conseguir ver o texto "Rio Grande do Norte"

# Localizar o texto "Rio Grande do Sul" ao acessar "Programas Locais"
Localizar o texto "Rio Grande do Sul" ao acessar "Programas Locais" através do menu Explore com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Programas Locais"
  E selecionar "Rio Grande do Sul"
  Então devo conseguir ver o texto "Rio Grande do Sul"

# Localizar o texto "Rio de Janeiro" ao acessar "Programas Locais"
Localizar o texto "Rio de Janeiro" ao acessar "Programas Locais" através do menu Explore com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Programas Locais"
  E selecionar "Rio de Janeiro"
  Então devo conseguir ver o texto "Rio de Janeiro"

# Localizar o texto "Rondônia" ao acessar "Programas Locais"
Localizar o texto "Rondônia" ao acessar "Programas Locais" através do menu Explore com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Programas Locais"
  E selecionar "Rondônia"
  Então devo conseguir ver o texto "Rondônia"

# Localizar o texto "Roraima" ao acessar "Programas Locais"
Localizar o texto "Roraima" ao acessar "Programas Locais" através do menu Explore com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Programas Locais"
  E selecionar "Roraima"
  Então devo conseguir ver o texto "Roraima"

# Localizar o texto "Santa Catarina" ao acessar "Programas Locais"
Localizar o texto "Santa Catarina" ao acessar "Programas Locais" através do menu Explore com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Programas Locais"
  E selecionar "Santa Catarina"
  Então devo conseguir ver o texto "Santa Catarina"

# Localizar o texto "Sergipe" ao acessar "Programas Locais"
Localizar o texto "Sergipe" ao acessar "Programas Locais" através do menu Explore com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Programas Locais"
  E selecionar "Sergipe"
  Então devo conseguir ver o texto "Sergipe"

# Localizar o texto "São Paulo" ao acessar "Programas Locais"
Localizar o texto "São Paulo" ao acessar "Programas Locais" através do menu Explore com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Programas Locais"
  E selecionar "São Paulo"
  Então devo conseguir ver o texto "São Paulo"

# Localizar o texto "Tocantins" ao acessar "Programas Locais"
Localizar o texto "Tocantins" ao acessar "Programas Locais" através do menu Explore com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Programas Locais"
  E selecionar "Tocantins"
  Então devo conseguir ver o texto "Tocantins"
