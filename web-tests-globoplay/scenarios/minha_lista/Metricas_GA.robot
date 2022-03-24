*** Settings ***
Documentation   Disparo de métricas do GA

Default Tags    Métricas_GA

# IMPORT DE VARIÁVEIS DE OUTROS ARQUIVOS
Resource            ${EXECDIR}/environment.robot

# O QUE FAZER ANTES DA EXECUÇÃO DOS TESTES
Suite Setup         Before Suite

# O QUE FAZER ANTES DE CADA UM DOS TESTES - ABRIR NAVEGADOR
Test Setup          Before Scenario

# O QUE FAZER APÓS CADA UM DOS TESTES - FECHAR NAVEGADOR
Test Teardown       After Scenario

*** Test Cases ***
Validar disparo de métricas para o GA
    # LOGIN
    Dado que sou um usuário assinante globoplay básico
    E que estou na home

    # AGUARDAR 10S NA HOME PARA ENVIO DE MÉTRICAS
    Sleep   10s

    # ACESSA UM TÍTULO DO TRILHO "NOVIDADES"
    Quando acessar um título
    E incluir um título na minha lista
    E clicar em voltar
    E acessar a minha lista

    # ACESSA O TÍTULO NA MINHA LISTA PARA VERIFICAR SE É O MESMO TÍTULO QUR FOI ADICIONADO ANTERIORMENTE
    ENTÃO o título deve estar listado

    # ASSISTIR TÍTULO
    QUANDO clicar em voltar
    #E clicar em voltar
    DADO que estou na home
    QUANDO clicar no menu "Busca"
    E buscar o termo no limite
    E acessar o título retornado na busca
    E clicar em assista
    E assistir o vídeo por 2m
    E pausar o vídeo
    E dar play no vídeo
    E assistir o vídeo por 1m

    # ASSISTIR CANAIS AO VIVO
    E sair do player VOD
    E clicar em voltar
    E clicar no menu "Agora na TV"
    E assistir canal ao vivo por 2m
    E selecionar o filtro de canais ao vivo "gratuitos"
    E selecionar o canal TVGlobo
    E trocar de canal
    E assistir canal ao vivo por 2m
    Então sair do player de canais ao vivo

