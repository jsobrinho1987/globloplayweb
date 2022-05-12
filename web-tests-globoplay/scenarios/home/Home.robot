*** Settings ***
Documentation   Validação de fluxos e funcionalidades presentes na Home

#Default Tags    Home

# IMPORT OS DADOS DOS BROWSER DE EXECUÇÃO DO NAVEGADOR
Resource            ${EXECDIR}/web-tests-globoplay/environment.robot

#ANTES DA EXECUÇÃO DOS TESTES
Suite Setup         Before Suite

# ANTES DE CADA UM DOS TESTES - ABRIR NAVEGADOR
Test Setup          Before Scenario

# APÓS CADA UM DOS TESTES - FECHAR NAVEGADOR
Test Teardown       After Scenario

*** Test Cases ***

#------------------------------------#
# ACESSOS ANONIMO
#------------------------------------#

# Valida exibição da página da home
# # [Tags]      Valida page Home
#     Dado que sou um usuário anônimo
#     E que estou na home


# Validar exibição do destaque banner de carrossel na home
# # [Tags]      Home    banner carrosse
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então destaque do carrossel deve exibir
#     E apresenta as imagens dos banner


Validar exibição do trilho de Só novelão
# [Tags]      Home    Trilho de Só novelão
    Dado que sou um usuário anônimo
    E que estou na home
    Então o trilho de "Só novelão" deve exibir
    E realiza o trilho da grid de Só novelão


# Validar exibição do trilho de Canais Ao Vivo
# # [Tags]      Home    Trilho de Canais Ao Vivo
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então o trilho de Canais Ao Vivo deve exibir
#     E realiza o trilho da grid de Canais Ao Vivo


# Validar exibição do trilho das Séries mais vistas
# # [Tags]      Home    Trilho das Séries mais vistas
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então o trilho das "Séries mais vistas" deve exibir
#     E realiza o trilho da grid das "Séries mais vistas"


Validar exibição do trilho de Canais
# [Tags]      Home    Trilho de Canais
    Dado que sou um usuário anônimo
    E que estou na home
    Então o trilho de Canais deve exibir
    E realiza o trilho da grid de Canais


Validar exibição do trilho de Novidades
# [Tags]      Home    Trilho de Novidades
    Dado que sou um usuário anônimo
    E que estou na home
    Então o trilho de Novidades deve exibir
    E realiza o trilho da grid de Novidades

Validar exibição do trilho de Estreias no +Canais
# [Tags]      Home    Trilho de Estreias no +Canais
    Dado que sou um usuário anônimo
    E que estou na home
    Então o trilho de Estreias no +Canais deve exibir
    E realiza o trilho da grid de Estreias no +Canais


Validar exibição do trilho de "Séries que dão o que falar"
# [Tags]      Home    Trilho de "Séries que dão o que falar"
    Dado que sou um usuário anônimo
    E que estou na home
    Então o trilho de "Séries que dão o que falar" deve exibir
    E realiza o trilho da grid de "Séries que dão o que falar"


# Validar exibição do trilho de "Ao Vivo no BBB"
# # [Tags]      Home    Trilho de "Ao Vivo no BBB"
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então o trilho de "Ao Vivo no BBB" deve exibir
#     E realiza o trilho da grid de "Ao Vivo no BBB"


Validar exibição do trilho de "Assista no Discovery+"
# [Tags]      Home    Trilho de "Assista no Discovery+"
    Dado que sou um usuário anônimo
    E que estou na home
    Então o trilho de "Assista no Discovery+" deve exibir
    E realiza o trilho da grid de "Assista no Discovery+"


# [Tags]      Home    Trilho de "Top 10 - Em Alta"
Validar exibição do trilho de "Top 10 - Em Alta"
    Dado que sou um usuário anônimo
    E que estou na home
    Então o trilho de "Top 10 - Em Alta" deve exibir
    E realiza o trilho da grid de "Top 10 - Em Alta"


# [Tags]      Home    Trilho de "Categorias"
Validar exibição do trilho de "Categorias"
    Dado que sou um usuário anônimo
    E que estou na home
    Então o trilho de "Categorias" deve exibir
    E realiza o trilho da grid de "Categorias"


# [Tags]      Home    Trilho de "Tramas latinas"
Validar exibição do trilho de "Tramas latinas"
    Dado que sou um usuário anônimo
    E que estou na home
    Então o trilho de "Tramas latinas" deve exibir
    E realiza o trilho da grid de "Tramas latinas"


# # [Tags]      Home    Trilho de "Participantes Pipoca"
# Validar exibição do trilho de "Participantes Pipoca"
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então o trilho de "Participantes Pipoca" deve exibir
#     E realiza o trilho da grid de "Participantes Pipoca"


# # [Tags]      Home    Trilho de "Participantes Camarote"
# Validar exibição do trilho de "Participantes Camarote"
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então o trilho de "Participantes Camarote" deve exibir
#     E realiza o trilho da grid de "Participantes Camarote"


Validar exibição do trilho "Os filmes que todos estão vendo"
# [Tags]      Home    Trilho de "Os filmes que todos estão vendo"
    Dado que sou um usuário anônimo
    E que estou na home
    Então o trilho de "Os filmes que todos estão vendo" deve exibir
    E realiza o trilho da grid "Os filmes que todos estão vendo"


# [Tags]      Home    Trilho de "Top 10 - Mais Consumidos"
Validar exibição do trilho de "Top 10 - Mais Consumidos"
    Dado que sou um usuário anônimo
    E que estou na home
    Então o trilho de "Top 10 - Mais Consumidos" deve exibir
    E realiza o trilho da grid de "Top 10 - Mais Consumidos"


# [Tags]      Home    Trilho de "Navegue pelo Globoplay"
Validar exibição do trilho de "Navegue pelo Globoplay"
    Dado que sou um usuário anônimo
    E que estou na home
    Então o trilho de "Navegue pelo Globoplay" deve exibir
    E realiza o trilho da grid de "Navegue pelo Globoplay"


# [Tags]      Home    Trilho de "Assista no Disney+"
Validar exibição do trilho de "Assista no Disney+"
    Dado que sou um usuário anônimo
    E que estou na home
    Então o trilho de "Assista no Disney+" deve exibir
    E realiza o trilho da grid de "Assista no Disney+"


# [Tags]      Home    Trilho de "Grandes sucessos do cinema"
Validar exibição do trilho de "Grandes sucessos do cinema"
    Dado que sou um usuário anônimo
    E que estou na home
    Então o trilho de "Grandes sucessos do cinema" deve exibir
    E realiza o trilho da grid de "Grandes sucessos do cinema"



# [Tags]      Home    Trilho de "Em alta no Telecine"
Validar exibição do trilho de "Em alta no Telecine"
    Dado que sou um usuário anônimo
    E que estou na home
    Então o trilho de "Em alta no Telecine" deve exibir
    E realiza o trilho da grid de "Em alta no Telecine"


# [Tags]      Home    Trilho de "Assista de graça"
Validar exibição do trilho de "Assista de graça"
    Dado que sou um usuário anônimo
    E que estou na home
    Então o trilho de "Assista de graça" deve exibir
    E realiza o trilho da grid de "Assista de graça"


# [Tags]      Home    Trilho de "Podcasts"
Validar exibição do trilho de "Podcasts"
    Dado que sou um usuário anônimo
    E que estou na home
    Então o trilho de "Podcasts" deve exibir
    E realiza o trilho da grid de "Podcasts"


# [Tags]      Home    Trilho de "Novelas que marcaram época"
Validar exibição do trilho de "Novelas que marcaram época"
    Dado que sou um usuário anônimo
    E que estou na home
    Então o trilho de "Novelas que marcaram época" deve exibir
    E realiza o trilho da grid de "Novelas que marcaram época"


# # [Tags]      Home    Trilho de "Produções Originais Globoplay"
# Validar exibição do trilho de "Produções Originais Globoplay"
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então o trilho de "Produções Originais Globoplay" deve exibir
#     E realiza o trilho da grid de "Produções Originais Globoplay"


# # [Tags]      Home    Trilho de "Séries premiadas"
# Validar exibição do trilho de "Séries premiadas"
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então o trilho de "Séries premiadas" deve exibir
#     E realiza o trilho da grid de "Séries premiadas"


# # [Tags]      Home    Trilho de "Só no Globoplay"
# Validar exibição do trilho de "Só no Globoplay"
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então o trilho de "Só no Globoplay" deve exibir
#     E realiza o trilho da grid de "Só no Globoplay"


# # # [Tags]      Home    Trilho de "Os favoritos da criançada"
# # Validar exibição do trilho de "Os favoritos da criançada"
# #     Dado que sou um usuário anônimo
# #     E que estou na home
# #     Então o trilho de "Os favoritos da criançada" deve exibir
# #     E realiza o trilho da grid de "Os favoritos da criançada"


# # [Tags]      Home    Trilho de "Sucessos no Globoplay"
# Validar exibição do trilho de "Sucessos no Globoplay"
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então o trilho de "Sucessos no Globoplay" deve exibir
#     E realiza o trilho da grid de "Sucessos no Globoplay"


# # [Tags]      Home    Trilho de "Documentários sobre Personalidades"
# Validar exibição do trilho de "Documentários sobre Personalidades"
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então o trilho de "Documentários sobre Personalidades" deve exibir
#     E realiza o trilho da grid de "Documentários sobre Personalidades"


# # # [Tags]      Home    Trilho de "As notícias mais quentes"
# Validar exibição do trilho de "As notícias mais quentes"
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então o trilho de "As notícias mais quentes" deve exibir
#     E realiza o trilho da grid de "As notícias mais quentes"


# # [Tags]      Home    Trilho de "Vídeos mais vistos"
# Validar exibição do trilho de "Vídeos mais vistos"
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então o trilho de "Vídeos mais vistos" deve exibir
#     E realiza o trilho da grid de "Vídeos mais vistos"


# # [Tags]      Home    Trilho de "Continue navegando"
# Validar exibição do trilho de "Continue navegando"
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então o trilho de "Continue navegando" deve exibir
#     E realiza o trilho da grid de "Continue navegando"










