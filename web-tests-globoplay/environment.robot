*** Settings ***
Documentation           Controle de ambientes e configurações gerais

#IMPORT BIBLIOTECA DO OPERATING SYSTEM DE TAREFAS RELACIONADAS AO SISTEMA OPERACIONAL
Library                 OperatingSystem

#IMPORT SELENIUM E NÃO REALIZA NENHUMA AÇÃO DEFAULT EM CASO DE ERRO DE EXECUÇÃO
Library                 SeleniumLibrary
...                     run_on_failure=Nothing
Library                 Collections

Library                 String
# Library                 Screenshot  ${path_screenshots}

Resource                ../web-tests-globoplay/config/usuarios/accounts.robot
Resource                ../web-tests-globoplay/config/login/LoginExterno_Locators.robot
Resource                ../web-tests-globoplay/config/home/Home_Locators.robot
Resource                ../web-tests-globoplay/config/explore_categorias/MenuExplore.robot
Resource                ../web-tests-globoplay/config/explore_podcasts/MenuExplore_podcasts.robot
# Resource                ../web-tests-globoplay/config/MenuExplore_Locators.robot
# Resource                ../web-tests-globoplay/config/MenuExplore_SubmenuProgramasLocais_Locators.robot
Resource                ../web-tests-globoplay/config/agora_Na_Tv/AgoraNaTvLocators.robot
# Resource                ../web-tests-globoplay/config/TitlePage_Locators.robot
# Resource                ../web-tests-globoplay/config/AtivarContaLocators.robot
# Resource                ../web-tests-globoplay/config/MenuBusca_Locators.robot
# Resource                ../web-tests-globoplay/config/MenuAgoraNaTV_Locators.robot
# Resource                ../web-tests-globoplay/config/MenuAgoraNaTV_Programacao_Locator.robot
# Resource                ../web-tests-globoplay/config/MenuMinhaConta_SubmenuMinhaLista_Locators.robot
# Resource                ../web-tests-globoplay/config/MenuMinhaConta_SubmenuMinhaConta_Locators.robot
# Resource                ../web-tests-globoplay/config/MenuMinhaConta_SubmenuConfiguracoes_Locators.robot
# Resource                ../web-tests-globoplay/config/MenuMinhaConta_SubmenuAjuda_Locators.robot
# Resource                ../web-tests-globoplay/config/MenuMinhaConta_SubmenuSobreSeuDispositivo_Locators.robot
# Resource                ../web-tests-globoplay/config/MenuMinhaConta_SubmenuTermosEPoliticas_Locators.robot
# Resource                ../web-tests-globoplay/config/LGPD_Locators.robot
# Resource                ../web-tests-globoplay/config/Player_Locators.robot
Resource                BDDptbr.robot
Resource                ../web-tests-globoplay/script/keywords.robot
Resource                ../web-tests-globoplay/config/explore_categorias/variables_categorias.robot


*** Variables ***
# ${url}                     https://beta-globoplay.globo.com/
${url}                      https://globoplay.globo.com/
${url_novelas}              https://globoplay.globo.com/categorias/novelas/ 
${url_explore}              https://globoplay.globo.com/categorias/
${url_pod}                  https://globoplay.globo.com/podcasts/
${url_originais}            https://globoplay.globo.com/podcasts/categorias/podcasts-originais-globoplay/
${url_mao_armada}           https://globoplay.globo.com/podcasts/a-mao-armada/7b135c4e-0847-4339-ae77-7d5605ea0ec7
${url_papo_parente}         https://globoplay.globo.com/podcasts/papo-de-parente/325d6028-6db1-48a1-9853-cd87da6e0f23
${url_mais_ouvidos}         https://globoplay.globo.com/podcasts/categorias/podcasts-mais-ouvidos/

${url_agora_tv}             https://globoplay.globo.com/tv-globo/ao-vivo

#${PROXY}                proxy.globoi.com:3128   #192.168.0.108:8888 # IP:PORT or HOST:PORT

#CONFIGURAÇÕES DO BROWSER Firefox
${browserOptions_firefox}       #add_argument("--headless");
...                             add_argument("--disable-popup-blocking");
...                             add_argument("--no-sandbox");
...                             add_argument("—-disable-gpu");
...                             add_argument("--disable-infobars");
...                             add_argument("--disable-dev-shm-usage");
...                             add_argument("--user-agent= Mozilla/5.0 (Windows NT 10.0; WOW64; rv:70.0) Gecko/20100101 Firefox/70.0")
# ...                             add_argument("--proxy-server=http://${PROXY}")


#CONFIGURAÇÕES DO BROWSER CHROME
${browserOptions_chrome}        #add_argument("--headless");
...                             add_argument("--disable-popup-blocking");
...                             add_argument("--no-sandbox");
...                             add_argument("—-disable-gpu");
...                             add_argument("--disable-infobars");
...                             add_argument("--disable-dev-shm-usage");
...                             add_argument("--user-agent= GloboplayNative/1.0.0M");
...                             add_argument("window-size=1400,600");
# ...                             add_experimental_option("excludeSwitches", ["enable-automation"])
# ...                             add_experimental_option('useAutomationExtension', False)
#...                            add_argument("--proxy-server=http://${PROXY}")


${path_screenshots}     screenshots

#TIMEOUT
${timeout_20}                   20s

*** Keywords ***
Before Suite
    #CRIAR PASTA, SE NÃO EXISTIR
    Create Directory                ${path_screenshots}/${SUITE NAME}

    #ESVAZIAR PASTA COM SCREENSHOTS DA EXECUÇÃO ANTERIOR
    Empty Directory                 ${path_screenshots}/${SUITE NAME}

    #REMOVER ARQUIVOS DE LOG GERADOS LOCALMENTE

    


Before Scenario
    #ABRIR O BROWSER NA URL CONFIGURADA NAS VARIABLES ACIMA
    Open Browser                    ${url}  firefox     options=${browserOptions_firefox}
    # Open Browser                    ${url}  chrome      option = Options()

    # --- MAXIMIZA O NAVEGADOR FULL ---
    # Maximize Browser Window

    # --- MAXIMIZA O NAVEGADOR DE ACORDO COM A RESOLUÇÃO DESEJADA ---
    Set Window Size	1920   1080	

    #INCLUSÃO DE REPETIÇÃO PARA CASO DE QUEDA DE REDE (OCORRENDO POR VEZES NO PIPELINE)
    FOR     ${x}    IN  2
        #ACEITE LGPD
        #SE TELA DE SMART_INTERVENTION APARECER
        ${condition_prosseguir_button}=   BuiltIn.Run Keyword And Ignore Error     Wait until element is visible    ${LGPD.btnProsseguir}   20s
        Run Keyword If  '${condition_prosseguir_button[0]}' == 'PASS'   Run Keywords
        ...         Click element    ${LGPD.btnProsseguir}
        ...         AND     EXIT FOR LOOP
        ...         ELSE    Go To   ${url}
    END


    #AGUARDAR A HOME SER CARREGADA
    Wait Until Element Is Visible   ${homePage.pagina}     20s


After Scenario
    Set Screenshot Directory    ${path_screenshots}/${SUITE NAME}
    Capture Page Screenshot     
    Close Browser
    Remove Files                ${EXECDIR}/geckodriver-*.log

