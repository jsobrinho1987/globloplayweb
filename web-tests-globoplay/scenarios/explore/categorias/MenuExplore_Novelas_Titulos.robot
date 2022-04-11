# Avaliações
# - [x] Quantidade de capítulos
# - [x] Conteúdos disponíveis
# - [x] Tag assinante
# - [x] Acessar o conteúdo pela busca
# - [x] Recomendados
# - [x] Varredura ponto a ponto (olhar se cada episódio aparece)
# - [x] Checar as abas dentro da novela
# - [x] Clicar no episódio e ver o que apresenta
# - [ ] Selecionar botão "Buscar data" e selecionar uma data
# - [ ] Pegar a descrição do capítulo selecionado


*** Settings ***

Documentation  Acesso ao conteúdo de novelas
Library        SeleniumLibrary
Resource       /Users/thalias/Documents/menu_explore/script/keywords.robot
Resource       /Users/thalias/Documents/menu_explore/keywords/variables.robot
Resource       /Users/thalias/Documents/menu_explore/config/BDD-pt-br.robot
Test Teardown  Close Browser

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