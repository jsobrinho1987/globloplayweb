*** Settings ***
Documentation   Validação de fluxos e funcionalidades presentes na Home

#Default Tags    Home

# IMPORT OS DADOS DOS BROWSER DE EXECUÇÃO DO NAVEGADOR
Resource            ${EXECDIR}/web-tests-globoplay/environment.robot

# O QUE FAZER ANTES DA EXECUÇÃO DOS TESTES
Suite Setup         Before Suite

# O QUE FAZER ANTES DE CADA UM DOS TESTES - ABRIR NAVEGADOR
Test Setup          Before Scenario

# O QUE FAZER APÓS CADA UM DOS TESTES - FECHAR NAVEGADOR
Test Teardown       After Scenario

*** Test Cases ***
#------------------------------------#
# ACESSOS ANONIMO
#------------------------------------#


Validar exibição do destaque banner de carrossel na home
    # [Tags]      Home    carrossel
    Dado que sou um usuário anônimo
    E que estou na home
    Então destaque do carrossel deve ser exibido
    E apresenta as imagens do banner

# Validar exibição do trilho de Canais Ao Vivo na home
#     # [Tags]      Home    Canais Ao Vivo
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então destaque do trilho de Canais Ao Vivo deve ser exibido
#     E valida o trilho de rolagem dos de Canais Ao Vivo

# Validar exibição do trilho de destaque na home
#     # [Tags]      Home    trilho de destaque
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então destaque do carrossel deve ser exibido


# Validar exibição do trilho de só novelão na home
#     # [Tags]      Home    Destaque Carrosel
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então destaque do carrossel deve ser exibido
#     E apresenta as imagens do banner
#
#
# Validar exibição do trilho de novidade na home
#     # [Tags]      Home    Trilho Novidade
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então o trilho de novidade deve ser exibido


# Validar exibição do trilho de Canais Ao Vivo na home
#     # [Tags]      Home    Destaque de Vendas
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então o destaque de vendas deve ser exibido


# Validar exibição do trilho de Comédias brasileiras
#     # [Tags]      Home    Destaque de Vendas
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então o destaque de vendas deve ser exibido


# Validar exibição do componente de Estaduais no Premiere
#     # [Tags]      Home    Destaque de Vendas
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então o assista disney+ deve ser exibido

# Validar exibição do trilho de Novidades
#     # [Tags]      Home    Destaque de Vendas
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então o assista ao vivo deve ser exibido

# Validar exibição do trilho de Lançamentos do Telecine
#     # [Tags]      Home    Destaque de Vendas
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então opção novela não recomendadas deve ser exibido

# Validar exibição do Top 10 em Alta na home
#     # [Tags]      Home    Destaque de Vendas
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então opção Top 10 deve ser exibido

# Validar exibição do sucesso Globoplay na home
#     # [Tags]      Home    Destaque de Vendas
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então opção sucesso Globoplay deve ser exibido

# Validar exibição de Tramas latinas na home
#     # [Tags]      Home    Destaque de Vendas
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então opção Sub Destaque deve ser exibido

# Validar exibição de Assista no Disney+ na home
#     # [Tags]      Home    Destaque de Vendas
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então opção Categorias deve ser exibido

# Validar exibição de Os filmes que todos estão vendo na home
#     # [Tags]      Home    Destaque de Vendas
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então opção Estreia no +Canais deve ser exibido

# Validar exibição de Categorias na home
#     # [Tags]      Home    Destaque de Vendas
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então opção Dropz deve ser exibido

# Validar exibição de Top 10 - Mais Consumidos na home
#     # [Tags]      Home    Destaque de Vendas
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então opção Canais deve ser exibido

# Validar exibição de O melhor dos canais ao vivo na home
#     # [Tags]      Home    Destaque de Vendas
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então opção Menos 30 fest deve ser exibido

# Validar exibição de Os mais vistos pela galera! na home
#     # [Tags]      Home    Destaque de Vendas
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então opção Series Curtas para maratonar deve ser exibido

# Validar exibição de Só filmaço na home
#     # [Tags]      Home    Destaque de Vendas
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então opção 30 anos deve ser exibido

# Validar exibição de Canais na home
#     # [Tags]      Home    Destaque de Vendas
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então opção Series de Comedias deve ser exibido

# Validar exibição de Documentários originais na home
#     # [Tags]      Home    Destaque de Vendas
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então opção Grandes Lançamentos deve ser exibido

# Validar exibição de Podcast na home
#     # [Tags]      Home    Destaque de Vendas
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então opção Podcast deve ser exibido

# Validar exibição do componente Originais na home
#     # [Tags]      Home    Destaque de Vendas
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então opção Podcast deve ser exibido

# Validar exibição de Assista de graça na home
#     # [Tags]      Home    Destaque de Vendas
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então opção Classicos romanticos deve ser exibido

# Validar exibição de Programas de culinária na home
#     # [Tags]      Home    Destaque de Vendas
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então opção Escolha o seu documentario deve ser exibido

# Validar exibição de Produções originais Globoplay na home
#     # [Tags]      Home    Destaque de Vendas
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então opção series que vc precisa conhecer deve ser exibido

# Validar exibição do componente de O melhor do esporte na home
#     # [Tags]      Home    Destaque de Vendas
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então opção ultimos dias para assistir deve ser exibido

# Validar exibição de As notícias mais quentes na home
#     # [Tags]      Home    Destaque de Vendas
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então opção vc pode gostar deve ser exibido

# Validar exibição de Só no Globoplay na home
#     # [Tags]      Home    Destaque de Vendas
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então opção sobreviventes deve ser exibido

# Validar exibição de Escolha seu destino na home
#     # [Tags]      Home    Destaque de Vendas
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então opção Mais Visto deve ser exibido

# Validar exibição de Veja também na home
#     # [Tags]      Home    Destaque de Vendas
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então opção Continue Navegando deve ser exibido

# Validar exibição de componente de Séries na home
#     # [Tags]      Home    Destaque de Vendas
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então opção sobreviventes deve ser exibido

# Validar exibição de Vídeos mais vistos na home
#     # [Tags]      Home    Destaque de Vendas
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então opção Continue Navegando deve ser exibido

# Validar exibição de Continue navegando na home
#     # [Tags]      Home    Destaque de Vendas
#     Dado que sou um usuário anônimo
#     E que estou na home
#     Então opção Continue Navegando deve ser exibido

# *** Keywords ***
# Dado que sou um usuário anônimo
#     Acessar a página Home
