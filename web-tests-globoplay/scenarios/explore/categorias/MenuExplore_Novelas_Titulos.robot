*** Settings ***

Documentation  Acesso ao conteúdo de Novelas

# IMPORT DE VARIÁVEIS DE OUTROS ARQUIVOS
Resource            ${EXECDIR}/web-tests-globoplay/environment.robot

# O QUE FAZER ANTES DA EXECUÇÃO DOS TESTES
Suite Setup         Before Suite

# O QUE FAZER ANTES DE CADA UM DOS TESTES - ABRIR NAVEGADOR
Test Setup          Before Scenario

# O QUE FAZER APÓS CADA UM DOS TESTES - FECHAR NAVEGADOR
Test Teardown       After Scenario

*** Test Case *** 

# Além da Ilusão - https://globoplay.globo.com/alem-da-ilusao/t/cM1zQ7R5wR/
Acessar a novela "Além da Ilusão" pelo campo de busca com um usuário anônimo e localizar a Tag assinante em todos os capítulos
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Além da Ilusão"
  E selecionar "Além da Ilusão"
  Então a tag assinante deve estar visível em todos os capítulos

Acessar a novela "Além da Ilusão" pelo campo de busca com um usuário anônimo e localizar o botão "Buscar data"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Além da Ilusão"
  E selecionar "Além da Ilusão"
  Então devo localizar o botão "Buscar data"

Acessar a novela "Além da Ilusão" pelo campo de busca com um usuário anônimo e localizar o texto "Conteúdo exclusivo Globoplay"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Além da Ilusão"
  E selecionar "Além da Ilusão"
  E selecionar o primeiro capítulo
  Então devo localizar o texto "Conteúdo exclusivo Globoplay"

Acessar a novela "Além da Ilusão" pelo campo de busca com um usuário anônimo e localizar a aba "Detalhes"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Além da Ilusão"
  E selecionar "Além da Ilusão"
  Então devo localizar a aba "Detalhes"

Acessar a novela "Além da Ilusão" pelo campo de busca com um usuário anônimo e localizar o texto "Recomendados"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Além da Ilusão"
  E selecionar "Além da Ilusão"
  E selecionar o primeiro capítulo
  Então devo localizar o texto "Recomendados"

# Paraíso Tropical - https://globoplay.globo.com/paraiso-tropical/t/Dqv7NKbRR6/
Acessar a novela "Paraíso Tropical" pelo campo de busca com um usuário anônimo e localizar a Tag assinante a partir do segundo capítulo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Paraíso Tropical"
  E selecionar "Paraíso Tropical"
  Então a tag assinante deve estar visível a partir do segundo capítulo

Acessar a novela "Paraíso Tropical" pelo campo de busca com um usuário anônimo e localizar o botão "Filtrar capítulos"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Paraíso Tropical"
  E selecionar "Paraíso Tropical"
  Então devo localizar o botão "Filtrar capítulos"

Acessar a novela "Paraíso Tropical" pelo campo de busca com um usuário anônimo e localizar os 180 capítulos
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Paraíso Tropical"
  E selecionar "Paraíso Tropical"
  Então devo localizar os 180 capítulos

Acessar a novela "Paraíso Tropical" pelo campo de busca com um usuário anônimo e localizar o texto "Conteúdo exclusivo gratuito para contas cadastradas" no primeiro capítulo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Paraíso Tropical"
  E selecionar "Paraíso Tropical"
  E selecionar o primeiro capítulo
  Então devo localizar o texto "Conteúdo exclusivo gratuito para contas cadastradas" no primeiro capítulo

Acessar a novela "Paraíso Tropical" pelo campo de busca com um usuário anônimo e localizar o texto "Conteúdo exclusivo Globoplay" no segundo capítulo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Paraíso Tropical"
  E selecionar "Paraíso Tropical"
  E selecionar o segundo capítulo
  Então devo localizar o texto "Conteúdo exclusivo Globoplay" no segundo capítulo

Acessar a novela "Paraíso Tropical" pelo campo de busca com um usuário anônimo e localizar a aba "Detalhes"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Paraíso Tropical"
  E selecionar "Paraíso Tropical"
  Então devo localizar a aba "Detalhes"

Acessar a novela "Paraíso Tropical" pelo campo de busca com um usuário anônimo e localizar o texto "Recomendados"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Paraíso Tropical"
  E selecionar "Paraíso Tropical"
  E selecionar o primeiro capítulo
  Então devo localizar o texto "Recomendados"

# Cobras & Lagartos - https://globoplay.globo.com/cobras-lagartos/t/Zb1wHgHJxV/
Acessar a novela "Cobras & Lagartos" pelo campo de busca com um usuário anônimo e localizar a Tag assinante a partir do segundo capítulo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Paraíso Tropical"
  E selecionar "Paraíso Tropical"
  Então a tag assinante deve estar visível a partir do segundo capítulo

Acessar a novela "Cobras & Lagartos" pelo campo de busca com um usuário anônimo e localizar o botão "Filtrar capítulos"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Paraíso Tropical"
  E selecionar "Paraíso Tropical"
  Então devo localizar o botão "Filtrar capítulos"

Acessar a novela "Cobras & Lagartos" pelo campo de busca com um usuário anônimo e localizar os 179 capítulos
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Paraíso Tropical"
  E selecionar "Paraíso Tropical"
  Então devo localizar os 179 capítulos

Acessar a novela "Cobras & Lagartos" pelo campo de busca com um usuário anônimo e localizar o texto "Conteúdo exclusivo gratuito para contas cadastradas" no primeiro capítulo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Paraíso Tropical"
  E selecionar "Paraíso Tropical"
  E selecionar o primeiro capítulo
  Então devo localizar o texto "Conteúdo exclusivo gratuito para contas cadastradas" no primeiro capítulo

Acessar a novela "Cobras & Lagartos" pelo campo de busca com um usuário anônimo e localizar o texto "Conteúdo exclusivo Globoplay" no segundo capítulo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Paraíso Tropical"
  E selecionar "Paraíso Tropical"
  E selecionar o primeiro capítulo
  Então devo localizar o texto "Conteúdo exclusivo Globoplay" no segundo capítulo

Acessar a novela "Cobras & Lagartos" pelo campo de busca com um usuário anônimo e localizar a aba "Detalhes"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Paraíso Tropical"
  E selecionar "Paraíso Tropical"
  Então devo localizar a aba "Detalhes"

Acessar a novela "Cobras & Lagartos" pelo campo de busca com um usuário anônimo e localizar o texto "Recomendados"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Paraíso Tropical"
  E selecionar "Paraíso Tropical"
  E selecionar o primeiro capítulo
  Então devo localizar o texto "Recomendados"