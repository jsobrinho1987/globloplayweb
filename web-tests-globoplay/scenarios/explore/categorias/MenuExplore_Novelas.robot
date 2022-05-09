*** Settings ***

Documentation  Validação dos elementos de Novelas

# IMPORT DE VARIÁVEIS DE OUTROS ARQUIVOS        
Resource            ${EXECDIR}/../../../environment.robot

# O QUE FAZER ANTES DA EXECUÇÃO DOS TESTES
Suite Setup         Before Suite

# O QUE FAZER ANTES DE CADA UM DOS TESTES - ABRIR NAVEGADOR
Test Setup          Before Scenario

# O QUE FAZER APÓS CADA UM DOS TESTES - FECHAR NAVEGADOR
# Test Teardown       After Scenario

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

#------------------------ Novos cenários | Títulos

# # Além da Ilusão - https://globoplay.globo.com/alem-da-ilusao/t/cM1zQ7R5wR/
# Acessar a novela "Além da Ilusão" pelo campo de busca com um usuário anônimo e localizar a Tag assinante em todos os capítulos
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Além da Ilusão"
#   E selecionar "Além da Ilusão"
#   Então a tag assinante deve estar visível em todos os capítulos

# Acessar a novela "Além da Ilusão" pelo campo de busca com um usuário anônimo e localizar o botão "Buscar data"
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Além da Ilusão"
#   E selecionar "Além da Ilusão"
#   Então devo localizar o botão "Buscar data"

# Acessar a novela "Além da Ilusão" pelo campo de busca com um usuário anônimo e localizar o texto "Conteúdo exclusivo Globoplay"
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Além da Ilusão"
#   E selecionar "Além da Ilusão"
#   E selecionar o primeiro capítulo
#   Então devo localizar o texto "Conteúdo exclusivo Globoplay"

# Acessar a novela "Além da Ilusão" pelo campo de busca com um usuário anônimo e localizar a aba "Detalhes"
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Além da Ilusão"
#   E selecionar "Além da Ilusão"
#   Então devo localizar a aba "Detalhes"

# Acessar a novela "Além da Ilusão" pelo campo de busca com um usuário anônimo e localizar o texto "Recomendados"
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Além da Ilusão"
#   E selecionar "Além da Ilusão"
#   E selecionar o primeiro capítulo
#   Então devo localizar o texto "Recomendados"

# # Paraíso Tropical - https://globoplay.globo.com/paraiso-tropical/t/Dqv7NKbRR6/
# Acessar a novela "Paraíso Tropical" pelo campo de busca com um usuário anônimo e localizar a Tag assinante a partir do segundo capítulo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Paraíso Tropical"
#   E selecionar "Paraíso Tropical"
#   Então a tag assinante deve estar visível a partir do segundo capítulo

# Acessar a novela "Paraíso Tropical" pelo campo de busca com um usuário anônimo e localizar o botão "Filtrar capítulos"
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Paraíso Tropical"
#   E selecionar "Paraíso Tropical"
#   Então devo localizar o botão "Filtrar capítulos"

# Acessar a novela "Paraíso Tropical" pelo campo de busca com um usuário anônimo e localizar os 180 capítulos
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Paraíso Tropical"
#   E selecionar "Paraíso Tropical"
#   Então devo localizar os 180 capítulos

# Acessar a novela "Paraíso Tropical" pelo campo de busca com um usuário anônimo e localizar o texto "Conteúdo exclusivo gratuito para contas cadastradas" no primeiro capítulo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Paraíso Tropical"
#   E selecionar "Paraíso Tropical"
#   E selecionar o primeiro capítulo
#   Então devo localizar o texto "Conteúdo exclusivo gratuito para contas cadastradas" no primeiro capítulo

# Acessar a novela "Paraíso Tropical" pelo campo de busca com um usuário anônimo e localizar o texto "Conteúdo exclusivo Globoplay" no segundo capítulo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Paraíso Tropical"
#   E selecionar "Paraíso Tropical"
#   E selecionar o segundo capítulo
#   Então devo localizar o texto "Conteúdo exclusivo Globoplay" no segundo capítulo

# Acessar a novela "Paraíso Tropical" pelo campo de busca com um usuário anônimo e localizar a aba "Detalhes"
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Paraíso Tropical"
#   E selecionar "Paraíso Tropical"
#   Então devo localizar a aba "Detalhes"

# Acessar a novela "Paraíso Tropical" pelo campo de busca com um usuário anônimo e localizar o texto "Recomendados"
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Paraíso Tropical"
#   E selecionar "Paraíso Tropical"
#   E selecionar o primeiro capítulo
#   Então devo localizar o texto "Recomendados"

# # Cobras & Lagartos - https://globoplay.globo.com/cobras-lagartos/t/Zb1wHgHJxV/
# Acessar a novela "Cobras & Lagartos" pelo campo de busca com um usuário anônimo e localizar a Tag assinante a partir do segundo capítulo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Paraíso Tropical"
#   E selecionar "Paraíso Tropical"
#   Então a tag assinante deve estar visível a partir do segundo capítulo

# Acessar a novela "Cobras & Lagartos" pelo campo de busca com um usuário anônimo e localizar o botão "Filtrar capítulos"
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Paraíso Tropical"
#   E selecionar "Paraíso Tropical"
#   Então devo localizar o botão "Filtrar capítulos"

# Acessar a novela "Cobras & Lagartos" pelo campo de busca com um usuário anônimo e localizar os 179 capítulos
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Paraíso Tropical"
#   E selecionar "Paraíso Tropical"
#   Então devo localizar os 179 capítulos

# Acessar a novela "Cobras & Lagartos" pelo campo de busca com um usuário anônimo e localizar o texto "Conteúdo exclusivo gratuito para contas cadastradas" no primeiro capítulo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Paraíso Tropical"
#   E selecionar "Paraíso Tropical"
#   E selecionar o primeiro capítulo
#   Então devo localizar o texto "Conteúdo exclusivo gratuito para contas cadastradas" no primeiro capítulo

# Acessar a novela "Cobras & Lagartos" pelo campo de busca com um usuário anônimo e localizar o texto "Conteúdo exclusivo Globoplay" no segundo capítulo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Paraíso Tropical"
#   E selecionar "Paraíso Tropical"
#   E selecionar o primeiro capítulo
#   Então devo localizar o texto "Conteúdo exclusivo Globoplay" no segundo capítulo

# Acessar a novela "Cobras & Lagartos" pelo campo de busca com um usuário anônimo e localizar a aba "Detalhes"
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Paraíso Tropical"
#   E selecionar "Paraíso Tropical"
#   Então devo localizar a aba "Detalhes"

# Acessar a novela "Cobras & Lagartos" pelo campo de busca com um usuário anônimo e localizar o texto "Recomendados"
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no botão de Busca
#   E pesquisar por "Paraíso Tropical"
#   E selecionar "Paraíso Tropical"
#   E selecionar o primeiro capítulo
#   Então devo localizar o texto "Recomendados"

#------------------------ Novos cenários | Trilhos

# # Validação dos Trilhos de Novelas
# Validar exibição do trilho "Lançamentos mais recentes" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Novelas"
#   Então devo conseguir localizar o trilho "Lançamentos mais recentes"
#   # E realiza a validação do grid do trilho "Lançamentos mais recentes"

# Validar exibição do trilho "No ar na TV Globo" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Novelas"
#   Então devo conseguir localizar o trilho "No ar na TV Globo"

# Validar exibição do trilho "No ar no VIVA" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Novelas"
#   Então devo conseguir localizar o trilho "No ar no VIVA"
#   E realiza a validação do grid do trilho "No ar no VIVA"

# Validar exibição do trilho "Novelas Estrangeiras" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Novelas"
#   Então devo conseguir localizar o trilho "Novelas Estrangeiras"
#   E realiza a validação do grid do trilho "Novelas Estrangeiras"

# Validar exibição do trilho "Anos 2020" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Novelas"
#   Então devo conseguir localizar o trilho "Anos 2020"
#   E realiza a validação do grid do trilho "Anos 2020"

# Validar exibição do trilho "Anos 2015-2019" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Novelas"
#   Então devo conseguir localizar o trilho "Anos 2015-2019"
#   E realiza a validação do grid do trilho "Anos 2015-2019"

# Validar exibição do trilho "Anos 2010-2014" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Novelas"
#   Então devo conseguir localizar o trilho "Anos 2010-2014"
#   E realiza a validação do grid do trilho "Anos 2010-2014"

# Validar exibição do trilho "Anos 2000" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Novelas"
#   Então devo conseguir localizar o trilho "Anos 2000"
#   E realiza a validação do grid do trilho "Anos 2000"

# Validar exibição do trilho "Anos 90" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Novelas"
#   Então devo conseguir localizar o trilho "Anos 90"
#   E realiza a validação do grid do trilho "Anos 90"

# Validar exibição do trilho "Anos 70 e 80" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Novelas"
#   Então devo conseguir localizar o trilho "Anos 70 e 80"
#   E realiza a validação do grid do trilho "Anos 70 e 80"

# Validar exibição do trilho "Malhação" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Novelas"
#   Então devo conseguir localizar o trilho "Malhação"
#   E realiza a validação do grid do trilho "Malhação"

# Validar exibição do trilho "Memória da TV" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Novelas"
#   Então devo conseguir localizar o trilho "Memória da TV"
#   E realiza a validação do grid do trilho "Memória da TV"

# Validar exibição do trilho "Todas as Novelas" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Novelas"
#   Então devo conseguir localizar o trilho "Todas as Novelas"
#   E realiza a validação do grid do trilho "Todas as Novelas"

# # Validação dos títulos dos Trilhos de Novelas
# Validar exibição dos títulos do trilho "Lançamentos mais recentes" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Novelas"
#   Então devo conseguir localizar todos os títulos do trilho "Lançamentos mais recentes"

# Validar exibição dos títulos do trilho "No ar na TV Globo" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Novelas"
#   Então devo conseguir localizar todos os títulos do trilho "No ar na TV Globo"

# Validar exibição dos títulos do trilho "No ar no VIVA" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Novelas"
#   Então devo conseguir localizar todos os títulos do trilho "No ar no VIVA"

# Validar exibição dos títulos do trilho "Novelas Estrangeiras" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Novelas"
#   Então devo conseguir localizar todos os títulos do trilho "Novelas Estrangeiras"

# Validar exibição dos títulos do trilho "Anos 2020" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Novelas"
#   Então devo conseguir localizar todos os títulos do trilho "Anos 2020"

# Validar exibição dos títulos do trilho "Anos 2015-2019" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Novelas"
#   Então devo conseguir localizar todos os títulos do trilho "Anos 2015-2019"

# Validar exibição dos títulos do trilho "Anos 2010-2014" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Novelas"
#   Então devo conseguir localizar todos os títulos do trilho "Anos 2010-2014"

# Validar exibição dos títulos do trilho "Anos 2000" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Novelas"
#   Então devo conseguir localizar todos os títulos do trilho "Anos 2000"

# Validar exibição dos títulos do trilho "Anos 90" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Novelas"
#   Então devo conseguir localizar todos os títulos do trilho "Anos 90"

# Validar exibição dos títulos do trilho "Anos 70 e 80" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Novelas"
#   Então devo conseguir localizar todos os títulos do trilho "Anos 70 e 80"

# Validar exibição dos títulos do trilho "Malhação" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Novelas"
#   Então devo conseguir localizar todos os títulos do trilho "Malhação"

# Validar exibição dos títulos do trilho "Memória da TV" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Novelas"
#   Então devo conseguir localizar todos os títulos do trilho "Memória da TV"

# Validar exibição dos títulos do trilho "Todas as Novelas" com um usuário anônimo
#   Dado que sou um usuário anônimo
#   E que estou na home
#   Quando clicar no menu "Explore"
#   E selecionar "Categorias"
#   E selecionar "Novelas"
#   Então devo conseguir localizar todos os títulos do trilho "Todas as Novelas"