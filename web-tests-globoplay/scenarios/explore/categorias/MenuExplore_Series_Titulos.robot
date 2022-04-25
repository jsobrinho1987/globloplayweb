*** Settings ***

Documentation  Acesso ao conteúdo de Séries

# IMPORT DE VARIÁVEIS DE OUTROS ARQUIVOS
Resource            ${EXECDIR}/web-tests-globoplay/environment.robot

# O QUE FAZER ANTES DA EXECUÇÃO DOS TESTES
Suite Setup         Before Suite

# O QUE FAZER ANTES DE CADA UM DOS TESTES - ABRIR NAVEGADOR
Test Setup          Before Scenario

# O QUE FAZER APÓS CADA UM DOS TESTES - FECHAR NAVEGADOR
Test Teardown       After Scenario

*** Test Case *** 

# Todo Mundo Odeia o Chris - https://globoplay.globo.com/todo-mundo-odeia-o-chris/t/tDyxRKNSFp/
Acessar a série "Todo Mundo Odeia o Chris" pelo campo de busca com um usuário anônimo e localizar a Tag assinante em todos os episódios
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Todo Mundo Odeia o Chris"
  E selecionar "Todo Mundo Odeia o Chris"
  Então a tag assinante deve estar visível em todos os episódios

Acessar a série "Todo Mundo Odeia o Chris" pelo campo de busca com um usuário anônimo e localizar o botão "1ª Temporada"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Todo Mundo Odeia o Chris"
  E selecionar "Todo Mundo Odeia o Chris"
  Então devo conseguir localizar o botão "1ª Temporada"

Acessar a série "Todo Mundo Odeia o Chris" pelo campo de busca com um usuário anônimo e localizar os 22 episódios da 1a temporada
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Todo Mundo Odeia o Chris"
  E selecionar "Todo Mundo Odeia o Chris"
  Então devo conseguir localizar os 22 episódios da 1a temporada

Acessar a série "Todo Mundo Odeia o Chris" pelo campo de busca com um usuário anônimo e localizar os 22 episódios da 2a temporada
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Todo Mundo Odeia o Chris"
  E selecionar "Todo Mundo Odeia o Chris"
  E selecionar a 2a temporada
  Então devo conseguir localizar os 22 episódios da 2a temporada

Acessar a série "Todo Mundo Odeia o Chris" pelo campo de busca com um usuário anônimo e localizar os 22 episódios da 3a temporada
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Todo Mundo Odeia o Chris"
  E selecionar "Todo Mundo Odeia o Chris"
  E selecionar a 3a temporada
  Então devo conseguir localizar os 22 episódios da 3a temporada

Acessar a série "Todo Mundo Odeia o Chris" pelo campo de busca com um usuário anônimo e localizar os 22 episódios da 4a temporada
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Todo Mundo Odeia o Chris"
  E selecionar "Todo Mundo Odeia o Chris"
  E selecionar a 4a temporada
  Então devo conseguir localizar os 22 episódios da 4a temporada

Acessar a série "Todo Mundo Odeia o Chris" pelo campo de busca com um usuário anônimo e localizar o texto "Conteúdo exclusivo Globoplay"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Todo Mundo Odeia o Chris"
  E selecionar o primeiro episódio
  E selecionar "Todo Mundo Odeia o Chris"
  E selecionar o primeiro episódio
  Então devo conseguir localizar o texto "Conteúdo exclusivo Globoplay"

Acessar a série "Todo Mundo Odeia o Chris" pelo campo de busca com um usuário anônimo e localizar a aba "Detalhes"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Todo Mundo Odeia o Chris"
  E selecionar "Todo Mundo Odeia o Chris"
  Então devo conseguir localizar a aba "Detalhes"

Acessar a série "Todo Mundo Odeia o Chris" pelo campo de busca com um usuário anônimo e localizar o localizar o texto "Recomendados"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Todo Mundo Odeia o Chris"
  E selecionar "Todo Mundo Odeia o Chris"
  E selecionar o primeiro episódio
  Então devo conseguir localizar o texto "Recomendados"

# Grey's Anatomy - https://globoplay.globo.com/greys-anatomy/t/zkdVksFMLP/
Acessar a série "Grey's Anatomy" pelo campo de busca com um usuário anônimo e localizar a Tag assinante em todos os episódios
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Grey's Anatomy"
  E selecionar "Grey's Anatomy"
  Então a tag assinante deve estar visível em todos os episódios

Acessar a série "Grey's Anatomy" pelo campo de busca com um usuário anônimo e localizar o botão "1ª Temporada"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Grey's Anatomy"
  E selecionar "Grey's Anatomy"
  Então devo conseguir localizar o botão "1ª Temporada"

Acessar a série "Grey's Anatomy" pelo campo de busca com um usuário anônimo e localizar os 9 episódios da 1a temporada
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Grey's Anatomy"
  E selecionar "Grey's Anatomy"
  Então devo conseguir localizar os 9 episódios da 1a temporada

Acessar a série "Grey's Anatomy" pelo campo de busca com um usuário anônimo e localizar os 27 episódios da 2a temporada
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Grey's Anatomy"
  E selecionar "Grey's Anatomy"
  E selecionar a 2a temporada
  Então devo conseguir localizar os 27 episódios da 2a temporada

Acessar a série "Grey's Anatomy" pelo campo de busca com um usuário anônimo e localizar os 25 episódios da 3a temporada
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Grey's Anatomy"
  E selecionar "Grey's Anatomy"
  E selecionar a 3a temporada
  Então devo conseguir localizar os 25 episódios da 3a temporada

Acessar a série "Grey's Anatomy" pelo campo de busca com um usuário anônimo e localizar os 17 episódios da 4a temporada
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Grey's Anatomy"
  E selecionar "Grey's Anatomy"
  E selecionar a 4a temporada
  Então devo conseguir localizar os 17 episódios da 4a temporada

Acessar a série "Grey's Anatomy" pelo campo de busca com um usuário anônimo e localizar os 24 episódios da 5a temporada
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Grey's Anatomy"
  E selecionar "Grey's Anatomy"
  E selecionar a 5a temporada
  Então devo conseguir localizar os 24 episódios da 5a temporada


Acessar a série "Grey's Anatomy" pelo campo de busca com um usuário anônimo e localizar os 24 episódios da 6a temporada
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Grey's Anatomy"
  E selecionar "Grey's Anatomy"
  E selecionar a 6a temporada
  Então devo conseguir localizar os 24 episódios da 6a temporada


Acessar a série "Grey's Anatomy" pelo campo de busca com um usuário anônimo e localizar os 22 episódios da 7a temporada
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Grey's Anatomy"
  E selecionar "Grey's Anatomy"
  E selecionar a 7a temporada
  Então devo conseguir localizar os 22 episódios da 7a temporada


Acessar a série "Grey's Anatomy" pelo campo de busca com um usuário anônimo e localizar os 24 episódios da 8a temporada
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Grey's Anatomy"
  E selecionar "Grey's Anatomy"
  E selecionar a 8a temporada
  Então devo conseguir localizar os 24 episódios da 8a temporada


Acessar a série "Grey's Anatomy" pelo campo de busca com um usuário anônimo e localizar os 24 episódios da 9a temporada
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Grey's Anatomy"
  E selecionar "Grey's Anatomy"
  E selecionar a 9a temporada
  Então devo conseguir localizar os 24 episódios da 9a temporada


Acessar a série "Grey's Anatomy" pelo campo de busca com um usuário anônimo e localizar os 24 episódios da 10a temporada
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Grey's Anatomy"
  E selecionar "Grey's Anatomy"
  E selecionar a 10a temporada
  Então devo conseguir localizar os 24 episódios da 10a temporada


Acessar a série "Grey's Anatomy" pelo campo de busca com um usuário anônimo e localizar os 25 episódios da 11a temporada
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Grey's Anatomy"
  E selecionar "Grey's Anatomy"
  E selecionar a 11a temporada
  Então devo conseguir localizar os 25 episódios da 11a temporada


Acessar a série "Grey's Anatomy" pelo campo de busca com um usuário anônimo e localizar os 25 episódios da 12a temporada
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Grey's Anatomy"
  E selecionar "Grey's Anatomy"
  E selecionar a 12a temporada
  Então devo conseguir localizar os 25 episódios da 12a temporada


Acessar a série "Grey's Anatomy" pelo campo de busca com um usuário anônimo e localizar os 24 episódios da 13a temporada
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Grey's Anatomy"
  E selecionar "Grey's Anatomy"
  E selecionar a 13a temporada
  Então devo conseguir localizar os 24 episódios da 13a temporada


Acessar a série "Grey's Anatomy" pelo campo de busca com um usuário anônimo e localizar os 24 episódios da 14a temporada
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Grey's Anatomy"
  E selecionar "Grey's Anatomy"
  E selecionar a 14a temporada
  Então devo conseguir localizar os 24 episódios da 14a temporada


Acessar a série "Grey's Anatomy" pelo campo de busca com um usuário anônimo e localizar os 25 episódios da 15a temporada
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Grey's Anatomy"
  E selecionar "Grey's Anatomy"
  E selecionar a 15a temporada
  Então devo conseguir localizar os 25 episódios da 15a temporada


Acessar a série "Grey's Anatomy" pelo campo de busca com um usuário anônimo e localizar os 21 episódios da 16a temporada
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Grey's Anatomy"
  E selecionar "Grey's Anatomy"
  E selecionar a 16a temporada
  Então devo conseguir localizar os 21 episódios da 16a temporada


Acessar a série "Grey's Anatomy" pelo campo de busca com um usuário anônimo e localizar os 17 episódios da 17a temporada
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Grey's Anatomy"
  E selecionar "Grey's Anatomy"
  E selecionar a 17a temporada
  Então devo conseguir localizar os 17 episódios da 17a temporada


Acessar a série "Grey's Anatomy" pelo campo de busca com um usuário anônimo e localizar o texto "Conteúdo exclusivo Globoplay"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Grey's Anatomy"
  E selecionar "Grey's Anatomy"
  E selecionar o primeiro episódio
  E selecionar o primeiro episódio
  Então devo conseguir localizar o texto "Conteúdo exclusivo Globoplay"

Acessar a série "Grey's Anatomy" pelo campo de busca com um usuário anônimo e localizar a aba "Detalhes"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Grey's Anatomy"
  E selecionar "Grey's Anatomy"
  Então devo conseguir localizar a aba "Detalhes"

Acessar a série "Grey's Anatomy" pelo campo de busca com um usuário anônimo e localizar o texto "Recomendados"
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no botão de Busca
  E pesquisar por "Grey's Anatomy"
  E selecionar "Grey's Anatomy"
  E selecionar o primeiro episódio
  Então devo conseguir localizar o texto "Recomendados"