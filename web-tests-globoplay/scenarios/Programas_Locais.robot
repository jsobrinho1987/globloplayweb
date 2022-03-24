*** Settings ***
Documentation   Acesso ao submenu Programas Locais

Default Tags    Programas Locais

# IMPORT DE VARIÁVEIS DE OUTROS ARQUIVOS
Resource            ${EXECDIR}/environment.robot

# O QUE FAZER ANTES DA EXECUÇÃO DOS TESTES
Suite Setup         Before Suite

# O QUE FAZER ANTES DE CADA UM DOS TESTES - ABRIR NAVEGADOR
Test Setup          Before Scenario

# O QUE FAZER APÓS CADA UM DOS TESTES - FECHAR NAVEGADOR
Test Teardown       After Scenario

*** Test Cases ***
Acessar Acre nos programas locais com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Categorias"
    E clicar na categoria programas_locais
    E clicar no programa local acre
    E clicar no item acre

Acessar Alagoas nos programas locais com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Categorias"
    E clicar na categoria programas_locais
    E clicar no programa local alagoas
    E clicar no item alagoas

Acessar Amapá nos programas locais com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Categorias"
    E clicar na categoria programas_locais
    E clicar no programa local amapa
    E clicar no item amapa

Acessar Amazonas nos programas locais com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Categorias"
    E clicar na categoria programas_locais
    E clicar no programa local amapa
    E clicar no item amazonas

Acessar Bahia nos programas locais com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Categorias"
    E clicar na categoria programas_locais
    E clicar no programa local bahia
    E clicar no item feira_de_santana
    E voltar
    E clicar no item itabuna
    E voltar
    E clicar no item salvador
    E voltar
    E clicar no item vitoria_da_conquista

Acessar Ceará nos programas locais com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Categorias"
    E clicar na categoria programas_locais
    E clicar no programa local ceara
    E clicar no item fortaleza
    E voltar
    E clicar no item juazeiro_do_norte

Acessar Distrito Federal nos programas locais com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Categorias"
    E clicar na categoria programas_locais
    E clicar no programa local distrito_federal
    E clicar no item distrito_federal

Acessar Espírito Santo nos programas locais com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Categorias"
    E clicar na categoria programas_locais
    E clicar no programa local espirito_santo
    E clicar no item grande_vitoria

Acessar Maranhão nos programas locais com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Categorias"
    E clicar na categoria programas_locais
    E clicar no programa local maranhao
    E clicar no item maranhao

Acessar Mato Grosso nos programas locais com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Categorias"
    E clicar na categoria programas_locais
    E clicar no programa local mato_grosso
    E clicar no item cuiaba
    E voltar
    E clicar no item rondonopolis
    E voltar
    E clicar no item sinop
    E voltar
    E clicar no item tangara_da_serra

Acessar Mato Grosso do Sul nos programas locais com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Categorias"
    E clicar na categoria programas_locais
    E clicar no programa local mato_grosso_do_sul
    E clicar no item campo_grande
    E voltar
    E clicar no item corumba
    E voltar
    E clicar no item ponta_pora

Acessar Minas Gerais nos programas locais com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Categorias"
    E clicar na categoria programas_locais
    E clicar no programa local minas_gerais
    E clicar no item bh_e_regiao
    E voltar
    E clicar no item centro_oeste
    E voltar
    E clicar no item grande_minas
    E voltar
    E clicar no item sul_de_minas
    E voltar
    E clicar no item uberaba
    E voltar
    E clicar no item uberlandia_ituiutaba
    E voltar
    E clicar no item vales_de_minas
    E voltar
    E clicar no item zona_da_mata

Acessar Pará nos programas locais com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Categorias"
    E clicar na categoria programas_locais
    E clicar no programa local para
    E clicar no item belem_e_regiao
    E voltar
    E clicar no item santarem_e_regiao

Acessar Paraíba nos programas locais com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Categorias"
    E clicar na categoria programas_locais
    E clicar no programa local paraiba
    E clicar no item campina_grande
    E voltar
    E clicar no item joao_pessoa

Acessar Paraná nos programas locais com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Categorias"
    E clicar na categoria programas_locais
    E clicar no programa local parana
    E clicar no item cascavel
    E voltar
    E clicar no item curitiba
    E voltar
    E clicar no item foz_do_iguacu
    E voltar
    E clicar no item guarapuava
    E voltar
    E clicar no item londrina
    E voltar
    E clicar no item maringa
    E voltar
    E clicar no item paranavai
    E voltar
    E clicar no item ponta_grossa

Acessar Pernambuco nos programas locais com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Categorias"
    E clicar na categoria programas_locais
    E clicar no programa local pernambuco
    E clicar no item caruaru_e_regiao
    E voltar
    E clicar no item petrolina_e_regiao
    E voltar
    E clicar no item recife_e_regiao

Acessar Piauí nos programas locais com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Categorias"
    E clicar na categoria programas_locais
    E clicar no programa local piaui
    E clicar no item piaui

Acessar Rio de Janeiro nos programas locais com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Categorias"
    E clicar na categoria programas_locais
    E clicar no programa local rio_de_janeiro
    E clicar no item norte_fluminense
    E voltar
    E clicar no item regiao_dos_lagos
    E voltar
    E clicar no item rj_e_regiao
    E voltar
    E clicar no item sul_e_costa_verde

Acessar Rio Grande do Norte nos programas locais com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Categorias"
    E clicar na categoria programas_locais
    E clicar no programa local rio_grande_do_norte
    E clicar no item rio_grande_do_norte

Acessar Rio Grande do Sul nos programas locais com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Categorias"
    E clicar na categoria programas_locais
    E clicar no programa local rio_grande_do_sul
    E clicar no item bage
    E voltar
    E clicar no item caxias_do_sul
    E voltar
    E clicar no item cruz_alta
    E voltar
    E clicar no item erechim
    E voltar
    E clicar no item passo_fundo
    E voltar
    E clicar no item pelotas
    E voltar
    E clicar no item porto_alegre
    E voltar
    E clicar no item rio_grande
    E voltar
    E clicar no item santa_cruz
    E voltar
    E clicar no item santa_maria
    E voltar
    E clicar no item santa_rosa
    E voltar
    E clicar no item uruguaiana

Acessar Rondônia nos programas locais com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Categorias"
    E clicar na categoria programas_locais
    E clicar no programa local rondonia
    E clicar no item rondonia

Acessar Roraima nos programas locais com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Categorias"
    E clicar na categoria programas_locais
    E clicar no programa local roraima
    E clicar no item roraima

Acessar Santa Catarina nos programas locais com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Categorias"
    E clicar na categoria programas_locais
    E clicar no programa local santa_catarina
    E clicar no item blumenau
    E voltar
    E clicar no item chapeco
    E voltar
    E clicar no item crisciuma
    E voltar
    E clicar no item florianopolis
    E voltar
    E clicar no item joinville

Acessar São Paulo nos programas locais com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Categorias"
    E clicar na categoria programas_locais
    E clicar no programa local sao_paulo
    E clicar no item bauru_marilia
    E voltar
    E clicar no item campinas_regiao
    E voltar
    E clicar no item mogi_suzano
    E voltar
    E clicar no item presidente_prudente_regiao
    E voltar
    E clicar no item ribeirao_franca
    E voltar
    E clicar no item rio_preto_aracatuba
    E voltar
    E clicar no item santos_regiao
    E voltar
    E clicar no item sao_carlos_araraquara
    E voltar
    E clicar no item sao_paulo_regiao
    E voltar
    E clicar no item sorocaba_jundiai
    E voltar
    E clicar no item vale_paraiba_regiao

Acessar Sergipe e Região nos programas locais com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Categorias"
    E clicar na categoria programas_locais
    E clicar no programa local sergipe
    E clicar no item sergipe

Acessar Tocantins e Região nos programas locais com um usuário assinante globoplay básico
    Dado que sou um usuário assinante globoplay básico
    clicar no menu "Explore"
    E clicar em "Categorias"
    E clicar na categoria programas_locais
    E clicar no programa local tocantins
    E clicar no item tocantins