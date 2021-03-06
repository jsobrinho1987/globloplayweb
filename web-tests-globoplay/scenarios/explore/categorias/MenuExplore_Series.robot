*** Settings ***

Documentation  Validação dos elementos de Séries

# IMPORT DE VARIÁVEIS DE OUTROS ARQUIVOS
Resource            ${EXECDIR}/../../../environment.robot

# O QUE FAZER ANTES DA EXECUÇÃO DOS TESTES
Suite Setup         Before Suite

# O QUE FAZER ANTES DE CADA UM DOS TESTES - ABRIR NAVEGADOR
Test Setup          Before Scenario

# O QUE FAZER APÓS CADA UM DOS TESTES - FECHAR NAVEGADOR
Test Teardown       After Scenario

*** Test Case ***
# # Localizar o banner de "Séries"
# Acessar as Séries pelo menu Explore com um usuário anônimo e localizar o banner
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Séries"
#   Então o banner deve estar visível

# # Localizar o botão "Assine já" ao clicar em "Veja Mais" da série recomendada no banner
# Localizar o botão "Assine já" ao acessar o "Veja Mais" da série recomendada através do menu Explore com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Séries"
#   E selecionar "Veja Mais"
#   Então devo conseguir ver o botão "Assine já"

#------------------------ Novos cenários | Títulos

# # Todo Mundo Odeia o Chris - https://globoplay.globo.com/todo-mundo-odeia-o-chris/t/tDyxRKNSFp/
# Acessar a série "Todo Mundo Odeia o Chris" pelo campo de busca com um usuário anônimo e localizar a Tag assinante em todos os episódios
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Todo Mundo Odeia o Chris"
#   E selecionar "Todo Mundo Odeia o Chris"
#   Então a tag assinante deve estar visível em todos os episódios

# Acessar a série "Todo Mundo Odeia o Chris" pelo campo de busca com um usuário anônimo e localizar o botão "1ª Temporada"
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Todo Mundo Odeia o Chris"
#   E selecionar "Todo Mundo Odeia o Chris"
#   Então devo conseguir localizar o botão "1ª Temporada"

# Acessar a série "Todo Mundo Odeia o Chris" pelo campo de busca com um usuário anônimo e localizar os 22 episódios da 1a temporada
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Todo Mundo Odeia o Chris"
#   E selecionar "Todo Mundo Odeia o Chris"
#   Então devo conseguir localizar os 22 episódios da 1a temporada

# Acessar a série "Todo Mundo Odeia o Chris" pelo campo de busca com um usuário anônimo e localizar os 22 episódios da 2a temporada
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Todo Mundo Odeia o Chris"
#   E selecionar "Todo Mundo Odeia o Chris"
#   E selecionar a 2a temporada
#   Então devo conseguir localizar os 22 episódios da 2a temporada

# Acessar a série "Todo Mundo Odeia o Chris" pelo campo de busca com um usuário anônimo e localizar os 22 episódios da 3a temporada
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Todo Mundo Odeia o Chris"
#   E selecionar "Todo Mundo Odeia o Chris"
#   E selecionar a 3a temporada
#   Então devo conseguir localizar os 22 episódios da 3a temporada

# Acessar a série "Todo Mundo Odeia o Chris" pelo campo de busca com um usuário anônimo e localizar os 22 episódios da 4a temporada
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Todo Mundo Odeia o Chris"
#   E selecionar "Todo Mundo Odeia o Chris"
#   E selecionar a 4a temporada
#   Então devo conseguir localizar os 22 episódios da 4a temporada

# Acessar a série "Todo Mundo Odeia o Chris" pelo campo de busca com um usuário anônimo e localizar o texto "Conteúdo exclusivo Globoplay"
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Todo Mundo Odeia o Chris"
#   E selecionar o primeiro episódio
#   E selecionar "Todo Mundo Odeia o Chris"
#   E selecionar o primeiro episódio
#   Então devo conseguir localizar o texto "Conteúdo exclusivo Globoplay"

# Acessar a série "Todo Mundo Odeia o Chris" pelo campo de busca com um usuário anônimo e localizar a aba "Detalhes"
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Todo Mundo Odeia o Chris"
#   E selecionar "Todo Mundo Odeia o Chris"
#   Então devo conseguir localizar a aba "Detalhes"

# Acessar a série "Todo Mundo Odeia o Chris" pelo campo de busca com um usuário anônimo e localizar o localizar o texto "Recomendados"
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Todo Mundo Odeia o Chris"
#   E selecionar "Todo Mundo Odeia o Chris"
#   E selecionar o primeiro episódio
#   Então devo conseguir localizar o texto "Recomendados"

# # Grey's Anatomy - https://globoplay.globo.com/greys-anatomy/t/zkdVksFMLP/
# Acessar a série "Grey's Anatomy" pelo campo de busca com um usuário anônimo e localizar a Tag assinante em todos os episódios
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Grey's Anatomy"
#   E selecionar "Grey's Anatomy"
#   Então a tag assinante deve estar visível em todos os episódios

# Acessar a série "Grey's Anatomy" pelo campo de busca com um usuário anônimo e localizar o botão "1ª Temporada"
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Grey's Anatomy"
#   E selecionar "Grey's Anatomy"
#   Então devo conseguir localizar o botão "1ª Temporada"

# Acessar a série "Grey's Anatomy" pelo campo de busca com um usuário anônimo e localizar os 9 episódios da 1a temporada
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Grey's Anatomy"
#   E selecionar "Grey's Anatomy"
#   Então devo conseguir localizar os 9 episódios da 1a temporada

# Acessar a série "Grey's Anatomy" pelo campo de busca com um usuário anônimo e localizar os 27 episódios da 2a temporada
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Grey's Anatomy"
#   E selecionar "Grey's Anatomy"
#   E selecionar a 2a temporada
#   Então devo conseguir localizar os 27 episódios da 2a temporada

# Acessar a série "Grey's Anatomy" pelo campo de busca com um usuário anônimo e localizar os 25 episódios da 3a temporada
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Grey's Anatomy"
#   E selecionar "Grey's Anatomy"
#   E selecionar a 3a temporada
#   Então devo conseguir localizar os 25 episódios da 3a temporada

# Acessar a série "Grey's Anatomy" pelo campo de busca com um usuário anônimo e localizar os 17 episódios da 4a temporada
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Grey's Anatomy"
#   E selecionar "Grey's Anatomy"
#   E selecionar a 4a temporada
#   Então devo conseguir localizar os 17 episódios da 4a temporada

# Acessar a série "Grey's Anatomy" pelo campo de busca com um usuário anônimo e localizar os 24 episódios da 5a temporada
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Grey's Anatomy"
#   E selecionar "Grey's Anatomy"
#   E selecionar a 5a temporada
#   Então devo conseguir localizar os 24 episódios da 5a temporada

# Acessar a série "Grey's Anatomy" pelo campo de busca com um usuário anônimo e localizar os 24 episódios da 6a temporada
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Grey's Anatomy"
#   E selecionar "Grey's Anatomy"
#   E selecionar a 6a temporada
#   Então devo conseguir localizar os 24 episódios da 6a temporada

# Acessar a série "Grey's Anatomy" pelo campo de busca com um usuário anônimo e localizar os 22 episódios da 7a temporada
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Grey's Anatomy"
#   E selecionar "Grey's Anatomy"
#   E selecionar a 7a temporada
#   Então devo conseguir localizar os 22 episódios da 7a temporada

# Acessar a série "Grey's Anatomy" pelo campo de busca com um usuário anônimo e localizar os 24 episódios da 8a temporada
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Grey's Anatomy"
#   E selecionar "Grey's Anatomy"
#   E selecionar a 8a temporada
#   Então devo conseguir localizar os 24 episódios da 8a temporada

# Acessar a série "Grey's Anatomy" pelo campo de busca com um usuário anônimo e localizar os 24 episódios da 9a temporada
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Grey's Anatomy"
#   E selecionar "Grey's Anatomy"
#   E selecionar a 9a temporada
#   Então devo conseguir localizar os 24 episódios da 9a temporada

# Acessar a série "Grey's Anatomy" pelo campo de busca com um usuário anônimo e localizar os 24 episódios da 10a temporada
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Grey's Anatomy"
#   E selecionar "Grey's Anatomy"
#   E selecionar a 10a temporada
#   Então devo conseguir localizar os 24 episódios da 10a temporada

# Acessar a série "Grey's Anatomy" pelo campo de busca com um usuário anônimo e localizar os 25 episódios da 11a temporada
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Grey's Anatomy"
#   E selecionar "Grey's Anatomy"
#   E selecionar a 11a temporada
#   Então devo conseguir localizar os 25 episódios da 11a temporada

# Acessar a série "Grey's Anatomy" pelo campo de busca com um usuário anônimo e localizar os 25 episódios da 12a temporada
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Grey's Anatomy"
#   E selecionar "Grey's Anatomy"
#   E selecionar a 12a temporada
#   Então devo conseguir localizar os 25 episódios da 12a temporada

# Acessar a série "Grey's Anatomy" pelo campo de busca com um usuário anônimo e localizar os 24 episódios da 13a temporada
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Grey's Anatomy"
#   E selecionar "Grey's Anatomy"
#   E selecionar a 13a temporada
#   Então devo conseguir localizar os 24 episódios da 13a temporada

# Acessar a série "Grey's Anatomy" pelo campo de busca com um usuário anônimo e localizar os 24 episódios da 14a temporada
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Grey's Anatomy"
#   E selecionar "Grey's Anatomy"
#   E selecionar a 14a temporada
#   Então devo conseguir localizar os 24 episódios da 14a temporada

# Acessar a série "Grey's Anatomy" pelo campo de busca com um usuário anônimo e localizar os 25 episódios da 15a temporada
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Grey's Anatomy"
#   E selecionar "Grey's Anatomy"
#   E selecionar a 15a temporada
#   Então devo conseguir localizar os 25 episódios da 15a temporada

# Acessar a série "Grey's Anatomy" pelo campo de busca com um usuário anônimo e localizar os 21 episódios da 16a temporada
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Grey's Anatomy"
#   E selecionar "Grey's Anatomy"
#   E selecionar a 16a temporada
#   Então devo conseguir localizar os 21 episódios da 16a temporada

# Acessar a série "Grey's Anatomy" pelo campo de busca com um usuário anônimo e localizar os 17 episódios da 17a temporada
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Grey's Anatomy"
#   E selecionar "Grey's Anatomy"
#   E selecionar a 17a temporada
#   Então devo conseguir localizar os 17 episódios da 17a temporada

# Acessar a série "Grey's Anatomy" pelo campo de busca com um usuário anônimo e localizar o texto "Conteúdo exclusivo Globoplay"
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Grey's Anatomy"
#   E selecionar "Grey's Anatomy"
#   E selecionar o primeiro episódio
#   E selecionar o primeiro episódio
#   Então devo conseguir localizar o texto "Conteúdo exclusivo Globoplay"

# Acessar a série "Grey's Anatomy" pelo campo de busca com um usuário anônimo e localizar a aba "Detalhes"
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Grey's Anatomy"
#   E selecionar "Grey's Anatomy"
#   Então devo conseguir localizar a aba "Detalhes"

# Acessar a série "Grey's Anatomy" pelo campo de busca com um usuário anônimo e localizar o texto "Recomendados"
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Grey's Anatomy"
#   E selecionar "Grey's Anatomy"
#   E selecionar o primeiro episódio
#   Então devo conseguir localizar o texto "Recomendados"

#------------------------ Novos cenários | Trilhos

# # Validação dos Trilhos de Série
# Validar exibição do trilho "Escolha pelo gênero" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Séries"
#   Então devo conseguir localizar o trilho "Escolha pelo gênero"
#   E realiza a validação do grid do trilho "Escolha pelo gênero"

Validar exibição do trilho "Novidades" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Categorias"
  E selecionar "Documentários"
  Então devo conseguir localizar o trilho "Novidades"
  E realiza a validação do grid do trilho "Novidades"

# Validar exibição do trilho "Originais Globoplay" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Séries"
#   Então devo conseguir localizar o trilho "Originais Globoplay"
#   E realiza a validação do grid do trilho "Originais Globoplay"

# Validar exibição do trilho "Comédia" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Séries"
#   Então devo conseguir localizar o trilho "Comédia"
#   E realiza a validação do grid do trilho "Comédia"

# Validar exibição do trilho "Ação" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Séries"
#   Então devo conseguir localizar o trilho "Ação"
#   E realiza a validação do grid do trilho "Ação"

# Validar exibição do trilho "Séries brasileiras" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Séries"
#   Então devo conseguir localizar o trilho "Séries brasileiras"
#   E realiza a validação do grid do trilho "Séries brasileiras"

# Validar exibição do trilho "Exclusivo Globoplay" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Séries"
#   Então devo conseguir localizar o trilho "Exclusivo Globoplay"
#   E realiza a validação do grid do trilho "Exclusivo Globoplay"

# Validar exibição do trilho "Séries médicas" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Séries"
#   Então devo conseguir localizar o trilho "Séries médicas"
#   E realiza a validação do grid do trilho "Séries médicas"

# Validar exibição do trilho "Séries de época" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Séries"
#   Então devo conseguir localizar o trilho "Séries de época"
#   E realiza a validação do grid do trilho "Séries de época"

# Validar exibição do trilho "Premiadas" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Séries"
#   Então devo conseguir localizar o trilho "Premiadas"
#   E realiza a validação do grid do trilho "Premiadas"

# Validar exibição do trilho "Sessão nostalgia" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Séries"
#   Então devo conseguir localizar o trilho "Sessão nostalgia"
#   E realiza a validação do grid do trilho "Sessão nostalgia"

# Validar exibição do trilho "Para ver rapidinho" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Séries"
#   Então devo conseguir localizar o trilho "Para ver rapidinho"
#   E realiza a validação do grid do trilho "Para ver rapidinho"

# Validar exibição do trilho "Sucessos no Globoplay" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Séries"
#   Então devo conseguir localizar o trilho "Sucessos no Globoplay"
#   E realiza a validação do grid do trilho "Sucessos no Globoplay"

# Validar exibição do trilho "Séries completas" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Séries"
#   Então devo conseguir localizar o trilho "Séries completas"
#   E realiza a validação do grid do trilho "Séries completas"

# Validar exibição do trilho "Franquias e spin-offs" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Séries"
#   Então devo conseguir localizar o trilho "Franquias e spin-offs"
#   E realiza a validação do grid do trilho "Franquias e spin-offs"

# Validar exibição do trilho "Mistério" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Séries"
#   Então devo conseguir localizar o trilho "Mistério"
#   E realiza a validação do grid do trilho "Mistério"

# Validar exibição do trilho "Séries da Globo" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Séries"
#   Então devo conseguir localizar o trilho "Séries da Globo"
#   E realiza a validação do grid do trilho "Séries da Globo"

# Validar exibição do trilho "Novas temporadas" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Séries"
#   Então devo conseguir localizar o trilho "Novas temporadas"
#   E realiza a validação do grid do trilho "Novas temporadas"

# Validar exibição do trilho "Para ver de graça" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Séries"
#   Então devo conseguir localizar o trilho "Para ver de graça"
#   E realiza a validação do grid do trilho "Para ver de graça"

# Validar exibição do trilho "Faroeste" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Séries"
#   Então devo conseguir localizar o trilho "Faroeste"
#   E realiza a validação do grid do trilho "Faroeste"

# Validar exibição do trilho "Podcasts" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Séries"
#   Então devo conseguir localizar o trilho "Podcasts"
#   E realiza a validação do grid do trilho "Podcasts"

# Validar exibição do trilho "Todas as séries" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Séries"
#   Então devo conseguir localizar o trilho "Todas as séries"
#   E realiza a validação do grid do trilho "Todas as séries"

# # Validação dos títulos dos Trilhos
# Validar exibição dos títulos do trilho "Escolha pelo gênero" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Séries"
#   Então devo conseguir localizar todos os títulos do trilho "Escolha pelo gênero"

# Validar exibição dos títulos do trilho "Novidades" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Séries"
#   Então devo conseguir localizar todos os títulos do trilho "Novidades"

# Validar exibição dos títulos do trilho "Originais Globoplay" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Séries"
#   Então devo conseguir localizar todos os títulos do trilho "Originais Globoplay"

# Validar exibição dos títulos do trilho "Comédia" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Séries"
#   Então devo conseguir localizar todos os títulos do trilho "Comédia"

# Validar exibição dos títulos do trilho "Ação" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Séries"
#   Então devo conseguir localizar todos os títulos do trilho "Ação"

# Validar exibição dos títulos do trilho "Séries brasileiras" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Séries"
#   Então devo conseguir localizar todos os títulos do trilho "Séries brasileiras"

# Validar exibição dos títulos do trilho "Exclusivo Globoplay" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Séries"
#   Então devo conseguir localizar todos os títulos do trilho "Exclusivo Globoplay"

# Validar exibição dos títulos do trilho "Séries médicas" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Séries"
#   Então devo conseguir localizar todos os títulos do trilho "Séries médicas"

# Validar exibição dos títulos do trilho "Séries de época" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Séries"
#   Então devo conseguir localizar todos os títulos do trilho "Séries de época"

# Validar exibição dos títulos do trilho "Premiadas" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Séries"
#   Então devo conseguir localizar todos os títulos do trilho "Premiadas"

# Validar exibição dos títulos do trilho "Sessão nostalgia" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Séries"
#   Então devo conseguir localizar todos os títulos do trilho "Sessão nostalgia"

# Validar exibição dos títulos do trilho "Para ver rapidinho" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Séries"
#   Então devo conseguir localizar todos os títulos do trilho "Para ver rapidinho"

# Validar exibição dos títulos do trilho "Sucessos no Globoplay" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Séries"
#   Então devo conseguir localizar todos os títulos do trilho "Sucessos no Globoplay"

# Validar exibição dos títulos do trilho "Séries completas" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Séries"
#   Então devo conseguir localizar todos os títulos do trilho "Séries completas"

# Validar exibição dos títulos do trilho "Franquias e spin-offs" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Séries"
#   Então devo conseguir localizar todos os títulos do trilho "Franquias e spin-offs"

# Validar exibição dos títulos do trilho "Mistério" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Séries"
#   Então devo conseguir localizar todos os títulos do trilho "Mistério"

# Validar exibição dos títulos do trilho "Séries da Globo" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Séries"
#   Então devo conseguir localizar todos os títulos do trilho "Séries da Globo"

# Validar exibição dos títulos do trilho "Novas temporadas" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Séries"
#   Então devo conseguir localizar todos os títulos do trilho "Novas temporadas"

# Validar exibição dos títulos do trilho "Para ver de graça" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Séries"
#   Então devo conseguir localizar todos os títulos do trilho "Para ver de graça"

# Validar exibição dos títulos do trilho "Faroeste" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Séries"
#   Então devo conseguir localizar todos os títulos do trilho "Faroeste"

# Validar exibição dos títulos do trilho "Podcasts" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Séries"
#   Então devo conseguir localizar todos os títulos do trilho "Podcasts"

# Validar exibição dos títulos do trilho "Todas as séries" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Séries"
#   Então devo conseguir localizar todos os títulos do trilho "Todas as séries"
