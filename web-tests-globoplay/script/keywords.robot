*** Settings ***
Library    SeleniumLibrary
*** Keywords ***

#----------------------------------------------------------------#
#              VALIDAÇÃO DE ACESSOS POR USUÁRIOS                 #
#----------------------------------------------------------------#

que sou um usuário anônimo
    # Acessa Home_Locator
    Log        Verifica acesso Globoplay
    Wait Until Element Is Visible   ${homePage.pagina}

    # CASO HAJA ALGUM USUÁRIO LOGADO
    # ${user_anonimo}=    BuiltIn.Run Keyword And Ignore Error   Element Should Be Visible    ${MenuMinhaConta_Perfil.foto_anonimo}
    # Run Keyword If  '${user_anonimo[0]}' == 'FAIL'   Trocar conta para user anônimo

Trocar conta para user anônimo
    Click element   ${MenuMinhaConta_Perfil.btnTrocarConta}
    Wait until element is visible   ${MenuMinhaConta_Perfil_TrocarConta.btnPular}   10s
    Click element   ${MenuMinhaConta_Perfil_TrocarConta.btnPular}

Trocar conta para user logado
    ${user_anonimo}=    BuiltIn.Run Keyword And Ignore Error   Element Should Be Visible    ${MenuMinhaConta_Perfil.foto_anonimo}
    Run Keyword If  '${user_anonimo[0]}' == 'PASS'   Click element  ${MenuMinhaConta_Perfil.btnEntrar}
    ...         ELSE    Click element   ${MenuMinhaConta_Perfil.btnTrocarConta}

    Wait until element is visible   ${MenuMinhaConta_Perfil_TrocarConta.user}    10s
    #Click element   ${MenuMinhaConta_Perfil_TrocarConta.user}

    Sleep   2s
    Press Keys  ${MenuMinhaConta_Perfil_TrocarConta.user}    ENTER

    Wait until element is visible   ${pageHome.HighlightPremium}    5s

#ADAPTAÇÃO PARA LOGIN DAS DUAS FORMAS ENQUANTO ESTIVER NO PROCESSO DE TRANSIÇÃO
#POSTERIORMENTE PODERÁ SER REMOVIDO O CÓDIGO REFERENTE AO LOGIN SEM SDK
login com ou sem sdk
    ${condition_sdk_disponivel}=   BuiltIn.Run Keyword And Ignore Error     Wait until element is visible   ${MenuMinhaConta_Perfil.btnLoginEmailNaTV}  5s
    # TENTE LOGAR COM O SDK
    Run Keyword If  '${condition_sdk_disponivel[0]}' == 'PASS'   Run Keywords
    ...         Click element   ${MenuMinhaConta_Perfil.btnLoginEmailNaTV}
    ...         AND     var auxiliar para login sdk
    # SE FALHAR, LOGAR SEM O SDK
    ...         ELSE    Run Keywords
    ...         Click element    ${MenuMinhaConta_Perfil.btnOtherWayLogin}
    ...         AND     var auxiliar para login antigo

    #SET SUITE VARIABLE  ${condition_sdk_disponivel[0]}

var auxiliar para login sdk
    ${type_login}=  Set variable    _sdk
    SET SUITE VARIABLE  ${type_login}

var auxiliar para login antigo
    ${type_login}=  Set variable    _antigo
    SET SUITE VARIABLE  ${type_login}


#SIMULA UMA FUNCTION, QUE RECEBE O PARÂMETRO "USER" DE ACORDO COM O DIGITADO NO TEST CASE E REALIZA O LOGIN
que sou um usuário ${user}
    #SE QUISER LOGAR COM UM USUÁRIO ANÔNIMO, EXECUTE OUTRA KEYWORD
    ${condition_user}=   BuiltIn.Run Keyword And Ignore Error    Should Be True  '${user}' == 'anônimo'
    Run Keyword If  '${condition_user[0]}' == 'PASS'    sou um usuário anônimo


    Click element   ${pageHome.btnMenuHome}


    #SE O BUTTON "MINHACONTA" NÃO ESTIVER VISÍVEL, CLICK EM "MINHACONTA_USERLOGADO"
    ${condition_minhaconta_button}=   BuiltIn.Run Keyword And Ignore Error    Click element   ${pageHome.btnMenuMinhaConta}
    Run Keyword If  '${condition_minhaconta_button[0]}' == 'FAIL'   Click element   ${pageHome.btnMenuMinhaConta_UserLogado}


    Wait until element is visible   ${MenuMinhaConta_Submenu.Perfil}    10s
    Click element   ${MenuMinhaConta_Submenu.Perfil}


    #SE O BUTTON "ENTRAR" NÃO ESTIVER VISÍVEL, CLICK EM "TROCAR CONTA"
    ${condition_enter_button}=   BuiltIn.Run Keyword And Ignore Error    Clicar em "Entrar"
    Run Keyword If  '${condition_enter_button[0]}' == 'FAIL'   Run Keywords
    ...         Clicar em "Trocar Conta"
    ...         AND     Wait until element is visible   ${MenuMinhaConta_Perfil_TrocarConta.btnPular}    10s


    #SE O BUTTON "TROCAR CONTA" ESTIVER VISÍVEL CLICK EM "ADDUSER", CASO CONTRÁRIO EXECUTE LOGIN
    ${condition_AddUser_button}=   BuiltIn.Run Keyword And Ignore Error     Click element   ${MenuMinhaConta_Perfil_TrocarConta.addUser}
    Run Keyword If  '${condition_AddUser_button[0]}' == 'PASS'  login com ou sem sdk
    ...         ELSE    login com ou sem sdk



    #SEPARA STRING EMAIL NO ARRAY LOGIN
    @{login}=  split string to characters  ${${user}.email}


    FOR     ${x}    IN  @{login}
        #CONDIÇÕES PATRA VERIFICAÇÃO E USO DE TECLAS QUE SEJAM DIFERENTES DO NOME DE SUA RESPECTIVA VARIÁVEL
        ${condition_zero}=   BuiltIn.Run Keyword And Ignore Error    Should Be True  '${x}' == '0'
        ${condition_um}=   BuiltIn.Run Keyword And Ignore Error    Should Be True  '${x}' == '1'
        ${condition_dois}=   BuiltIn.Run Keyword And Ignore Error    Should Be True  '${x}' == '2'
        ${condition_tres}=   BuiltIn.Run Keyword And Ignore Error    Should Be True  '${x}' == '3'
        ${condition_quatro}=   BuiltIn.Run Keyword And Ignore Error    Should Be True  '${x}' == '4'
        ${condition_cinco}=   BuiltIn.Run Keyword And Ignore Error    Should Be True  '${x}' == '5'
        ${condition_seis}=   BuiltIn.Run Keyword And Ignore Error    Should Be True  '${x}' == '6'
        ${condition_sete}=   BuiltIn.Run Keyword And Ignore Error    Should Be True  '${x}' == '7'
        ${condition_oito}=   BuiltIn.Run Keyword And Ignore Error    Should Be True  '${x}' == '8'
        ${condition_nove}=   BuiltIn.Run Keyword And Ignore Error    Should Be True  '${x}' == '9'

        ${condition_ponto}=   BuiltIn.Run Keyword And Ignore Error    Should Be True  '${x}' == '.'
        ${condition_arroba}=   BuiltIn.Run Keyword And Ignore Error    Should Be True  '${x}' == '@'
        ${condition_underline}=   BuiltIn.Run Keyword And Ignore Error    Should Be True  '${x}' == '_'
        ${condition_traco}=   BuiltIn.Run Keyword And Ignore Error    Should Be True  '${x}' == '-'



        #CONDICIONAL PARA USO DAS TECLAS NA INSERÇÃO DO EMAIL
        Run Keyword If  '${condition_ponto[0]}' == 'PASS'    Click element   ${keyword_login${type_login}.ponto}
        ...         ELSE IF     '${condition_arroba[0]}' == 'PASS'  Click element   ${keyword_login${type_login}.arroba}
        ...         ELSE IF     '${condition_zero[0]}' == 'PASS'    Click element   ${keyword_login${type_login}.zero}
        ...         ELSE IF     '${condition_um[0]}' == 'PASS'    Click element   ${keyword_login${type_login}.um}
        ...         ELSE IF     '${condition_dois[0]}' == 'PASS'    Click element   ${keyword_login${type_login}.dois}
        ...         ELSE IF     '${condition_tres[0]}' == 'PASS'    Click element   ${keyword_login${type_login}.tres}
        ...         ELSE IF     '${condition_quatro[0]}' == 'PASS'    Click element   ${keyword_login${type_login}.quatro}
        ...         ELSE IF     '${condition_cinco[0]}' == 'PASS'    Click element   ${keyword_login${type_login}.cinco}
        ...         ELSE IF     '${condition_seis[0]}' == 'PASS'    Click element   ${keyword_login${type_login}.seis}
        ...         ELSE IF     '${condition_sete[0]}' == 'PASS'    Click element   ${keyword_login${type_login}.sete}
        ...         ELSE IF     '${condition_oito[0]}' == 'PASS'    Click element   ${keyword_login${type_login}.oito}
        ...         ELSE IF     '${condition_nove[0]}' == 'PASS'    Click element   ${keyword_login${type_login}.nove}
        ...         ELSE IF     '${condition_underline[0]}' == 'PASS'    Click element   ${keyword_login${type_login}.underline}
        ...         ELSE IF     '${condition_traco[0]}' == 'PASS'    Click element   ${keyword_login${type_login}.traco}
        ...         ELSE    Click element   ${keyword_login${type_login}.${x}}

    END


    Click element   ${LoginApp${type_login}.btnContinuar}
    #Press Keys  ${LoginApp.btnContinuar}    Enter


    #SEPARA STRING PASSWORD NO ARRAY SENHA
    @{senha}=  split string to characters  ${${user}.password}


    FOR     ${x}    IN  @{senha}
        #CONDIÇÕES PATRA VERIFICAÇÃO E USO DE TECLAS QUE SEJAM DIFERENTES DO NOME DE SUA RESPECTIVA VARIÁVEL
        ${condition_zero}=   BuiltIn.Run Keyword And Ignore Error    Should Be True  '${x}' == '0'
        ${condition_um}=   BuiltIn.Run Keyword And Ignore Error    Should Be True  '${x}' == '1'
        ${condition_dois}=   BuiltIn.Run Keyword And Ignore Error    Should Be True  '${x}' == '2'
        ${condition_tres}=   BuiltIn.Run Keyword And Ignore Error    Should Be True  '${x}' == '3'
        ${condition_quatro}=   BuiltIn.Run Keyword And Ignore Error    Should Be True  '${x}' == '4'
        ${condition_cinco}=   BuiltIn.Run Keyword And Ignore Error    Should Be True  '${x}' == '5'
        ${condition_seis}=   BuiltIn.Run Keyword And Ignore Error    Should Be True  '${x}' == '6'
        ${condition_sete}=   BuiltIn.Run Keyword And Ignore Error    Should Be True  '${x}' == '7'
        ${condition_oito}=   BuiltIn.Run Keyword And Ignore Error    Should Be True  '${x}' == '8'
        ${condition_nove}=   BuiltIn.Run Keyword And Ignore Error    Should Be True  '${x}' == '9'

        ${condition_ponto}=   BuiltIn.Run Keyword And Ignore Error    Should Be True  '${x}' == '.'
        ${condition_arroba}=   BuiltIn.Run Keyword And Ignore Error    Should Be True  '${x}' == '@'
        ${condition_underline}=   BuiltIn.Run Keyword And Ignore Error    Should Be True  '${x}' == '_'
        ${condition_traco}=   BuiltIn.Run Keyword And Ignore Error    Should Be True  '${x}' == '-'


        #CONDICIONAL PARA USO DAS TECLAS NA INSERÇÃO DA SENHA
        Run Keyword If  '${condition_ponto[0]}' == 'PASS'    Click element   ${keyword_login${type_login}.ponto}
       ...         ELSE IF     '${condition_arroba[0]}' == 'PASS'  Click element   ${keyword_login${type_login}.arroba}
        ...         ELSE IF     '${condition_zero[0]}' == 'PASS'    Click element   ${keyword_login${type_login}.zero}
        ...         ELSE IF     '${condition_um[0]}' == 'PASS'    Click element   ${keyword_login${type_login}.um}
        ...         ELSE IF     '${condition_dois[0]}' == 'PASS'    Click element   ${keyword_login${type_login}.dois}
        ...         ELSE IF     '${condition_tres[0]}' == 'PASS'    Click element   ${keyword_login${type_login}.tres}
        ...         ELSE IF     '${condition_quatro[0]}' == 'PASS'    Click element   ${keyword_login${type_login}.quatro}
        ...         ELSE IF     '${condition_cinco[0]}' == 'PASS'    Click element   ${keyword_login${type_login}.cinco}
        ...         ELSE IF     '${condition_seis[0]}' == 'PASS'    Click element   ${keyword_login${type_login}.seis}
        ...         ELSE IF     '${condition_sete[0]}' == 'PASS'    Click element   ${keyword_login${type_login}.sete}
        ...         ELSE IF     '${condition_oito[0]}' == 'PASS'    Click element   ${keyword_login${type_login}.oito}
        ...         ELSE IF     '${condition_nove[0]}' == 'PASS'    Click element   ${keyword_login${type_login}.nove}
        ...         ELSE IF     '${condition_underline[0]}' == 'PASS'    Click element   ${keyword_login${type_login}.underline}
        ...         ELSE IF     '${condition_traco[0]}' == 'PASS'    Click element   ${keyword_login${type_login}.traco}
        ...         ELSE    Click element   ${keyword_login${type_login}.${x}}

    END

    Click element   ${LoginApp${type_login}.btnEntrar}

    #CASO RECEBA MENSAGEM DE ERRO POR QUEDA DE CONEXÃO OU EM MOMENTOS DE PICO, TENTE OUTRAS 3X CLICAR NO BOTÃO ENTRAR
    FOR    ${i}    IN RANGE    3

        ${condition_login_failed}=  BuiltIn.Run Keyword And Ignore Error      Wait until element is visible   ${LoginApp.errorMessage}    10s
        Run Keyword If  '${condition_login_failed[0]}' == 'PASS'    Click element   ${LoginApp.btnEntrar}
        ...         ELSE    Exit For Loop

        Sleep   5s

    END

#----------------------------------------------------------------#
#              VALIDAÇÃO DOS CENÁRIOS DE MINHA lISTA             #
#----------------------------------------------------------------#

buscar o termo ${palavra}
    #SEPARA STRING PALAVRA EM LETRAS NO ARRAY BUSCA
    @{busca}=  split string to characters  ${palavra}


    FOR     ${x}    IN  @{busca}
        #CONDIÇÕES PARA VERIFICAÇÃO E USO DE TECLAS QUE SEJAM DIFERENTES DO NOME DE SUA RESPECTIVA VARIÁVEL
        ${condition_zero}=   BuiltIn.Run Keyword And Ignore Error    Should Be True  '${x}' == '0'
        ${condition_um}=   BuiltIn.Run Keyword And Ignore Error    Should Be True  '${x}' == '1'
        ${condition_dois}=   BuiltIn.Run Keyword And Ignore Error    Should Be True  '${x}' == '2'
        ${condition_tres}=   BuiltIn.Run Keyword And Ignore Error    Should Be True  '${x}' == '3'
        ${condition_quatro}=   BuiltIn.Run Keyword And Ignore Error    Should Be True  '${x}' == '4'
        ${condition_cinco}=   BuiltIn.Run Keyword And Ignore Error    Should Be True  '${x}' == '5'
        ${condition_seis}=   BuiltIn.Run Keyword And Ignore Error    Should Be True  '${x}' == '6'
        ${condition_sete}=   BuiltIn.Run Keyword And Ignore Error    Should Be True  '${x}' == '7'
        ${condition_oito}=   BuiltIn.Run Keyword And Ignore Error    Should Be True  '${x}' == '8'
        ${condition_nove}=   BuiltIn.Run Keyword And Ignore Error    Should Be True  '${x}' == '9'
        ${condition_espaco}=   BuiltIn.Run Keyword And Ignore Error    Should Be True  '${x}' == ' '



        #CONDICIONAL PARA USO DAS TECLAS NA INSERÇÃO DO EMAIL
        Run Keyword If  '${condition_zero[0]}' == 'PASS'    Click element   ${keyword_busca.zero}
        ...         ELSE IF     '${condition_um[0]}' == 'PASS'    Click element   ${keyword_busca.um}
        ...         ELSE IF     '${condition_dois[0]}' == 'PASS'    Click element   ${keyword_busca.dois}
        ...         ELSE IF     '${condition_tres[0]}' == 'PASS'    Click element   ${keyword_busca.tres}
        ...         ELSE IF     '${condition_quatro[0]}' == 'PASS'    Click element   ${keyword_busca.quatro}
        ...         ELSE IF     '${condition_cinco[0]}' == 'PASS'    Click element   ${keyword_busca.cinco}
        ...         ELSE IF     '${condition_seis[0]}' == 'PASS'    Click element   ${keyword_busca.seis}
        ...         ELSE IF     '${condition_sete[0]}' == 'PASS'    Click element   ${keyword_busca.sete}
        ...         ELSE IF     '${condition_oito[0]}' == 'PASS'    Click element   ${keyword_busca.oito}
        ...         ELSE IF     '${condition_nove[0]}' == 'PASS'    Click element   ${keyword_busca.nove}
        ...         ELSE IF     '${condition_espaco[0]}' == 'PASS'    Click element   ${keyword_busca.espaco}
        ...         ELSE    Click element   ${keyword_busca.${x}}

    END



retornará o resultado correto
    ${condition_result}=   BuiltIn.Run Keyword And Ignore Error     Wait until element is visible   ${MenuBusca.resultado}  20s
    Run Keyword If  '${condition_result[0]}' == 'PASS'    Wait until element is visible   ${MenuBusca.poster}   20s
    ...         ELSE    Element Should Be Visible   ${MenuBusca.erro_busca}

    #Wait until element is visible   ${MenuBusca.resultado}   20s

    #${condition_result}=   BuiltIn.Run Keyword And Ignore Error     Element Should Be Visible   ${MenuBusca.poster} 20s
    #Run Keyword If  '${condition_result[0]}' == 'FALSE'    Element Should Be Visible   ${MenuBusca.erro_busca} 20s



acessar o título retornado na busca
    Wait until element is visible   ${MenuBusca.poster}  20s

    Click element   ${MenuBusca.poster}



clicar no menu "Minha Conta"
    ${condition_user_logged}=   BuiltIn.Run Keyword And Ignore Error    Wait until element is visible   ${pageHome.btnMenuMinhaConta}   10s
    Run Keyword If  '${condition_user_logged[0]}' == 'PASS'    Click element    ${pageHome.btnMenuMinhaConta}
    ...         ELSE    Click element   ${pageHome.btnMenuMinhaConta_UserLogado}



clicar no submenu "Configurações"
    Wait until element is visible   ${MenuMinhaConta_Submenu.Configuracoes}  20s
    Click element   ${MenuMinhaConta_Submenu.Configuracoes}



a página de configurações deve ser exibida
    Wait until element is visible   ${SubmenuConfiguracoes.page}  20s
    Click element   ${SubmenuConfiguracoes.page}



clicar no submenu "Sobre seu dispositivo"
    Wait until element is visible   ${MenuMinhaConta_Submenu.SobreSeuDispositivo}  20s
    Click element   ${MenuMinhaConta_Submenu.SobreSeuDispositivo}



a página sobre seu dispositivo deve ser exibida
    Wait until element is visible   ${SubmenuConfiguracoes.page}  20s
    Click element   ${SubmenuConfiguracoes.page}



clicar no submenu "Termos e Políticas"
    Wait until element is visible   ${MenuMinhaConta_Submenu.Termos_e_politicas}  20s
    Click element   ${MenuMinhaConta_Submenu.Termos_e_politicas}



a página termos e políticas deve ser exibida
    Wait until element is visible   ${SubmenuTermos_E_Politicas.page}  20s
    Click element   ${SubmenuTermos_E_Politicas.page}



clicar no submenu "Ajuda"
    Wait until element is visible   ${MenuMinhaConta_Submenu.Ajuda}  20s
    Click element   ${MenuMinhaConta_Submenu.Ajuda}



a página de ajuda deve ser exibida
    Wait until element is visible   ${SubmenuTermos_E_Politicas.page}  20s
    Click element   ${SubmenuTermos_E_Politicas.page}



clicar no submenu "Minha Conta"
    Wait until element is visible   ${MenuMinhaConta_Submenu.MinhaConta}  20s
    Click element   ${MenuMinhaConta_Submenu.MinhaConta}



a página minha conta deve ser exibida
    Wait until element is visible   ${SubmenuMinhaConta.page}  20s
    Click element   ${SubmenuMinhaConta.page}



clicar no submenu "Minha Lista"
    Wait until element is visible   ${MenuMinhaConta_Submenu.MinhaLista}  20s
    Click element   ${MenuMinhaConta_Submenu.MinhaLista}



a página minha lista deve ser exibida
    #EXCEPTION QUE OCORRE APENAS EM WEB AO CLICAR EM VOLTAR NA PAGE MINHA LISTA(NÃO REPRODUZIDO NOS DISPOSITIVOS)
    ${condition_redirect_home}=   BuiltIn.Run Keyword And Ignore Error    Element Should Be Visible    ${pageHome.HighlightPremium}
    Run Keyword If      '${condition_redirect_home[0]}' == 'PASS'   Run Keywords
    ...         clicar no menu "Minha Conta"
    ...         clicar no submenu "Minha Lista"

    Wait until element is visible   ${SubmenuMinhaLista.page}  20s
    Click element   ${SubmenuMinhaLista.page}



acessar um título
    Press Keys  xpath=//body    ARROW_DOWN+ARROW_DOWN
    Press Keys  xpath=//body    ENTER
    Wait until element is visible   ${pageTitle.page}   20s



incluir um título na minha lista
    ${condition_title_add}=   BuiltIn.Run Keyword And Ignore Error    Element Should Be Visible   ${pageTitle.minhalista_button}
    Run Keyword If  '${condition_title_add[0]}' == 'PASS'    Click element    ${pageTitle.minhalista_button}
    ...         ELSE    incluir próximo título disponível do trilho na minha lista

    #PEGA O VALOR DA TAG H1 - NOME DO TÍTULO
    ${title_add}=  Get Text   ${pageTitle.title_name}

    #CRIA UMA VARIAVEL ACESSÍVEL DE OUTRAS KEYWORDS, E ASSOCIA O VALOR DO GET ANTERIOR
    Set Suite Variable  ${title_name}    ${title_add}

    #AGUARDA 10 SEGUNDOS PARA ATUALIZAÇÃO DA MINHA LISTA
    Sleep   10s



incluir próximo título disponível do trilho na minha lista
    FOR   ${x}  IN RANGE    100
        Wait until element is visible     ${pageTitle.voltar_button}  20s
        Click element   ${pageTitle.voltar_button}
        Press Keys  xpath=//body    ARROW_RIGHT
        Sleep       1s
        Press Keys  xpath=//body    ENTER
        Wait until element is visible   ${pageTitle.page}   20s

        ${condition_title_add}=   BuiltIn.Run Keyword And Ignore Error    Element Should Be Visible   ${pageTitle.minhalista_button}    20s
        Run Keyword If  '${condition_title_add[0]}' == 'PASS'   Click element    ${pageTitle.minhalista_button}

        Exit For Loop If    '${condition_title_add[0]}' == 'PASS'

    END



clicar em voltar
    Wait until element is visible   ${pageTitle.voltar_button}  5s
    Click element    ${pageTitle.voltar_button}



acessar a minha lista
    clicar no menu "minha conta"
    clicar no submenu "Minha Lista"

    a página minha lista deve ser exibida

    Set Screenshot Directory    ${path_screenshots}/${SUITE NAME}
    Capture Page Screenshot



o título deve estar listado
    Wait until element is visible   ${SubmenuMinhaLista.last_title_add}     20s
    Click element   ${SubmenuMinhaLista.last_title_add}
    Wait until element is visible   ${pageTitle.page}   20s

    ${title_atual}=  Get Text   ${pageTitle.title_name}

    #COMPARA O NOME DO TÍTULO ACESSADO COM O NOME DO ÚLTIMO TÍTULO ADICIONADO NA MINHA LISTA (set suite variable)
    ${condition_title_equal}=   BuiltIn.Run Keyword And Return    Should Be Equal As Strings    ${title_atual}   ${title_name}
    Run Keyword If  '${condition_title_equal[0]}' == 'PASS'   Sleep    2s



acessar um título da minha lista
    Wait until element is visible   ${SubmenuMinhaLista.last_title_add}     20s
    Click element   ${SubmenuMinhaLista.last_title_add}
    Wait until element is visible   ${pageTitle.page}   20s



remover um título da minha lista
    Wait until element is visible   ${pageTitle.minhalista_adicionado_button}   20s
    Click element   ${pageTitle.minhalista_adicionado_button}
    Wait until element is visible   ${pageTitle.minhalista_button}  20s

    #PEGA O VALOR DA TAG H1 - NOME DO TÍTULO
    ${title_removido}=  Get Text   ${pageTitle.title_name}

    #CRIA UMA VARIAVEL ACESSÍVEL DE OUTRAS KEYWORDS, E ASSOCIA O VALOR DO GET ANTERIOR
    Set Suite Variable  ${title_name_removido}    ${title_removido}

    #AGUARDA 10 SEGUNDOS PARA ATUALIZAÇÃO DA MINHA LISTA
    Sleep   5s



o título não deve estar listado
    Sleep   5s

    #EXCEPTION QUE OCORRE APENAS EM WEB AO CLICAR EM VOLTAR NA PAGE MINHA LISTA(NÃO REPRODUZIDO NOS DISPOSITIVOS)
    ${condition_redirect_home}=   BuiltIn.Run Keyword And Ignore Error    Element Should Be Visible    ${pageHome.HighlightPremium}
    Run Keyword If      '${condition_redirect_home[0]}' == 'PASS'   Run Keywords
    ...         clicar no menu "Minha Conta"
    ...         clicar no submenu "Minha Lista"

    ${condition_empty_list}=   BuiltIn.Run Keyword And Ignore Error    Element Should Be Visible    ${SubmenuMinhaLista.empty_list}
    Run Keyword If      '${condition_empty_list[0]}' == 'PASS'     Sleep   1s
    ...         ELSE IF     '${condition_empty_list[0]}' == 'FAIL'     verificar se título foi removido



verificar se título foi removido
    Wait until element is visible   ${SubmenuMinhaLista.last_title_add}     20s
    Click element   ${SubmenuMinhaLista.last_title_add}
    Wait until element is visible   ${pageTitle.page}   20s

    ${title_atual}=  Get Text   ${pageTitle.title_name}

    #COMPARA O NOME DO TÍTULO ACESSADO COM O NOME DO ÚLTIMO TÍTULO ADICIONADO NA MINHA LISTA (set suite variable)
    ${condition_title_equal}=   BuiltIn.Run Keyword And Return    Should Not Be Equal As Strings    ${title_atual}   ${title_name_removido}
    Run Keyword If  '${condition_title_equal[0]}' == 'PASS'   Sleep    2s



esvaziar a minha lista
    ${condition_empty_list}=   BuiltIn.Run Keyword And Ignore Error    Element Should Be Visible    ${SubmenuMinhaLista.empty_list}
    Run Keyword If      '${condition_empty_list[0]}' == 'PASS'     Sleep   1s
    ...         ELSE IF     '${condition_empty_list[0]}' == 'FAIL'     limpar lista



limpar lista
    FOR    ${i}    IN RANGE    1000

            acessar um título da minha lista
            remover um título da minha lista
            clicar em voltar
            a página minha lista deve ser exibida

            Sleep   5s

            #CASO A LISTA ESTEJA VAZIA, ENCERRA O LOOP. SENÃO, VERIFICA QUE O TÍTULO REMOVIDO NÃO ESTEJA LISTADO
            ${condition_empty_list}=   BuiltIn.Run Keyword And Ignore Error    Element Should Not Be Visible    ${SubmenuMinhaLista.empty_list}
            Run Keyword If      '${condition_empty_list[0]}' == 'PASS'     Sleep   1s
            ...         ELSE    Exit For Loop


            o título não deve estar listado
            clicar em voltar

    END



a minha lista deve estar vazia
    Element Should Be Visible    ${SubmenuMinhaLista.empty_list}


nova aba
    Execute Javascript      window.open()


clicar em "Entrar"
    Click element   ${MenuMinhaConta_Perfil.btnEntrar}


clicar em "Trocar Conta"
    Click element   ${MenuMinhaConta_Perfil.btnTrocarConta}


clicar em "Sair"
    Wait until element is visible   ${MenuMinhaConta_Perfil.btnSair}    10s
    Click element   ${MenuMinhaConta_Perfil.btnSair}

    #CONDICIONAL PARA USO CASO, EM ALGUMA ATUALIZAÇÃO, ${MenuMinhaConta_Perfil_btnSair} != ${MenuMinhaConta_Perfil_TrocarConta.btnSair}

    #${condition_btnSair_Location}=   BuiltIn.Run Keyword And Ignore Error    Wait until element is visible   ${MenuMinhaConta_Perfil.btnSair}    10s
    #Run Keyword If      '${condition_btnSair_Location[0]}' == 'PASS'     Click element   ${MenuMinhaConta_Perfil.btnSair}
    #...         ELSE    Click element   ${MenuMinhaConta_Perfil_TrocarConta.btnSair}


clicar em "Não"
    Click element   ${MenuMinhaConta_Perfil_Logout.cancelar}


clicar em "Sim"
    Click element   ${MenuMinhaConta_Perfil_Logout.confirmar}


o usuário deve continuar logado
    #USUÁRIO DEVE SER DIRECIONADO PARA A TELA DE PERFIL NOVAMENTE
    #MAPEANDO O BOTÃO "SAIR", VISÍVEL APENAS QUANDO HÁ UM USUÁRIO LOGADO
    Wait until element is visible   ${MenuMinhaConta_Perfil.btnSair}    10s


    #CONDICIONAL PARA USO CASO, EM ALGUMA ATUALIZAÇÃO, ${MenuMinhaConta_Perfil_btnSair} != ${MenuMinhaConta_Perfil_TrocarConta.btnSair}

    #${condition_btnSair_Location}=   BuiltIn.Run Keyword And Ignore Error    Wait until element is visible   ${MenuMinhaConta_Perfil.btnSair}    10s
    #Run Keyword If      '${condition_btnSair_Location[0]}' == 'FAIL'     Wait until element is visible   ${MenuMinhaConta_Perfil_TrocarConta.btnSair}   10s


o usuário deve ser deslogado
    #USUÁRIO DEVE SER DIRECIONADO PARA A TELA DE PERFIL NOVAMENTE
    #MAPEANDO A AUSÊNCIA DO BOTÃO "SAIR", OCULTO QUANDO NÃO HÁ USUÁRIO LOGADO
    Sleep   3s
    Element should not be visible   ${MenuMinhaConta_Perfil.btnSair}


selecionar um usuário
    Wait until element is visible   ${MenuMinhaConta_Perfil_TrocarConta.user}   10s
    Click element   ${MenuMinhaConta_Perfil_TrocarConta.user}


clicar em assista
    Wait until element is visible   ${pageTitle.assistir}   20s
    Click element   ${pageTitle.assistir}


assistir o vídeo por ${tempo}
    #AGUARDA O CARREGAMENTO DO PLAYER
    ${condition_player_loaded}=   BuiltIn.Run Keyword And Ignore Error    Wait until element is enabled   ${player.currentTime}   20s
    Run Keyword If      '${condition_player_loaded[0]}' == 'FAIL'   Run Keywords
    ...         Press Keys  xpath=//body    ARROW_DOWN
    ...         AND     Wait until element is enabled   ${player.currentTime}   20s

    #PEGA O VALOR DO ELEMENTO - CURRENT TIME
    ${TempoStart}=  Get Text   ${player.currentTime}
    Sleep   ${tempo}
    Press Keys  xpath=//body    ARROW_DOWN
    ${TempoStop}=  Get Text   ${player.currentTime}



pausar o vídeo
    #VERIFICA QUE O PLAYER ESTÁ EM TELA
    Press Keys  xpath=//body    ARROW_DOWN
    Wait until element is visible   ${player.currentTime}   10s

    #ENVIA COMANDO DO PAUSE, SIMULANDO CLICK NO MEIO DA TELA DO PLAYER
    Press Keys  xpath=//body    ENTER

    #VERIFICAR QUE VÍDEO ESTA EM PAUSE
    #PEGA O VALOR DO ELEMENTO - CURRENT TIME
    ${TempoOnPause}=  Get Text   ${player.currentTime}
    Sleep   5s
    Press Keys  xpath=//body    ARROW_DOWN
    ${TempoPosPause}=  Get Text   ${player.currentTime}

    #VERIFICA SE CURRENT TIME PERMANECEU INALTERADO APÓS O TEMPO DE SLEEP
    ${condition_pause}=   BuiltIn.Run Keyword And Return    Should Be True    '${TempoOnPause}' == '${TempoPosPause}'
    Run Keyword If      '${condition_pause[0]}' == 'PASS'     Sleep   1s



dar play no vídeo
    #VERIFICA QUE O PLAYER ESTÁ EM TELA
    Press Keys  xpath=//body    ARROW_DOWN
    Wait until element is visible   ${player.currentTime}   10s

    #PEGA O VALOR DO ELEMENTO - CURRENT TIME INICIAL
    ${TempoOnPlay}=  Get Text   ${player.currentTime}

    #ENVIA COMANDO DE PLAY, SIMULANDO CLICK NO MEIO DA TELA DO PLAYER
    Press Keys  xpath=//body    ENTER

    #VERIFICAR QUE VÍDEO ESTA EM PLAY
    Sleep   5s
    Press Keys  xpath=//body    ARROW_DOWN
    ${TempoPosPlay}=  Get Text   ${player.currentTime}

    #VERIFICA SE CURRENT TIME FOI ALTERADO APÓS O TEMPO DE SLEEP
    ${condition_play}=   BuiltIn.Run Keyword And Return    Should Be True    '${TempoOnPlay}' < '${TempoPosPlay}'
    Run Keyword If      '${condition_play[0]}' == 'PASS'     Sleep   1s



sair do player VOD
    Press Keys  xpath=//body    ARROW_DOWN
    Wait until element is visible   ${player.voltar_button}     10s
    Click element   ${player.voltar_button}
    Wait until element is visible   ${pageTitle.title_name}      10s


assistir canal ao vivo por ${tempo}
    #AGUARDA O CARREGAMENTO DO PLAYER
    Wait until element is visible   ${pageCanaisAoVivo.gradePgm}    20s

    #VERIFICAR A EXIBIÇÃO DE ALGUM WARNING BLOCK, CASO NEGATIVO, ASSISTA
    #Tempo para carregar o tapume após seleção de canal, se carregado.
    Sleep   10s

    #Verifica a exibição do warning block
    ${condition_warning_block}=   BuiltIn.Run Keyword And Ignore Error    Element should be visible      ${pageCanaisAoVivo.tapumeWarningBlock}
    Run Keyword If  '${condition_warning_block[0]}' == 'PASS'   Return Error    #keyword inexistente para registro de erro
    ...         ELSE    Sleep   ${tempo}



selecionar o filtro de canais ao vivo "${filtro}"
    Press Keys  xpath=//body    ARROW_DOWN
    Wait until element is visible   ${pageCanaisAoVivo.lista_FiltroCanais}  5s

    Click element   ${filtroCanaisAoVivo.${filtro}}



selecionar o canal ${canal}
    #FUTURO SELECIONAR CANAL
    #CANAL SELECIONADO
    ${logo_canal}=  Get Element Attribute  ${pageCanaisAoVivo.canalSelecionado}  alt

    log     ${logo_canal}
    #Wait until element is visible   ${pageCanaisAoVivo.canalTVGlobo}    10s



trocar de canal
    #Verifica a exibição do arrow_down para navegação na lista de canais
    ${condition_lista_de_canais}=   BuiltIn.Run Keyword And Ignore Error    Element should be visible      ${pageCanaisAoVivo.slider_down}
    Run Keyword If  '${condition_lista_de_canais[0]}' == 'PASS'   Click Element     ${pageCanaisAoVivo.slider_down}

    Press Keys  xpath=//body    ENTER



sair do player de canais ao vivo
    Press Keys  xpath=//body    ARROW_LEFT
    que estou na home

# ******************* TESTES MENU EXPLORE *******************

a página novelas deve ser exibida
    wait until page contains                Novelas

a página séries deve ser exibida
    wait until page contains                Séries

a página filmes deve ser exibida
    wait until page contains                Filmes

a página infantil deve ser exibida
    wait until page contains                Infantil

a página humor deve ser exibida
    wait until page contains                Humor

a página variedades deve ser exibida
    wait until page contains                Variedades

a página realities deve ser exibida
    wait until page contains                Realities

a página música deve ser exibida
    wait until page contains                Música

a página documentários deve ser exibida
    wait until page contains                Documentários

a página jornalismo deve ser exibida
    wait until page contains                Jornalismo

a página esportes deve ser exibida
    wait until page contains                Esportes

a página programas locais deve ser exibida
    wait until page contains                Programas Locais

#Programas locais
clicar no programa local ${programa_local}
    ${estado_auxiliar}=     Set Variable    ${programa_local}
    Set Suite Variable  ${estado_auxiliar}

    ${condition_programa_local}=   BuiltIn.Run Keyword And Ignore Error    Click Element   ${ProgramasLocais.${programa_local}}
    Run Keyword If  '${condition_programa_local[0]}' == 'FAIL'      verificar acesso ao estado

verificar acesso ao estado
    # SCROLL NA LISTA DE ESTADOS PARA EXIBIR OS ESTADOS ESCONDIDOS
    Press Keys  xpath://*[@id="root"]/span   ARROW_DOWN+ARROW_DOWN+ARROW_DOWN+ARROW_DOWN+ARROW_DOWN
    Wait until element is visible   ${ProgramasLocais.${estado_auxiliar}}  20s
#    Press Keys  ${ProgramasLocais.${estado_auxiliar}}   Enter
    ${condition_estado}=   BuiltIn.Run Keyword And Return    Click Element   ${ProgramasLocais.${estado_auxiliar}}
    Run Keyword If  '${condition_estado[0]}' == 'PASS'   Sleep  5s

#    ${confirmar_estado}=   BuiltIn.Run Keyword And Ignore Error    Click Element   ${ProgramasLocais.${estado_auxiliar}}
#    Run Keyword If  '${confirmar_estado[0]}' == 'FAIL'   Sleep  5s


#Subitem programas locais
clicar no item ${item}
    Wait until element is visible   ${SubItem.${item}}  20s
    Click element   ${SubItem.${item}}
    Wait until element is visible   ${SubItem_Titulos.titulos}  10s

voltar
    Wait until element is visible   ${pageTitle.voltar_button}  5s
    Press Keys  ${SubItem_Titulos.titulos}  ARROW_LEFT+ARROW_LEFT+ARROW_LEFT+ARROW_LEFT+ARROW_LEFT+ENTER

o destaque premium deve exibir
    Wait until element is visible   ${pageHome.HighlightPremium}    10s



verificar quantidade de itens no trilho de highlight premium
    # GARANTIR QUE TRILHO DE HIGHLIGHT PREMIUM FOI CARREGADO E DEVIDAMENTE MAPEADO
    # FUNDAMENTAL PARA O FUNCIONAMENTO DA CONDIÇÃO
    Wait until element is visible   xpath://*[@id="root"]/div[3]/div[1]/div/div/div/div[1]/ul/li[1]


    FOR    ${i}    IN RANGE    20

        # MAPEAR SE ITEM i+1 (POIS FOR COMEÇA DO ZERO) ESTÁ VISÍVEL NA TELA
        # EM CASO DE FALHA, A QDT DE ITENS SERA REFERENTE AO VALOR DE i
        ${condition_qdt_itens_highlight_premium}=   BuiltIn.Run Keyword And Ignore Error    Element Should be Visible   xpath://*[@id="root"]/div[3]/div[1]/div/div/div/div[1]/ul/li[${i+1}]
        ${itens_trilho_highlight_premium}=     Set Variable    ${i}
        Run Keyword If      '${condition_qdt_itens_highlight_premium[0]}' == 'FAIL'   EXIT FOR LOOP

    END

    # TORNAR VARIÁVEL VISÍVEL PARA DEMAIS KEYWORDS
    Set Suite Variable  ${itens_trilho_highlight_premium}



ocorrer a transição entre todos os itens no trilho de destaques premium
    verificar quantidade de itens no trilho de highlight premium

    # RECARREGAR A HOME PARA RESETAR O TEMPO DA TRANSIÇÃO AUTOMÁTICA ENTRE OS DESTAQUES
    clicar no menu "Busca"
    que estou na home

    @{title_highlight_list}     Create List

    FOR    ${i}    IN RANGE    ${itens_trilho_highlight_premium}

        #NOME DO CANAL LIVE NÃO RETORNADO NO CSS DO LOGO. CONDIÇÃO PARA CASO UM CANAL LIVE ESTEJA EM DESTAQUE
        ${condition_highlight_title}=   BuiltIn.Run Keyword And Ignore Error    Element should be visible   ${pageHome.HighlightPremium_Title}
        Run Keyword If      '${condition_highlight_title[0]}' == 'PASS'      destaque vod
        ...         ELSE    destaque live

        Append To List  ${title_highlight_list}    ${title}
        Sleep   7s

    END

    # LISTAR ITEM COLETADOS PARA CONSULTAS, CASO NECESSÁRIO
    Log     ${title_highlight_list}


    ${itens_coletados}=  get length  ${title_highlight_list}

    # VERIFICANDO SE HÁ DESTAQUES REPETIDOS
    FOR     ${i}    IN RANGE    ${itens_coletados}

        # GET NO ELEMENTO DA LISTA E DECLARANDO VARIÁVEL CUJO VALOR PODE SER EXPORTADO PARA USO EM OUTRAS KEYWORDS, PARA COMPARAÇÃO ENTRE TÍTULOS EM DESTAQUE
        ${value_1}=   Get From List   ${title_highlight_list}  ${i}

        Loop over items     ${i}    ${value_1}    @{title_highlight_list}

        # EXIT, APÓS EXECUTAR CÓDIGO NO PENULTIMO ITEM, PARA NÃO COMPARAR O ULTIMO ITEM COM ELE MESMO
        Exit For Loop If    ${i} == ${itens_coletados-2}  # [0, 1, 2, 3] / 4 itens

    END

Loop over items
    [Arguments]     ${i}    ${value_1}    @{title_highlight_list}

    ${itens_coletados}=     get length  ${title_highlight_list}

    FOR     ${j}    IN RANGE    ${itens_coletados}

            ${value_2}=   Get From List   ${title_highlight_list}  ${i+1+${j}}

            ${condition_repetition}=   BuiltIn.Run Keyword And Ignore Error     Should Be True  "${value_1}" != "${value_2}"
            Run Keyword If      '${condition_repetition[0]}' == 'FAIL'      Forçar Erro     #KEYWORD INEXISTENTE PARA FORÇAR ERRO

            # EXIT, APÓS EXECUTAR CÓDIGO NO ÚLTIMO ITEM DA LISTA
            Exit For Loop If    ${i+1+${j}} == ${itens_coletados-1}  # [0, 1, 2, 3] / 4 itens

        END



destaque vod
    ${title}=    Get Element Attribute   ${pageHome.HighlightPremium_Title}  alt
    Set Suite Variable      ${title}

destaque live
    # ATRIBUIR VALUE DO TIPO STRING
    ${title}=   Set Variable    Live
    Set Suite Variable      ${title}



avançar manualmente o destaque premium
    verificar quantidade de itens no trilho de highlight premium

    FOR     ${i}    IN RANGE    ${itens_trilho_highlight_premium}

        # AVANÇAR / CLICAR NO PRÓXIMO ITEM DO TRILHO DE HIGHLIGHT PREMIUM
        Click Element   ${pageHome.HighlightPremium_Item_${i+2}}

        # VERIFICAR SE INFORMAÇÕES DO HIGHLIGHT PREMIUM FOI CARREGADO
        ${condition_highlight_informations}=   BuiltIn.Run Keyword And Ignore Error    Wait Until Element Is visible   ${pageHome.HighlightPremium}     10s
        Run Keyword If      '${condition_highlight_informations[0]}' == 'FAIL'      Forçar Erro     #KEYWORD INEXISTENTE PARA FORÇAR ERRO

        Sleep   1s

        # EXIT QUANDO ${i} = ${itens_trilho} - 2
        Exit For Loop If    ${i} == ${itens_trilho_highlight_premium} - 2

    END

acessar um destaque premium VOD
    verificar quantidade de itens no trilho de highlight premium

    FOR     ${i}    IN RANGE    ${itens_trilho_highlight_premium}

        # VERIFICAR SE DESTAQUE PREMIUM EM EXIBIÇÃO É REFERENTE A UM VOD
        ${condition_highlight_premium_vod}=   BuiltIn.Run Keyword And Ignore Error    Wait until element is visible   ${pageHome.HighlightPremium_Title}    10s
        Run Keyword If          '${condition_highlight_premium_vod[0]}' == 'PASS'      Click Element    ${pageHome.HighlightPremium_VejaMais}
        # ELSE IF SEJA O ÚLTIMO ITEM DO TRILHO
        ...         ELSE IF     ${i} == ${itens_trilho_highlight_premium} - 1     EXIT FOR LOOP
        # ELSE AVANCE PARA O PRÓXIMO ITEM DO TRILHO
        ...         ELSE        Click Element   ${pageHome.HighlightPremium_Item_${i+2}}
 
       EXIT FOR LOOP IF    '${condition_highlight_premium_vod[0]}' == 'PASS'

    END

    # PARA O CASO DE NÃO HAVER DESTAQUES DO TIPO VOD NO TRILHO DE HIGHLIGHT PREMIUM
    # OCORRE CASO, O CÓDIGO SAIA DO FOR COM A CONDITION = FAIL
    Run Keyword If  '${condition_highlight_premium_vod[0]}' == 'FAIL'      Log  "TESTE APROVADO. A FALHA OCORREU POIS NÃO HÁ DESTAQUES DO TIPO VOD NO HIGHLIGHT PREMIUM"

a tela de título deverá ser exibida
    Wait until element is visible   ${pageTitle.page}   10s
    Sleep   1s


acessar um destaque premium Live
    verificar quantidade de itens no trilho de highlight premium

    FOR     ${i}    IN RANGE    ${itens_trilho_highlight_premium}

        # VERIFICAR SE DESTAQUE PREMIUM EM EXIBIÇÃO É REFERENTE A UM VOD
        ${condition_highlight_premium_live}=   BuiltIn.Run Keyword And Ignore Error    Wait until element is visible   ${pageHome.HighlightPremium_Live}    10s
        Run Keyword If          '${condition_highlight_premium_live[0]}' == 'PASS'      Click Element    ${pageHome.HighlightPremium_Assista}
        # ELSE IF SEJA O ÚLTIMO ITEM DO TRILHO
        ...         ELSE IF     ${i} == ${itens_trilho_highlight_premium} - 1     EXIT FOR LOOP
        # ELSE AVANCE PARA O PRÓXIMO ITEM DO TRILHO
        ...         ELSE        Click Element   ${pageHome.HighlightPremium_Item_${i+2}}

        EXIT FOR LOOP IF    '${condition_highlight_premium_live[0]}' == 'PASS'

    END

    # PARA O CASO DE NÃO HAVER DESTAQUES DO TIPO VOD NO TRILHO DE HIGHLIGHT PREMIUM
    # OCORRE CASO, O CÓDIGO SAIA DO FOR COM A CONDITION = FAIL
    Run Keyword If  '${condition_highlight_premium_live[0]}' == 'FAIL'      Log  "TESTE APROVADO. A FALHA OCORREU POIS NÃO HÁ DESTAQUES DO TIPO LIVE NO HIGHLIGHT PREMIUM"



acessar a programação via destaque premium
    verificar quantidade de itens no trilho de highlight premium

    FOR     ${i}    IN RANGE    ${itens_trilho_highlight_premium}

        # VERIFICAR SE DESTAQUE PREMIUM EM EXIBIÇÃO É REFERENTE A UM VOD
        ${condition_highlight_premium_live}=   BuiltIn.Run Keyword And Ignore Error    Wait until element is visible   ${pageHome.HighlightPremium_Live}    10s
        Run Keyword If          '${condition_highlight_premium_live[0]}' == 'PASS'      Sleep   1s
        # ELSE IF SEJA O ÚLTIMO ITEM DO TRILHO
        ...         ELSE IF     ${i} == ${itens_trilho_highlight_premium} - 1     EXIT FOR LOOP
        # ELSE AVANCE PARA O PRÓXIMO ITEM DO TRILHO
        ...         ELSE        Click Element   ${pageHome.HighlightPremium_Item_${i+2}}

        EXIT FOR LOOP IF    '${condition_highlight_premium_live[0]}' == 'PASS'

    END


    # PARA O CASO DE NÃO HAVER DESTAQUES DO TIPO VOD NO TRILHO DE HIGHLIGHT PREMIUM
    # OCORRE CASO, O CÓDIGO SAIA DO FOR COM A CONDITION = FAIL
    Run Keyword If  '${condition_highlight_premium_live[0]}' == 'FAIL'      Log  "TESTE APROVADO. A FALHA OCORREU POIS NÃO HÁ DESTAQUES DO TIPO LIVE NO HIGHLIGHT PREMIUM"


    # VERIFICAR SE BOTÃO PROGRAMAÇÃO FOI CONFIGURADO PARA EXIBIÇÃO NO HIGHLIGHT
    ${condition_highlight_premium_progButton}=   BuiltIn.Run Keyword And Ignore Error    Click Element   ${pageHome.HighlightPremium_Prog}
    Run Keyword If          '${condition_highlight_premium_progButton[0]}' == 'PASS'      grade de programação deve ser exibida
    ...         ELSE    Log  "TESTE APROVADO. A FALHA OCORREU POIS O BUTTON PROGRAMAÇÃO NÃO FOI CONFIGURADO PARA EXIBIÇÃO NO HIGHLIGHT PREMIUM"


canal ao vivo deve exibir
    Wait until element is visible   ${pageCanaisAoVivo.gradePgm}    10s

grade de programação deve ser exibida
    Wait until element is visible   ${EPG.epg_info}     10s

clicar em "Canais"
    Wait until element is visible   ${MenuExplore.btnCanais}    20s
    Click element   ${MenuExplore.btnCanais}
    Sleep   5s

clicar no canal ${canal}
    Press Keys  ${MenuExplore.btnCanais}   ARROW_RIGHT+ARROW_DOWN+ARROW_DOWN+ARROW_DOWN+ARROW_DOWN+ARROW_DOWN+ARROW_DOWN
    Wait until element is visible   ${Canais.${canal}}    20s
    Click element   ${Canais.${canal}}
    Sleep   5s

# Funcao para clicar no menu do troca de canais
clicar no sub menu ${tag_canais}
    Wait until element is visible   ${tags.${tag_canais}}    10s
    Click element   ${tags.${tag_canais}}
    Sleep   3s

clicar no aovivo ${item}
    Wait until element is visible   ${canal.${item}}    10s
    Click element   ${canal.${item}}
    Press Keys      ${canal.${item}}        ARROW_DOWN+ARROW_UP
    Sleep   10s

vejo o tapume com a mensagem Conteúdo exclusivo
    Wait Until element is visible       ${text.msg1}        10s

não vejo o tapume com a mensagem Conteúdo exclusivo
    Wait Until Element Is Not Visible        ${text.msg1}
    Set Selenium Implicit Wait  10s
    Page Should Not Contain     ${text.msg1}

vejo o tapume com a mensagem Aproveite
    Wait Until element is visible       ${text.msg2}        10s

não vejo o tapume com a mensagem Aproveite
    Wait Until Element Is Not Visible     ${text.msg2}
    Set Selenium Implicit Wait  10s
    Page Should Not Contain     ${text.msg2}

troco o canal selecionado
    FOR    ${i}   IN RANGE     30
        Press Keys   ${troca_canal.channel}   ARROW_DOWN
        Sleep      1s
        Log To Console      ${i}
    END

clicar no link programação
    Wait Until element is visible     ${troca_canal.programacao}
    Press Keys     ${troca_canal.programacao}        ENTER

vejo a tela do EPG
    Wait Until element is visible       ${troca_canal.title_epg_agora}


#ativar a conta com login ${conta}
#    Wait until element is visible     ${menuMinhaConta_Perfil.urlAtivar}      20s
#    ${url_login}=   Get Text    ${MenuMinhaConta_Perfil.urlAtivar}

#    Sleep   5s

#    ${code}=  Get Text    ${MenuMinhaConta_Perfil.loginCode}
#    Set Suite Variable      ${code_login}     ${code}

#    nova aba
#    Switch Window       locator=NEW

#    Go To               http://${url_login}

#    Wait until element is visible   ${LoginExterno_ContaGlobo.login}   10s

#    Login Facebook


    ##### TROCAR CONTA #####
    #clicar no menu "Minha Conta"
    #click element   ${MenuMinhaConta_Perfil.btnTrocarConta}
    #Wait until element is visible   ${MenuMinhaConta_Perfil.addUser}    10s
    #Click element   ${MenuMinhaConta_Perfil.addUser}



#Login Facebook
#    Click element   ${LoginExterno_ContaGlobo.btnFacebook}
#    Sleep   5s

#    Switch Window   locator=NEW


    ####### ADAPTAÇÃO PARA CORREÇÃO DE ERRO NO PIPELINE #######
    #FORÇAR A TELA DE LOGIN FACEBOOK ABRIR COMO UMA NOVA ABA, E NÃO COMO UMA NOVA JANELA DO BROWSER A PARTE

    #@{locations}    Get Locations
    #nova aba
    #Go to    ${locations[1]}

    ###########################################################


#    Wait until element is visible   ${LoginExterno_ContaFacebook.login}  10s
#    Input Text      ${LoginExterno_ContaFacebook.login}  ${facebook.email}
#    Input Text      ${LoginExterno_ContaFacebook.password}     ${facebook.password}
#    Click element   ${LoginExterno_ContaFacebook.btnEnter}
#    Switch Window   locator=Login
#    Wait until element is visible   ${LoginExterno_AtivarDispositivo.UserCode}    10s
#    Input Text      ${LoginExterno_AtivarDispositivo.UserCode}    ${code_login}
#    Click element   ${LoginExterno_AtivarDispositivo.btnAtivar}
#    Handle Alert    ACCEPT      10s
#    Wait until element is visible   ${LoginExterno_AtivarDispositivo.DispositivoAtivado}      10s
#    Close Window
#    Switch Window   locator=Globoplay
#    Wait until element is visible   ${pageHome.HighlightPremium}    10s




#Login Google

    #Click element   ${MenuMinhaConta_Perfil_ContaGlobo.btnGoogle}

    #Go to   https://minhaconta.globo.com
    #Wait until element is visible   ${MenuMinhaConta_Perfil_ContaGoogle.login}  10s
    #Input Text      ${MenuMinhaConta_Perfil_ContaGoogle.login}  ${Google.email}
    #Click element   ${MenuMinhaConta_Perfil_ContaGoogle.btnNext}

    #Wait until element is visible   ${MenuMinhaConta_Perfil_ContaGoogle.password}   10s
    #Input Text      ${MenuMinhaConta_Perfil_ContaGoogle.password}     ${Google.password}
    #Click element   ${MenuMinhaConta_Perfil_ContaGoogle.btnEnter}
    #Switch Window   locator=Login
    #Wait until element is visible   ${LoginPortalGlobo.UserCode}    10s
    #Input Text      ${LoginPortalGlobo.UserCode}    ${code_login}
    #Click element   ${LoginPortalGlobo.btnAtivar}
    #Handle Alert    ACCEPT      10s
    #Wait until element is visible   ${LoginPortalGlobo.DispositivoAtivado}      10s
    #Close Window
    #Switch Window   locator=Globoplay
    #Wait until element is visible   ${pageHome.HighlightPremium}    10s


#    Sleep   120s


#Login globo
#    ${conta}=   Set variable    globo

#    Wait until element is visible     ${menuMinhaConta_Perfil.urlAtivar}      10s
#    ${url_login}=   Get Text    ${MenuMinhaConta_Perfil.urlAtivar}

#    Sleep   5s

#    ${code}=  Get Text    ${MenuMinhaConta_Perfil.loginCode}
#    Set Suite Variable      ${code_login}     ${code}

#    nova aba
#    Switch Window       locator=NEW

#    Go To               http://${url_login}


    #### NOVO ####
    #Wait until element is visible   ${LoginPortalGlobo.btnSair}     10s
    #Click element   ${LoginPortalGlobo.btnSair}
    ##############


#    Wait until element is visible   ${MenuMinhaConta_Perfil_ContaGlobo.login}   10s


    ######### CONTA GLOBO ###########
    #Wait until element is visible   ${MenuMinhaConta_Perfil_ContaGlobo.login}   10s
    #Input Text      ${MenuMinhaConta_Perfil_ContaGlobo.login}   ${${conta}.email}
    #Sleep   10s
    #Input Text      ${MenuMinhaConta_Perfil_ContaGlobo.password}    ${${conta}.password}

    #Sleep   5s

    #Click element   ${MenuMinhaConta_Perfil_ContaGlobo.btnCaptcha}

    #Sleep   5s

    #Click element   ${MenuMinhaConta_Perfil_ContaGlobo.btnEnter}

    #Sleep   5s

#---------------------------------------------------------#
#              VALIDAÇÃO DOS CENÁRIOS DE HOME             #
#---------------------------------------------------------#

que estou na home
    Log To Console    Verifica página home

    Run Keyword If    '${url}' == 'https://globoplay.globo.com/'    Log To Console     Redirecionado para a página de Home
    ...         ELSE   Log To Console     <Não redirecinado para a página de Home> RETORNA URL: '${url}'

    Wait Until Element Is Visible   ${homePage.pagina}     50s

############################################
#   VALIDA CARROSSEL HOME
############################################

destaque do carrossel deve exibir
    Log To Console     Verifica carrosel
    Wait Until Element Is Visible   ${homeBanner.carrossel_home}     20s

apresenta as imagens dos banner
    Log To Console     Verifica imagens do banner


    FOR   ${x}  IN RANGE    20
         ${banner}=  BuiltIn.Run Keyword And Ignore Error    Get Text   xpath=//html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[1]/div/div[${x}+1]   
         Run Keyword If  '${banner[0]}' == ('PASS', None)   Sleep   1s 

         Press Keys  ${homeTrilho.sonovelao}   ARROW_RIGHT

         Log To Console    Banners = '${x}'
         Exit For Loop If    '${banner[0]}' == ('FAIL')  
         ${x}=    Evaluate    ${x} + 1
    END

############################################
#   VALIDA TRILHO DE SÓ NOVELÃO  
############################################

o trilho de "Só novelão" deve exibir
    Log      Verifica exibição do trilho de "Só novelão"

    # ${status}=    Run Keyword And Return status    Should Be true   

    FOR   ${i}  IN RANGE    200
          Run Keyword And Ignore Error    Wait Until Element Is Visible    ${homeTrilho.continua_01}   ${timeout_20}
          ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${homeTrilho.continua_01}
          IF    '${valor[0]}' == 'PASS'
          
                Wait Until Element Is Visible   ${homeTitle.title_sonovelao}     30s
                ${title_sonovelao}=  Get Text   ${homeTitle.title_sonovelao}

                Press Keys   NONE   ARROW_DOWN+ARROW_DOWN+ARROW_DOWN+ARROW_DOWN+ARROW_DOWN+ARROW_DOWN

                Exit For Loop If    '${valor[0]}' == ('PASS')
            
          ELSE
                Log      Trilho de "Só novelão" não identificado.
          END
    END
    

realiza o trilho da grid de Só novelão
   Wait Until Element Is Visible   ${homeTrilho.sonovelao}     30s
   
   FOR   ${i}  IN RANGE    200
         
         ${resultado}=  BuiltIn.Run Keyword And Ignore Error    Get Text      xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Só novelãoVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[${i+1}]
         Run Keyword If  '${resultado[0]}' == ('PASS', None)   Sleep   2s

         IF    '${resultado[0]}' == 'FAIL'
                ${condition}=   BuiltIn.Run Keyword And Ignore Error    Element Should be Visible    xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Só novelãoVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
                IF  '${condition[0]}' == 'PASS'
                      Wait Until Element Is Visible   ${homeTrilho.continua_01}     20s
                      Press Keys  ${homeTrilho.continua_01}   ARROW_RIGHT
                ELSE
                      Log To Console    Trilho = '${i}'
                      Exit For Loop If    '${resultado[0]}' == ('FAIL')     
                END
         END

        #  Log To Console    Trilho = '${i}'
         ${x}=    Evaluate    ${i} + 1
        
    END

############################################
#   VALIDA TRILHO DE CANAIS AO VIVO
############################################

o trilho de Canais Ao Vivo deve exibir
    Log      Verifica exibição do trilho de "Canais Ao Vivo"

    FOR   ${i}  IN RANGE    200
          Run Keyword And Ignore Error    Wait Until Element Is Visible    ${homeTrilho.continua_02}   ${timeout_20}
          ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${homeTrilho.continua_02}
          IF    '${valor[0]}' == 'PASS'

            Press Keys   NONE   PAGE_DOWN  PAGE_DOWN  PAGE_DOWN
          
            Wait Until Element Is Visible   ${homeTitle.title_canalvivo}     50s
            ${title_canalvivo}=  Get Text   ${homeTitle.title_canalvivo}

            Exit For Loop If    '${valor[0]}' == ('PASS')
            
          ELSE
            # Press Keys   NONE   ARROW_DOWN  ARROW_DOWN
            Log      Trilho das "Canais Ao Vivo" não identificado.

          END
    END


realiza o trilho da grid de Canais Ao Vivo
   Wait Until Element Is Visible   ${homeTrilho.canalvivo}     30s
   
   FOR   ${i}  IN RANGE    200
         
         ${resultado}=  BuiltIn.Run Keyword And Ignore Error    Get Text      xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Canais Ao VivoVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[${i+1}]
         Run Keyword If  '${resultado[0]}' == ('PASS', None)   Sleep   2s

         IF    '${resultado[0]}' == 'FAIL'
                ${condition}=   BuiltIn.Run Keyword And Ignore Error    Element Should be Visible    xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Canais Ao VivoVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div

                IF  '${condition[0]}' == 'PASS'
 
                      Wait Until Element Is Visible   ${homeTrilho.continua_02}     50s
                      Press Keys  ${homeTrilho.continua_02}   ARROW_RIGHT

                ELSE  
                      Log To Console    Trilho = '${i}'
                      Exit For Loop If    '${resultado[0]}' == ('FAIL')     
                END
         END

        #  Log To Console    Trilho = '${i}'
         ${x}=    Evaluate    ${i} + 1
        
    END

############################################
#   VALIDA TRILHO DE SÉRIES MAIS VISTAS
############################################

o trilho das "Séries mais vistas" deve exibir
    Log      Verifica exibição do trilho das "Séries mais vistas"

     FOR   ${i}  IN RANGE    200
          Run Keyword And Ignore Error    Wait Until Element Is Visible    ${homeTrilho.continua_03}   ${timeout_20}
          ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${homeTrilho.continua_03}
          IF    '${valor[0]}' == 'PASS'

            Press Keys   NONE   PAGE_DOWN  PAGE_DOWN
          
            Wait Until Element Is Visible   ${homeTitle.title_seriemaisvista}     50s
            ${title_canalvivo}=  Get Text   ${homeTitle.title_seriemaisvista}

            Exit For Loop If    '${valor[0]}' == ('PASS')
            
          ELSE
            Log      Trilho das "Séries mais vistas" não identificado.

          END
    END

realiza o trilho da grid das "Séries mais vistas"
   Wait Until Element Is Visible   ${homeTrilho.seriemaisvista}     30s
   
   FOR   ${i}  IN RANGE    200
         
         ${resultado}=  BuiltIn.Run Keyword And Ignore Error    Get Text      xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'As séries mais vistas')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[${i+1}]
         Run Keyword If  '${resultado[0]}' == ('PASS', None)   Sleep   2s

         IF    '${resultado[0]}' == 'FAIL'

                ${condition}=   BuiltIn.Run Keyword And Ignore Error    Element Should be Visible    xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'As séries mais vistas')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
                IF  '${condition[0]}' == 'PASS'
                      Wait Until Element Is Visible   ${homeTrilho.continua_03}     20s
                      Press Keys  ${homeTrilho.continua_03}   ARROW_RIGHT
                ELSE
                      Log To Console    Trilho = '${i}'
                      Exit For Loop If    '${resultado[0]}' == ('FAIL')     
                END
         END

        #  Log To Console    Trilho = '${i}'
         ${x}=    Evaluate    ${i} + 1
        
    END

############################################
#   VALIDA TRILHO DE CANAIS
############################################

o trilho de Canais deve exibir
    Log      Verifica exibição do trilho de Canais

    FOR   ${i}  IN RANGE    200
          Run Keyword And Ignore Error    Wait Until Element Is Visible    ${homeTrilho.continua_04}   ${timeout_20}
          ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${homeTrilho.continua_04}
          IF    '${valor[0]}' == 'PASS'
          
            Wait Until Element Is Visible   ${homeTitle.title_canal}     30s
            ${title_canalvivo}=  Get Text   ${homeTitle.title_canal}

            Exit For Loop If    '${valor[0]}' == ('PASS')
            
          ELSE
              Sleep    60ms
              Press Keys   NONE   ARROW_DOWN  ARROW_DOWN
          END
    END
    

realiza o trilho da grid de Canais
   Wait Until Element Is Visible   ${homeTrilho.canal}     30s
   
   FOR   ${i}  IN RANGE    200
         
         ${resultado}=  BuiltIn.Run Keyword And Ignore Error    Get Text      xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'CanaisVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[${i+1}]
         Run Keyword If  '${resultado[0]}' == ('PASS', None)   Sleep   2s

         IF    '${resultado[0]}' == 'FAIL'

                ${condition}=   BuiltIn.Run Keyword And Ignore Error    Element Should be Visible    xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'CanaisVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
                IF  '${condition[0]}' == 'PASS'
                      Wait Until Element Is Visible   ${homeTrilho.continua_04}     20s
                      Press Keys  ${homeTrilho.continua_04}   ARROW_RIGHT
                ELSE
                      Log To Console    Trilho = '${i}'
                      Exit For Loop If    '${resultado[0]}' == ('FAIL')     
                END
         END

        #  Log To Console    Trilho = '${i}'
         ${x}=    Evaluate    ${i} + 1
        
    END

############################################
#    VALIDA TRILHO DE NOVIDADES
############################################

o trilho de Novidades deve exibir
    Log      Verifica exibição do trilho de Novidades

    FOR   ${i}  IN RANGE    200
          Run Keyword And Ignore Error    Wait Until Element Is Visible    ${homeTrilho.continua_05}   ${timeout_20}
          ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${homeTrilho.continua_05}
          IF    '${valor[0]}' == 'PASS'
          
                Wait Until Element Is Visible   ${homeTitle.title_novidade}     30s
                ${title_canalvivo}=  Get Text   ${homeTitle.title_novidade}
                 
                Exit For Loop If    '${valor[0]}' == ('PASS')
            
          ELSE
                Sleep    60ms
                Press Keys   NONE   ARROW_DOWN  ARROW_DOWN
          END
          
    END

realiza o trilho da grid de Novidades
   Wait Until Element Is Visible   ${homeTrilho.novidade}     30s
   
   FOR   ${i}  IN RANGE    200
         
         ${resultado}=  BuiltIn.Run Keyword And Ignore Error    Get Text      xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'NovidadesVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[${i+1}]
         Run Keyword If  '${resultado[0]}' == ('PASS', None)   Sleep   2s

         IF    '${resultado[0]}' == 'FAIL'

                ${condition}=   BuiltIn.Run Keyword And Ignore Error    Element Should be Visible    xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'NovidadesVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
                IF  '${condition[0]}' == 'PASS'
                      Wait Until Element Is Visible   ${homeTrilho.continua_05}     20s
                      Press Keys  ${homeTrilho.continua_05}   ARROW_RIGHT
                ELSE
                      Log To Console    Trilho = '${i}'
                      Exit For Loop If    '${resultado[0]}' == ('FAIL')     
                END
         END

        #  Log To Console    Trilho = '${i}'
         ${x}=    Evaluate    ${i} + 1
        
    END

##############################################
#    VALIDA TRILHO DE +ESTREIAS NO +CANAIS
##############################################

o trilho de Estreias no +Canais deve exibir
    Log      Verifica exibição do trilho de Estreias no +Canais

    FOR   ${i}  IN RANGE    200
          Run Keyword And Ignore Error    Wait Until Element Is Visible    ${homeTrilho.continua_06}   ${timeout_20}
          ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${homeTrilho.continua_06}
          IF    '${valor[0]}' == 'PASS'
          
                Wait Until Element Is Visible   ${homeTitle.title_estreias_canais}     30s
                ${title_canalvivo}=  Get Text   ${homeTitle.title_estreias_canais}

                Exit For Loop If    '${valor[0]}' == ('PASS')
            
          ELSE
                Sleep    60ms
                Press Keys   NONE   ARROW_DOWN  ARROW_DOWN  ARROW_DOWN
          END
    END

realiza o trilho da grid de Estreias no +Canais
   Wait Until Element Is Visible   ${homeTrilho.estreias_canais}     30s
   
   FOR   ${i}  IN RANGE    200
         
         ${estreias_canais}=  BuiltIn.Run Keyword And Ignore Error    Get Text      xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Estreias no +Canais')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[${i+1}]
         Run Keyword If  '${estreias_canais[0]}' == ('PASS', None)   Sleep   2s

         IF    '${estreias_canais[0]}' == 'FAIL'

                ${condition}=   BuiltIn.Run Keyword And Ignore Error    Element Should be Visible    xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Estreias no +Canais')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
                IF  '${condition[0]}' == 'PASS'
                      Wait Until Element Is Visible   ${homeTrilho.continua_06}     20s
                      Press Keys  ${homeTrilho.continua_06}   ARROW_RIGHT
                ELSE
                      Log To Console    Trilho = '${i}'
                      Exit For Loop If    '${estreias_canais[0]}' == ('FAIL')     
                END
         END

        #  Log To Console    Trilho = '${i}'
         ${x}=    Evaluate    ${i} + 1
        
    END

#####################################################
#    VALIDA TRILHO DE SÉRIES QUE DÃO O QUE FALAR
#####################################################

o trilho de "Séries que dão o que falar" deve exibir
    Log      Verifica exibição do trilho de "Séries que dão o que falar"

    FOR   ${i}  IN RANGE    200
          Run Keyword And Ignore Error    Wait Until Element Is Visible    ${homeTrilho.continua_07}   ${timeout_20}
          ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${homeTrilho.continua_07}
          IF    '${valor[0]}' == 'PASS'
          
                Wait Until Element Is Visible   ${homeTitle.title_seriesquefalar}     30s
                ${title_canalvivo}=  Get Text   ${homeTitle.title_seriesquefalar}

                Exit For Loop If    '${valor[0]}' == ('PASS')
            
          ELSE
                Sleep    60ms
                Press Keys   NONE   ARROW_DOWN  ARROW_DOWN
          END
    END

realiza o trilho da grid de "Séries que dão o que falar"
   Wait Until Element Is Visible   ${homeTrilho.seriesquefalar}     30s
   
   FOR   ${i}  IN RANGE    200
         
         ${resultado}=  BuiltIn.Run Keyword And Ignore Error    Get Text      xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Séries que dão o que falar')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[${i+1}]
         Run Keyword If  '${resultado[0]}' == ('PASS', None)   Sleep   2s

         IF    '${resultado[0]}' == 'FAIL'

                ${condition}=   BuiltIn.Run Keyword And Ignore Error    Element Should be Visible    xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Séries que dão o que falar')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
                IF  '${condition[0]}' == 'PASS'
                      Wait Until Element Is Visible   ${homeTrilho.continua_07}     20s
                      Press Keys  ${homeTrilho.continua_07}   ARROW_RIGHT
                ELSE
                      Log To Console    Trilho = '${i}'
                      Exit For Loop If    '${resultado[0]}' == ('FAIL')     
                END
         END

        #  Log To Console    Trilho = '${i}'
         ${x}=    Evaluate    ${i} + 1
        
    END

########################################################
#    VALIDA TRILHO DE AO VIVO BBB
########################################################

o trilho de "Ao Vivo no BBB" deve exibir
    Log      Verifica exibição do trilho de "Ao Vivo no BBB"

    FOR   ${i}  IN RANGE    200
          Run Keyword And Ignore Error    Wait Until Element Is Visible    ${homeTrilho.continua_09}   ${timeout_20}
          ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${homeTrilho.continua_09}
          IF    '${valor[0]}' == 'PASS'
          
                Wait Until Element Is Visible   ${homeTitle.title_vivobbb}     30s
                ${title_canalvivo}=  Get Text   ${homeTitle.title_vivobbb}

                Exit For Loop If    '${valor[0]}' == ('PASS')
            
          ELSE
                Sleep    60ms
                Press Keys   NONE   ARROW_DOWN  ARROW_DOWN
          END
    END

realiza o trilho da grid de "Ao Vivo no BBB"
   Wait Until Element Is Visible   ${homeTrilho.vivobbb}     30s
   
   FOR   ${i}  IN RANGE    200
         
         ${resultado}=  BuiltIn.Run Keyword And Ignore Error    Get Text      xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Ao Vivo no BBBVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[${i+1}]
         Run Keyword If  '${resultado[0]}' == ('PASS', None)   Sleep   2s

         IF    '${resultado[0]}' == 'FAIL'

                ${condition}=   BuiltIn.Run Keyword And Ignore Error    Element Should be Visible    xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Ao Vivo no BBBVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
                IF  '${condition[0]}' == 'PASS'
                      Wait Until Element Is Visible   ${homeTrilho.continua_09}     20s
                      Press Keys  ${homeTrilho.continua_09}   ARROW_RIGHT
                ELSE
                      Log To Console    Trilho = '${i}'
                      Exit For Loop If    '${resultado[0]}' == ('FAIL')     
                END
         END

        #  Log To Console    Trilho = '${i}'
         ${x}=    Evaluate    ${i} + 1
        
    END


########################################################
#    VALIDA TRILHO DE ASSISTA NO DISCORERY+
########################################################

o trilho de "Assista no Discovery+" deve exibir
    Log      Verifica exibição do trilho de "Assista no Discovery+"

    FOR   ${i}  IN RANGE    200
          Run Keyword And Ignore Error    Wait Until Element Is Visible    ${homeTrilho.continua_10}   ${timeout_20}
          ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${homeTrilho.continua_10}
          IF    '${valor[0]}' == 'PASS'
          
                Wait Until Element Is Visible   ${homeTitle.title_assista_discovery}     30s
                ${title_canalvivo}=  Get Text   ${homeTitle.title_assista_discovery}

                Exit For Loop If    '${valor[0]}' == ('PASS')
            
          ELSE
                Sleep    60ms
                Press Keys   NONE   ARROW_DOWN  ARROW_DOWN
          END
    END

realiza o trilho da grid de "Assista no Discovery+"
   Wait Until Element Is Visible   ${homeTrilho.assista_discovery}     30s

   FOR   ${i}  IN RANGE    200
         
         ${resultado}=  BuiltIn.Run Keyword And Ignore Error    Get Text      xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Assista no Discovery+')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[${i+1}]
         Run Keyword If  '${resultado[0]}' == ('PASS', None)   Sleep   2s

         IF    '${resultado[0]}' == 'FAIL'

                ${condition}=   BuiltIn.Run Keyword And Ignore Error    Element Should be Visible    xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Assista no Discovery+')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
                IF  '${condition[0]}' == 'PASS'
                      Wait Until Element Is Visible   ${homeTrilho.continua_10}     20s
                      Press Keys  ${homeTrilho.continua_10}   ARROW_RIGHT
                ELSE
                      Log To Console    Trilho = '${i}'
                      Exit For Loop If    '${resultado[0]}' == ('FAIL')     
                END
         END

        #  Log To Console    Trilho = '${i}'
         ${x}=    Evaluate    ${i} + 1
        
    END


########################################################
#    VALIDA TRILHO DE ASSISTA NO Top 10 - Em Alta
########################################################

o trilho de "Top 10 - Em Alta" deve exibir
    Log      Verifica exibição do trilho de "Top 10 - Em Alta"

    FOR   ${i}  IN RANGE    200
          Run Keyword And Ignore Error    Wait Until Element Is Visible    ${homeTrilho.continua_11}   ${timeout_20}
          ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${homeTrilho.continua_11}
          IF    '${valor[0]}' == 'PASS'
          
                Wait Until Element Is Visible   ${homeTitle.title_top10alta}     30s
                ${title_canalvivo}=  Get Text   ${homeTitle.title_top10alta}

                Exit For Loop If    '${valor[0]}' == ('PASS')
            
          ELSE
                Sleep    60ms
                Press Keys   NONE   ARROW_DOWN  ARROW_DOWN
          END
    END

realiza o trilho da grid de "Top 10 - Em Alta"
   Wait Until Element Is Visible   ${homeTrilho.top10alta}     30s

   FOR   ${i}  IN RANGE    200
         
         ${resultado}=  BuiltIn.Run Keyword And Ignore Error    Get Text      xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Top 10 - Em AltaVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[${i+1}]
         Run Keyword If  '${resultado[0]}' == ('PASS', None)   Sleep   2s

         IF    '${resultado[0]}' == 'FAIL'

                ${condition}=   BuiltIn.Run Keyword And Ignore Error    Element Should be Visible    xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Top 10 - Em AltaVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
                IF  '${condition[0]}' == 'PASS'
                      Wait Until Element Is Visible   ${homeTrilho.continua_11}     20s
                      Press Keys  ${homeTrilho.continua_11}   ARROW_RIGHT
                ELSE
                      Log To Console    Trilho = '${i}'
                      Exit For Loop If    '${resultado[0]}' == ('FAIL')     
                END
         END

        #  Log To Console    Trilho = '${i}'
         ${x}=    Evaluate    ${i} + 1
        
    END


########################################################
#    VALIDA TRILHO DE ASSISTA NO Categorias
########################################################

o trilho de "Categorias" deve exibir
    Log      Verifica exibição do trilho de "Categorias"

    FOR   ${i}  IN RANGE    200
          Run Keyword And Ignore Error    Wait Until Element Is Visible    ${homeTrilho.continua_12}   ${timeout_20}
          ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${homeTrilho.continua_12}
          IF    '${valor[0]}' == 'PASS'
          
                Wait Until Element Is Visible   ${homeTitle.title_categorias}     30s
                ${title_canalvivo}=  Get Text   ${homeTitle.title_categorias}

                Exit For Loop If    '${valor[0]}' == ('PASS')
            
          ELSE
                Sleep    60ms
                Press Keys   NONE   ARROW_DOWN  ARROW_DOWN
          END
    END

realiza o trilho da grid de "Categorias"
   Wait Until Element Is Visible   ${homeTrilho.categorias}     30s

   FOR   ${i}  IN RANGE    200
         
         ${resultado}=  BuiltIn.Run Keyword And Ignore Error    Get Text      xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'CategoriasVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[${i+1}]
         Run Keyword If  '${resultado[0]}' == ('PASS', None)   Sleep   2s

         IF    '${resultado[0]}' == 'FAIL'

                ${condition}=   BuiltIn.Run Keyword And Ignore Error    Element Should be Visible    xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'CategoriasVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
                IF  '${condition[0]}' == 'PASS'
                      Wait Until Element Is Visible   ${homeTrilho.continua_12}     20s
                      Press Keys  ${homeTrilho.continua_12}   ARROW_RIGHT
                ELSE
                      Log To Console    Trilho = '${i}'
                      Exit For Loop If    '${resultado[0]}' == ('FAIL')     
                END
         END

        #  Log To Console    Trilho = '${i}'
         ${x}=    Evaluate    ${i} + 1
        
    END



########################################################
#    VALIDA TRILHO DE ASSISTA NO "Tramas latinas"
########################################################

o trilho de "Tramas latinas" deve exibir
    Log      Verifica exibição do trilho de "Tramas latinas"

    FOR   ${i}  IN RANGE    200
          Run Keyword And Ignore Error    Wait Until Element Is Visible    ${homeTrilho.continua_13}   ${timeout_20}
          ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${homeTrilho.continua_13}
          IF    '${valor[0]}' == 'PASS'
          
                Wait Until Element Is Visible   ${homeTitle.title_tramaslatinas}     30s
                ${title_canalvivo}=  Get Text   ${homeTitle.title_tramaslatinas}

                Exit For Loop If    '${valor[0]}' == ('PASS')
            
          ELSE
                Sleep    60ms
                Press Keys   NONE   ARROW_DOWN  ARROW_DOWN
          END
    END

realiza o trilho da grid de "Tramas latinas"
   Wait Until Element Is Visible   ${homeTrilho.tramaslatinas}     30s

   FOR   ${i}  IN RANGE    200
         
         ${resultado}=  BuiltIn.Run Keyword And Ignore Error    Get Text      xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Tramas latinas')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[${i+1}]
         Run Keyword If  '${resultado[0]}' == ('PASS', None)   Sleep   2s

         IF    '${resultado[0]}' == 'FAIL'

                ${condition}=   BuiltIn.Run Keyword And Ignore Error    Element Should be Visible    xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Tramas latinas')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
                IF  '${condition[0]}' == 'PASS'
                      Wait Until Element Is Visible   ${homeTrilho.continua_13}     20s
                      Press Keys  ${homeTrilho.continua_13}   ARROW_RIGHT
                ELSE
                      Log To Console    Trilho = '${i}'
                      Exit For Loop If    '${resultado[0]}' == ('FAIL')     
                END
         END

        #  Log To Console    Trilho = '${i}'
         ${x}=    Evaluate    ${i} + 1
        
    END


##############################################################
#    VALIDA TRILHO DE ASSISTA NO "Participantes Pipoca"
##############################################################

o trilho de "Participantes Pipoca" deve exibir
    Log      Verifica exibição do trilho de "Participantes Pipoca"

    FOR   ${i}  IN RANGE    200
          Run Keyword And Ignore Error    Wait Until Element Is Visible    ${homeTrilho.continua_14}   ${timeout_20}
          ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${homeTrilho.continua_14}
          IF    '${valor[0]}' == 'PASS'
          
                Wait Until Element Is Visible   ${homeTitle.title_participapipoca}     30s
                ${title_canalvivo}=  Get Text   ${homeTitle.title_participapipoca}

                Exit For Loop If    '${valor[0]}' == ('PASS')
            
          ELSE
                Sleep    60ms
                Press Keys   NONE   ARROW_DOWN  ARROW_DOWN
          END
    END

realiza o trilho da grid de "Participantes Pipoca"
   Wait Until Element Is Visible   ${homeTrilho.participapipoca}     30s

   FOR   ${i}  IN RANGE    200
         
         ${resultado}=  BuiltIn.Run Keyword And Ignore Error    Get Text      xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Participantes Pipoca')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[${i+1}]
         Run Keyword If  '${resultado[0]}' == ('PASS', None)   Sleep   2s

         IF    '${resultado[0]}' == 'FAIL'

                ${condition}=   BuiltIn.Run Keyword And Ignore Error    Element Should be Visible    xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Participantes Pipoca')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
                IF  '${condition[0]}' == 'PASS'
                      Wait Until Element Is Visible   ${homeTrilho.continua_14}     20s
                      Press Keys  ${homeTrilho.continua_14}   ARROW_RIGHT
                ELSE
                      Log To Console    Trilho = '${i}'
                      Exit For Loop If    '${resultado[0]}' == ('FAIL')     
                END
         END

        #  Log To Console    Trilho = '${i}'
         ${x}=    Evaluate    ${i} + 1
        
    END


############################################################
#    VALIDA TRILHO DE ASSISTA NO "Participantes Camarote"
############################################################

o trilho de "Participantes Camarote" deve exibir
    Log      Verifica exibição do trilho de "Participantes Camarote"

    FOR   ${i}  IN RANGE    200
          Run Keyword And Ignore Error    Wait Until Element Is Visible    ${homeTrilho.continua_15}   ${timeout_20}
          ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${homeTrilho.continua_15}
          IF    '${valor[0]}' == 'PASS'
          
                Wait Until Element Is Visible   ${homeTitle.title_participacamarote}     30s
                ${title_canalvivo}=  Get Text   ${homeTitle.title_participacamarote}

                Exit For Loop If    '${valor[0]}' == ('PASS')
            
          ELSE
                Sleep    60ms
                Press Keys   NONE   ARROW_DOWN  ARROW_DOWN
          END
    END

realiza o trilho da grid de "Participantes Camarote"
   Wait Until Element Is Visible   ${homeTrilho.participacamarote}     30s

   FOR   ${i}  IN RANGE    200
         
         ${resultado}=  BuiltIn.Run Keyword And Ignore Error    Get Text      xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Participantes Camarote')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[${i+1}]
         Run Keyword If  '${resultado[0]}' == ('PASS', None)   Sleep   2s

         IF    '${resultado[0]}' == 'FAIL'

                ${condition}=   BuiltIn.Run Keyword And Ignore Error    Element Should be Visible    xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Participantes Camarote')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
                IF  '${condition[0]}' == 'PASS'
                      Wait Until Element Is Visible   ${homeTrilho.continua_15}     20s
                      Press Keys  ${homeTrilho.continua_15}   ARROW_RIGHT
                ELSE
                      Log To Console    Trilho = '${i}'
                      Exit For Loop If    '${resultado[0]}' == ('FAIL')     
                END
         END

        #  Log To Console    Trilho = '${i}'
         ${x}=    Evaluate    ${i} + 1
        
    END


###################################################################
#    VALIDA TRILHO DE ASSISTA NO "Os filmes que todos estão vendo"
###################################################################

o trilho de "Os filmes que todos estão vendo" deve exibir
    Log      Verifica exibição do trilho de "Os filmes que todos estão vendo"

    FOR   ${i}  IN RANGE    200
          Run Keyword And Ignore Error    Wait Until Element Is Visible    ${homeTrilho.08}   ${timeout_20}
          ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${homeTrilho.continua_08}
          IF    '${valor[0]}' == 'PASS'
          
                Wait Until Element Is Visible   ${homeTitle.title_filmesstodovendo}     30s
                ${title_canalvivo}=  Get Text   ${homeTitle.title_filmesstodovendo}

                Exit For Loop If    '${valor[0]}' == ('PASS')
            
          ELSE
                Sleep    60ms
                Press Keys   NONE   ARROW_DOWN  ARROW_DOWN
          END
    END

realiza o trilho da grid "Os filmes que todos estão vendo"
   Wait Until Element Is Visible   ${homeTrilho.filmesstodovendo}     30s

   FOR   ${i}  IN RANGE    200
         
         ${resultado}=  BuiltIn.Run Keyword And Ignore Error    Get Text      xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Os filmes que todos estão vendo')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[${i+1}]
         Run Keyword If  '${resultado[0]}' == ('PASS', None)   Sleep   2s

         IF    '${resultado[0]}' == 'FAIL'

                ${condition}=   BuiltIn.Run Keyword And Ignore Error    Element Should be Visible    xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Os filmes que todos estão vendo')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
                IF  '${condition[0]}' == 'PASS'
                      Wait Until Element Is Visible   ${homeTrilho.continua_08}     20s
                      Press Keys  ${homeTrilho.continua_08}   ARROW_RIGHT
                ELSE
                      Log To Console    Trilho = '${i}'
                      Exit For Loop If    '${resultado[0]}' == ('FAIL')     
                END
         END

        #  Log To Console    Trilho = '${i}'
         ${x}=    Evaluate    ${i} + 1
        
    END

    
###################################################################
#    VALIDA TRILHO DE ASSISTA NO "Top 10 - Mais Consumidos"
###################################################################

o trilho de "Top 10 - Mais Consumidos" deve exibir
    Log      Verifica exibição do trilho de "Top 10 - Mais Consumidos"

    FOR   ${i}  IN RANGE    200
          Run Keyword And Ignore Error    Wait Until Element Is Visible    ${homeTrilho.continua_16}   ${timeout_20}
          ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${homeTrilho.continua_16}
          IF    '${valor[0]}' == 'PASS'
          
                Wait Until Element Is Visible   ${homeTitle.title_top10maisconsumidos}     30s
                ${title_canalvivo}=  Get Text   ${homeTitle.title_top10maisconsumidos}

                Exit For Loop If    '${valor[0]}' == ('PASS')
            
          ELSE
                Sleep    60ms
                Press Keys   NONE   ARROW_DOWN  ARROW_DOWN
          END
    END

realiza o trilho da grid de "Top 10 - Mais Consumidos"
   Wait Until Element Is Visible   ${homeTrilho.top10maisconsumidos}     30s

   FOR   ${i}  IN RANGE    200
         
         ${resultado}=  BuiltIn.Run Keyword And Ignore Error    Get Text      xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Top 10 - Mais Consumidos')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[${i+1}]
         Run Keyword If  '${resultado[0]}' == ('PASS', None)   Sleep   2s

         IF    '${resultado[0]}' == 'FAIL'

                ${condition}=   BuiltIn.Run Keyword And Ignore Error    Element Should be Visible    xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Top 10 - Mais Consumidos')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
                IF  '${condition[0]}' == 'PASS'
                      Wait Until Element Is Visible   ${homeTrilho.continua_16}     20s
                      Press Keys  ${homeTrilho.continua_16}   ARROW_RIGHT
                ELSE
                      Log To Console    Trilho = '${i}'
                      Exit For Loop If    '${resultado[0]}' == ('FAIL')     
                END
         END

        #  Log To Console    Trilho = '${i}'
         ${x}=    Evaluate    ${i} + 1
        
    END


###################################################################
#    VALIDA TRILHO DE ASSISTA NO "Navegue pelo Globoplay"
###################################################################

o trilho de "Navegue pelo Globoplay" deve exibir
    Log      Verifica exibição do trilho de "Navegue pelo Globoplay"

    FOR   ${i}  IN RANGE    200
          Run Keyword And Ignore Error    Wait Until Element Is Visible    ${homeTrilho.continua_17}   ${timeout_20}
          ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${homeTrilho.continua_17}
          IF    '${valor[0]}' == 'PASS'
          
                Wait Until Element Is Visible   ${homeTitle.title_naveguegloboplay}     30s
                ${title_canalvivo}=  Get Text   ${homeTitle.title_naveguegloboplay}

                Exit For Loop If    '${valor[0]}' == ('PASS')
            
          ELSE
                Sleep    60ms
                Press Keys   NONE   ARROW_DOWN  ARROW_DOWN
          END
    END

realiza o trilho da grid de "Navegue pelo Globoplay"
   Wait Until Element Is Visible   ${homeTrilho.naveguegloboplay}     30s

   FOR   ${i}  IN RANGE    200
         
         ${resultado}=  BuiltIn.Run Keyword And Ignore Error    Get Text      xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Navegue pelo Globoplay')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[${i+1}]
         Run Keyword If  '${resultado[0]}' == ('PASS', None)   Sleep   2s

         IF    '${resultado[0]}' == 'FAIL'

                ${condition}=   BuiltIn.Run Keyword And Ignore Error    Element Should be Visible    xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Navegue pelo Globoplay')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
                IF  '${condition[0]}' == 'PASS'
                      Wait Until Element Is Visible   ${homeTrilho.continua_17}     20s
                      Press Keys  ${homeTrilho.continua_17}   ARROW_RIGHT
                ELSE
                      Log To Console    Trilho = '${i}'
                      Exit For Loop If    '${resultado[0]}' == ('FAIL')     
                END
         END

        #  Log To Console    Trilho = '${i}'
         ${x}=    Evaluate    ${i} + 1
        
    END


###################################################################
#    VALIDA TRILHO DE ASSISTA NO "Assista no Disney+"
###################################################################

o trilho de "Assista no Disney+" deve exibir
    Log      Verifica exibição do trilho de "Assista no Disney+"

    FOR   ${i}  IN RANGE    200
          Run Keyword And Ignore Error    Wait Until Element Is Visible    ${homeTrilho.continua_18}   ${timeout_20}
          ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${homeTrilho.continua_18}
          IF    '${valor[0]}' == 'PASS'
          
                Wait Until Element Is Visible   ${homeTitle.title_assistadisney}     30s
                ${title_canalvivo}=  Get Text   ${homeTitle.title_assistadisney}

                Exit For Loop If    '${valor[0]}' == ('PASS')
            
          ELSE
                Sleep    60ms
                Press Keys   NONE   ARROW_DOWN  ARROW_DOWN
          END
    END

realiza o trilho da grid de "Assista no Disney+"
   Wait Until Element Is Visible   ${homeTrilho.assistadisney}     30s

   FOR   ${i}  IN RANGE    200
         
         ${resultado}=  BuiltIn.Run Keyword And Ignore Error    Get Text      xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Assista no Disney+')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[${i+1}]
         Run Keyword If  '${resultado[0]}' == ('PASS', None)   Sleep   2s

         IF    '${resultado[0]}' == 'FAIL'

                ${condition}=   BuiltIn.Run Keyword And Ignore Error    Element Should be Visible    xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Assista no Disney+')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
                IF  '${condition[0]}' == 'PASS'
                      Wait Until Element Is Visible   ${homeTrilho.continua_18}     20s
                      Press Keys  ${homeTrilho.continua_18}   ARROW_RIGHT
                ELSE
                      Log To Console    Trilho = '${i}'
                      Exit For Loop If    '${resultado[0]}' == ('FAIL')     
                END
         END

        #  Log To Console    Trilho = '${i}'
         ${x}=    Evaluate    ${i} + 1
        
    END


###################################################################
#    VALIDA TRILHO DE ASSISTA NO "Grandes sucessos do cinema"
###################################################################

o trilho de "Grandes sucessos do cinema" deve exibir
    Log      Verifica exibição do trilho de "Grandes sucessos do cinema"

    FOR   ${i}  IN RANGE    200
          Run Keyword And Ignore Error    Wait Until Element Is Visible    ${homeTrilho.continua_19}   ${timeout_20}
          ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${homeTrilho.continua_19}
          IF    '${valor[0]}' == 'PASS'
          
                Wait Until Element Is Visible   ${homeTitle.title_grandessucesso}     30s
                ${title_canalvivo}=  Get Text   ${homeTitle.title_grandessucesso}

                Exit For Loop If    '${valor[0]}' == ('PASS')
            
          ELSE
                Sleep    60ms
                Press Keys   NONE   ARROW_DOWN  ARROW_DOWN
          END
    END

realiza o trilho da grid de "Grandes sucessos do cinema"
   Wait Until Element Is Visible   ${homeTrilho.grandessucesso}     30s

   FOR   ${i}  IN RANGE    200
         
         ${resultado}=  BuiltIn.Run Keyword And Ignore Error    Get Text      xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Grandes sucessos do cinema')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[${i+1}]
         Run Keyword If  '${resultado[0]}' == ('PASS', None)   Sleep   2s

         IF    '${resultado[0]}' == 'FAIL'

                ${condition}=   BuiltIn.Run Keyword And Ignore Error    Element Should be Visible    xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Grandes sucessos do cinema')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
                IF  '${condition[0]}' == 'PASS'
                      Wait Until Element Is Visible   ${homeTrilho.continua_19}     20s
                      Press Keys  ${homeTrilho.continua_19}   ARROW_RIGHT
                ELSE
                      Log To Console    Trilho = '${i}'
                      Exit For Loop If    '${resultado[0]}' == ('FAIL')     
                END
         END

        #  Log To Console    Trilho = '${i}'
         ${x}=    Evaluate    ${i} + 1
        
    END



###################################################################
#    VALIDA TRILHO DE ASSISTA NO "Em alta no Telecine"
###################################################################

o trilho de "Em alta no Telecine" deve exibir
    Log      Verifica exibição do trilho de "Assista no Disney+"

    FOR   ${i}  IN RANGE    200
          Run Keyword And Ignore Error    Wait Until Element Is Visible    ${homeTrilho.continua_20}   ${timeout_20}
          ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${homeTrilho.continua_20}
          IF    '${valor[0]}' == 'PASS'
          
                Wait Until Element Is Visible   ${homeTitle.title_grandessucesso}     30s
                ${title_canalvivo}=  Get Text   ${homeTitle.title_grandessucesso}

                Exit For Loop If    '${valor[0]}' == ('PASS')
            
          ELSE
                Sleep    60ms
                Press Keys   NONE    ARROW_DOWN  ARROW_DOWN
          END
    END

realiza o trilho da grid de "Em alta no Telecine"
   Wait Until Element Is Visible   ${homeTrilho.grandessucesso}     30s

   FOR   ${i}  IN RANGE    200
         
         ${resultado}=  BuiltIn.Run Keyword And Ignore Error    Get Text      xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Em alta no TelecineVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[${i+1}]
         Run Keyword If  '${resultado[0]}' == ('PASS', None)   Sleep   2s

         IF    '${resultado[0]}' == 'FAIL'

                ${condition}=   BuiltIn.Run Keyword And Ignore Error    Element Should be Visible    xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Em alta no TelecineVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
                IF  '${condition[0]}' == 'PASS'
                      Wait Until Element Is Visible   ${homeTrilho.continua_20}     20s
                      Press Keys  ${homeTrilho.continua_20}   ARROW_RIGHT
                ELSE
                      Log To Console    Trilho = '${i}'
                      Exit For Loop If    '${resultado[0]}' == ('FAIL')     
                END
         END

        #  Log To Console    Trilho = '${i}'
         ${x}=    Evaluate    ${i} + 1
        
    END


###################################################################
#    VALIDA TRILHO DE ASSISTA NO "Assista de graça"
###################################################################

o trilho de "Assista de graça" deve exibir
    Log      Verifica exibição do trilho de "Assista de graça"

    FOR   ${i}  IN RANGE    200
          Run Keyword And Ignore Error    Wait Until Element Is Visible    ${homeTrilho.continua_21}   ${timeout_20}
          ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${homeTrilho.continua_21}
          IF    '${valor[0]}' == 'PASS'
          
                Wait Until Element Is Visible   ${homeTitle.title_assistagraça}     30s
                ${title_canalvivo}=  Get Text   ${homeTitle.title_assistagraça}

                Exit For Loop If    '${valor[0]}' == ('PASS')
            
          ELSE
                Sleep    60ms
                Press Keys   NONE   ARROW_DOWN  ARROW_DOWN
          END
    END

realiza o trilho da grid de "Assista de graça"
   Wait Until Element Is Visible   ${homeTrilho.assistagraça}     30s

   FOR   ${i}  IN RANGE    200
         
         ${resultado}=  BuiltIn.Run Keyword And Ignore Error    Get Text      xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Assista de graçaVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[${i+1}]
         Run Keyword If  '${resultado[0]}' == ('PASS', None)   Sleep   2s

         IF    '${resultado[0]}' == 'FAIL'

                ${condition}=   BuiltIn.Run Keyword And Ignore Error    Element Should be Visible    xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Assista de graçaVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
                IF  '${condition[0]}' == 'PASS'
                      Wait Until Element Is Visible   ${homeTrilho.continua_21}     20s
                      Press Keys  ${homeTrilho.continua_21}   ARROW_RIGHT
                ELSE
                      Log To Console    Trilho = '${i}'
                      Exit For Loop If    '${resultado[0]}' == ('FAIL')     
                END
         END

        #  Log To Console    Trilho = '${i}'
         ${x}=    Evaluate    ${i} + 1
        
    END


###################################################################
#    VALIDA TRILHO DE ASSISTA NO "Podcasts"
###################################################################

o trilho de "Podcasts" deve exibir
    Log      Verifica exibição do trilho de "Podcasts"

    FOR   ${i}  IN RANGE    200
          Run Keyword And Ignore Error    Wait Until Element Is Visible    ${homeTrilho.22}   ${timeout_20}
          ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${homeTrilho.continua_22}
          IF    '${valor[0]}' == 'PASS'
          
                Wait Until Element Is Visible   ${homeTitle.title_podcasts}     30s
                ${title_canalvivo}=  Get Text   ${homeTitle.title_podcasts}

                Exit For Loop If    '${valor[0]}' == ('PASS')
            
          ELSE
                Sleep    60ms
                Press Keys   NONE   ARROW_DOWN  ARROW_DOWN
          END
    END


realiza o trilho da grid de "Podcasts"
   Wait Until Element Is Visible   ${homeTrilho.podcasts}     30s

   FOR   ${i}  IN RANGE    200
         
         ${resultado}=  BuiltIn.Run Keyword And Ignore Error    Get Text      xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'PodcastsVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[${i+1}]
         Run Keyword If  '${resultado[0]}' == ('PASS', None)   Sleep   2s

         IF    '${resultado[0]}' == 'FAIL'

                ${condition}=   BuiltIn.Run Keyword And Ignore Error    Element Should be Visible    xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'PodcastsVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
                IF  '${condition[0]}' == 'PASS'
                      Wait Until Element Is Visible   ${homeTrilho.continua_22}     20s
                      Press Keys  ${homeTrilho.continua_22}   ARROW_RIGHT
                ELSE
                      Log To Console    Trilho = '${i}'
                      Exit For Loop If    '${resultado[0]}' == ('FAIL')     
                END
         END

        #  Log To Console  podcasts  Trilho = '${i}'
         ${x}=    Evaluate    ${i} + 1
        
    END


###################################################################
#    VALIDA TRILHO DE ASSISTA NO "Novelas que marcaram época"
###################################################################

o trilho de "Novelas que marcaram época" deve exibir
    Log      Verifica exibição do trilho de "Novelas que marcaram época"

    FOR   ${i}  IN RANGE    200
          Run Keyword And Ignore Error    Wait Until Element Is Visible    ${homeTrilho.continua_23}   ${timeout_20}
          ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${homeTrilho.continua_23}
          IF    '${valor[0]}' == 'PASS'
          
                Wait Until Element Is Visible   ${homeTitle.title_novelasepoca}     30s
                ${title_canalvivo}=  Get Text   ${homeTitle.title_novelasepoca}

                Exit For Loop If    '${valor[0]}' == ('PASS')
            
          ELSE
                Sleep    60ms
                Press Keys   NONE   ARROW_DOWN  ARROW_DOWN
          END
    END

realiza o trilho da grid de "Novelas que marcaram época"
   Wait Until Element Is Visible   ${homeTrilho.novelasepoca}     30s

   FOR   ${i}  IN RANGE    200
         
         ${resultado}=  BuiltIn.Run Keyword And Ignore Error    Get Text      xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Novelas que marcaram época')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[${i+1}]
         Run Keyword If  '${resultado[0]}' == ('PASS', None)   Sleep   2s

         IF    '${resultado[0]}' == 'FAIL'

                ${condition}=   BuiltIn.Run Keyword And Ignore Error    Element Should be Visible    xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Novelas que marcaram época')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
                IF  '${condition[0]}' == 'PASS'
                      Wait Until Element Is Visible   ${homeTrilho.continua_23}     20s
                      Press Keys  ${homeTrilho.continua_23}   ARROW_RIGHT
                ELSE
                      Log To Console    Trilho = '${i}'
                      Exit For Loop If    '${resultado[0]}' == ('FAIL')     
                END
         END

        #  Log To Console    Trilho = '${i}'
         ${x}=    Evaluate    ${i} + 1
        
    END


###################################################################
#    VALIDA TRILHO DE ASSISTA NO "Produções Originais Globoplay"
###################################################################

o trilho de "Produções Originais Globoplay" deve exibir
    Log      Verifica exibição do trilho de "Produções Originais Globoplay"

    FOR   ${i}  IN RANGE    200
          Run Keyword And Ignore Error    Wait Until Element Is Visible    ${homeTrilho.continua_24}   ${timeout_20}
          ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${homeTrilho.continua_24}
          IF    '${valor[0]}' == 'PASS'
          
                Wait Until Element Is Visible   ${homeTitle.title_originaisgloboplay}     30s
                ${title_canalvivo}=  Get Text   ${homeTitle.title_originaisgloboplay}

                Exit For Loop If    '${valor[0]}' == ('PASS')
            
          ELSE
                Press Keys   NONE   ARROW_DOWN  ARROW_DOWN
          END
    END

realiza o trilho da grid de "Produções Originais Globoplay"
       Wait Until Element Is Visible   ${homeTrilho.originaisgloboplay}     30s

   FOR   ${i}  IN RANGE    200
         
         ${resultado}=  BuiltIn.Run Keyword And Ignore Error    Get Text      xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Produções Originais GloboplayVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[${i+1}]
         Run Keyword If  '${resultado[0]}' == ('PASS', None)   Sleep   2s

         IF    '${resultado[0]}' == 'FAIL'

                ${condition}=   BuiltIn.Run Keyword And Ignore Error    Element Should be Visible    xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Produções Originais GloboplayVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
                IF  '${condition[0]}' == 'PASS'
                      Wait Until Element Is Visible   ${homeTrilho.continua_24}     20s
                      Press Keys  ${homeTrilho.continua_24}   ARROW_RIGHT
                ELSE
                      Log To Console    Trilho = '${i}'
                      Exit For Loop If    '${resultado[0]}' == ('FAIL')     
                END
         END

        #  Log To Console    Trilho = '${i}'
         ${x}=    Evaluate    ${i} + 1
        
    END


###################################################################
#    VALIDA TRILHO DE ASSISTA NO "Séries premiadas"
###################################################################

o trilho de "Séries premiadas" deve exibir
    Log      Verifica exibição do trilho de "Séries premiadas"

    FOR   ${i}  IN RANGE    200
          Run Keyword And Ignore Error    Wait Until Element Is Visible    ${homeTrilho.continua_25}   ${timeout_20}
          ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${homeTrilho.continua_25}
          IF    '${valor[0]}' == 'PASS'
          
                Wait Until Element Is Visible   ${homeTitle.title_sogloboplay}     30s
                ${title_canalvivo}=  Get Text   ${homeTitle.title_sogloboplay}

                Exit For Loop If    '${valor[0]}' == ('PASS')
            
          ELSE
                Sleep    60ms
                Press Keys   NONE   ARROW_DOWN  ARROW_DOWN
          END
    END

realiza o trilho da grid de "Séries premiadas"
   Wait Until Element Is Visible   ${homeTrilho.sogloboplay}     30s

   FOR   ${i}  IN RANGE    200
         
         ${resultado}=  BuiltIn.Run Keyword And Ignore Error    Get Text      xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Séries premiadasVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[${i+1}]
         Run Keyword If  '${resultado[0]}' == ('PASS', None)   Sleep   2s

         IF    '${resultado[0]}' == 'FAIL'

                ${condition}=   BuiltIn.Run Keyword And Ignore Error    Element Should be Visible    xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Séries premiadasVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
                IF  '${condition[0]}' == 'PASS'
                      Wait Until Element Is Visible   ${homeTrilho.continua_25}     20s
                      Press Keys  ${homeTrilho.continua_25}   ARROW_RIGHT
                ELSE
                      Log To Console    Trilho = '${i}'
                      Exit For Loop If    '${resultado[0]}' == ('FAIL')     
                END
         END

        #  Log To Console    Trilho = '${i}'
         ${x}=    Evaluate    ${i} + 1
        
    END


###################################################################
#    VALIDA TRILHO DE ASSISTA NO "Só no Globoplay"
###################################################################

o trilho de "Só no Globoplay" deve exibir
    Log      Verifica exibição do trilho de "Produções Originais Globoplay"

    FOR   ${i}  IN RANGE    200
          Run Keyword And Ignore Error    Wait Until Element Is Visible    ${homeTrilho.continua_26}   ${timeout_20}
          ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${homeTrilho.continua_26}
          IF    '${valor[0]}' == 'PASS'
          
                Wait Until Element Is Visible   ${homeTitle.title_originaisgloboplay}     30s
                ${title_canalvivo}=  Get Text   ${homeTitle.title_originaisgloboplay}

                Exit For Loop If    '${valor[0]}' == ('PASS')
            
          ELSE
                Sleep    60ms
                Press Keys   NONE    ARROW_DOWN  ARROW_DOWN
          END
    END

realiza o trilho da grid de "Só no Globoplay"
       Wait Until Element Is Visible   ${homeTrilho.originaisgloboplay}     30s

   FOR   ${i}  IN RANGE    200
         
         ${resultado}=  BuiltIn.Run Keyword And Ignore Error    Get Text      xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Só no GloboplayVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[${i+1}]
         Run Keyword If  '${resultado[0]}' == ('PASS', None)   Sleep   2s

         IF    '${resultado[0]}' == 'FAIL'

                ${condition}=   BuiltIn.Run Keyword And Ignore Error    Element Should be Visible    xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Só no GloboplayVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
                IF  '${condition[0]}' == 'PASS'
                      Wait Until Element Is Visible   ${homeTrilho.continua_26}     20s
                      Press Keys  ${homeTrilho.continua_26}   ARROW_RIGHT
                ELSE
                      Log To Console    Trilho = '${i}'
                      Exit For Loop If    '${resultado[0]}' == ('FAIL')     
                END
         END

        #  Log To Console    Trilho = '${i}'
         ${x}=    Evaluate    ${i} + 1
        
    END


###################################################################
#    VALIDA TRILHO DE ASSISTA NO "Os favoritos da criançada"
###################################################################

o trilho de "Os favoritos da criançada" deve exibir
    Log      Verifica exibição do trilho de "Os favoritos da criançada"

    FOR   ${i}  IN RANGE    200
          Run Keyword And Ignore Error    Wait Until Element Is Visible    ${homeTrilho.continua_27}   ${timeout_20}
          ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${homeTrilho.continua_27}
          IF    '${valor[0]}' == 'PASS'
          
                Wait Until Element Is Visible   ${homeTitle.tltle_criancada}     30s
                ${title_canalvivo}=  Get Text   ${homeTitle.tltle_criancada}

                Exit For Loop If    '${valor[0]}' == ('PASS')
            
          ELSE
                Sleep    60ms
                Press Keys   NONE   ARROW_DOWN  ARROW_DOWN
          END
    END

realiza o trilho da grid de "Os favoritos da criançada"
   Wait Until Element Is Visible   ${homeTrilho.criancada}     30s

   FOR   ${i}  IN RANGE    200
         
         ${resultado}=  BuiltIn.Run Keyword And Ignore Error    Get Text      xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Os favoritos da criançadaVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[${i+1}]
         Run Keyword If  '${resultado[0]}' == ('PASS', None)   Sleep   2s

         IF    '${resultado[0]}' == 'FAIL'

                ${condition}=   BuiltIn.Run Keyword And Ignore Error    Element Should be Visible    xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Os favoritos da criançadaVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
                IF  '${condition[0]}' == 'PASS'
                      Wait Until Element Is Visible   ${homeTrilho.continua_27}     20s
                      Press Keys  ${homeTrilho.continua_27}   ARROW_RIGHT
                ELSE
                      Log To Console    Trilho = '${i}'
                      Exit For Loop If    '${resultado[0]}' == ('FAIL')     
                END
         END

        #  Log To Console    Trilho = '${i}'
         ${x}=    Evaluate    ${i} + 1
        
    END


###################################################################
#    VALIDA TRILHO DE ASSISTA NO "Sucessos no Globoplay"
###################################################################

o trilho de "Sucessos no Globoplay" deve exibir
    Log      Verifica exibição do trilho de "Sucessos no Globoplay"

    FOR   ${i}  IN RANGE    200
          Run Keyword And Ignore Error    Wait Until Element Is Visible    ${homeTrilho.continua_28}   ${timeout_20}
          ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${homeTrilho.continua_28}
          IF    '${valor[0]}' == 'PASS'
          
                Wait Until Element Is Visible   ${homeTitle.title_sucessosgloboplay}     30s
                ${title_canalvivo}=  Get Text   ${homeTitle.title_sucessosgloboplay}

                Exit For Loop If    '${valor[0]}' == ('PASS')
            
          ELSE
                Sleep    60ms
                Press Keys   NONE   ARROW_DOWN  ARROW_DOWN
          END
    END

realiza o trilho da grid de "Sucessos no Globoplay"
       Wait Until Element Is Visible   ${homeTrilho.sucessosgloboplay}     30s

   FOR   ${i}  IN RANGE    200
         
         ${resultado}=  BuiltIn.Run Keyword And Ignore Error    Get Text      xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Sucessos no Globoplay')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[${i+1}]
         Run Keyword If  '${resultado[0]}' == ('PASS', None)   Sleep   2s

         IF    '${resultado[0]}' == 'FAIL'

                ${condition}=   BuiltIn.Run Keyword And Ignore Error    Element Should be Visible    xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Sucessos no Globoplay')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
                IF  '${condition[0]}' == 'PASS'
                      Wait Until Element Is Visible   ${homeTrilho.continua_28}     20s
                      Press Keys  ${homeTrilho.continua_28}   ARROW_RIGHT
                ELSE
                      Log To Console    Trilho = '${i}'
                      Exit For Loop If    '${resultado[0]}' == ('FAIL')     
                END
         END

        #  Log To Console    Trilho = '${i}'
         ${x}=    Evaluate    ${i} + 1
        
    END


########################################################################
#    VALIDA TRILHO DE ASSISTA NO "Documentários sobre Personalidades"
########################################################################

o trilho de "Documentários sobre Personalidades" deve exibir
    Log      Verifica exibição do trilho de "Documentários sobre Personalidades"

    FOR   ${i}  IN RANGE    200
          Run Keyword And Ignore Error    Wait Until Element Is Visible    ${homeTrilho.continua_29}   ${timeout_20}
          ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${homeTrilho.continua_29}
          IF    '${valor[0]}' == 'PASS'
          
                Wait Until Element Is Visible   ${homeTitle.title_personalidades}     30s
                ${title_canalvivo}=  Get Text   ${homeTitle.title_personalidades} 

                Exit For Loop If    '${valor[0]}' == ('PASS')
            
          ELSE
                Sleep    60ms
                Press Keys   NONE   ARROW_DOWN  ARROW_DOWN
          END
    END

realiza o trilho da grid de "Documentários sobre Personalidades"
       Wait Until Element Is Visible   ${homeTrilho.personalidades}     30s

   FOR   ${i}  IN RANGE    200
         
         ${resultado}=  BuiltIn.Run Keyword And Ignore Error    Get Text      xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Documentários sobre PersonalidadesVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[${i+1}]
         Run Keyword If  '${resultado[0]}' == ('PASS', None)   Sleep   2s

         IF    '${resultado[0]}' == 'FAIL'

                ${condition}=   BuiltIn.Run Keyword And Ignore Error    Element Should be Visible    xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Documentários sobre PersonalidadesVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
                IF  '${condition[0]}' == 'PASS'
                      Wait Until Element Is Visible   ${homeTrilho.continua_29}     20s
                      Click element  ${homeTrilho.continua_29}
                ELSE
                      Log To Console    Trilho = '${i}'
                      Exit For Loop If    '${resultado[0]}' == ('FAIL')     
                END
         END

        #  Log To Console    Trilho = '${i}'
         ${x}=    Evaluate    ${i} + 1
        
    END


########################################################################
#    VALIDA TRILHO DE ASSISTA NO "As notícias mais quentes"
########################################################################

o trilho de "As notícias mais quentes" deve exibir
    Log      Verifica exibição do trilho de "As notícias mais quentes"

    FOR   ${i}  IN RANGE    200
          Run Keyword And Ignore Error    Wait Until Element Is Visible    ${homeTrilho.continua_30}   ${timeout_20}
          ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${homeTrilho.continua_30}
          IF    '${valor[0]}' == 'PASS'
          
                Wait Until Element Is Visible   ${homeTitle.title_noticiasmais}     30s
                ${title_canalvivo}=  Get Text   ${homeTitle.title_noticiasmais}

                Exit For Loop If    '${valor[0]}' == ('PASS')
            
          ELSE
                Sleep    60ms
                Press Keys   NONE   ARROW_DOWN
          END
    END

realiza o trilho da grid de "As notícias mais quentes"
       Wait Until Element Is Visible   ${homeTrilho.noticiasmais}     30s

   FOR   ${i}  IN RANGE    200
         
         ${resultado}=  BuiltIn.Run Keyword And Ignore Error    Get Text      xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'As notícias mais quentes')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[${i+1}]
         Run Keyword If  '${resultado[0]}' == ('PASS', None)   Sleep   2s

         IF    '${resultado[0]}' == 'FAIL'

                ${condition}=   BuiltIn.Run Keyword And Ignore Error    Element Should be Visible    xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'As notícias mais quentes')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
                IF  '${condition[0]}' == 'PASS'
                      Wait Until Element Is Visible   ${homeTrilho.continua_30}     20s
                      Press Keys  ${homeTrilho.continua_30}   ARROW_RIGHT
                ELSE
                      Log To Console    Trilho = '${i}'
                      Exit For Loop If    '${resultado[0]}' == ('FAIL')     
                END
         END

        #  Log To Console    Trilho = '${i}'
         ${x}=    Evaluate    ${i} + 1
        
    END


########################################################################
#    VALIDA TRILHO DE ASSISTA NO "Vídeos mais vistos"
########################################################################

o trilho de "Vídeos mais vistos" deve exibir
    Log      Verifica exibição do trilho de "Vídeos mais vistos"

    FOR   ${i}  IN RANGE    200
          Run Keyword And Ignore Error    Wait Until Element Is Visible    ${homeTrilho.continua_31}   ${timeout_20}
          ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${homeTrilho.continua_31}
          IF    '${valor[0]}' == 'PASS'
          
                Wait Until Element Is Visible   ${homeTitle.title_videosmais}     30s
                ${title_canalvivo}=  Get Text   ${homeTitle.title_videosmais}

                Exit For Loop If    '${valor[0]}' == ('PASS')
            
          ELSE  
                Sleep    60ms 
                Press Keys   NONE    ARROW_DOWN  ARROW_DOWN
          END
    END

realiza o trilho da grid de "Vídeos mais vistos"
   Wait Until Element Is Visible   ${homeTrilho.videosmais}     30s

   FOR   ${i}  IN RANGE    100
         
         ${resultado}=  BuiltIn.Run Keyword And Ignore Error    Get Text      xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Vídeos mais vistos')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[${i+1}]
         Run Keyword If  '${resultado[0]}' == ('PASS', None)   Sleep   2s

         IF    '${resultado[0]}' == 'FAIL'

                ${condition}=   BuiltIn.Run Keyword And Ignore Error    Element Should be Visible    xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Vídeos mais vistos')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
                IF  '${condition[0]}' == 'PASS'
                      Wait Until Element Is Visible   ${homeTrilho.continua_31}     20s
                      Press Keys  ${homeTrilho.continua_31}   ARROW_RIGHT
                ELSE
                      Log To Console    Trilho = '${i}'
                      Exit For Loop If    '${resultado[0]}' == ('FAIL')     
                END
         END

        #  Log To Console    Trilho = '${i}'
         ${x}=    Evaluate    ${i} + 1
        
    END


########################################################################
#    VALIDA TRILHO DE ASSISTA NO "Continue navegando"
########################################################################

o trilho de "Continue navegando" deve exibir
    Log      Verifica exibição do trilho de "Continue navegando"

    FOR   ${i}  IN RANGE    200
          Run Keyword And Ignore Error    Wait Until Element Is Visible    ${homeTrilho.continua_32}   ${timeout_20}
          ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${homeTrilho.continua_32}
          IF    '${valor[0]}' == 'PASS'
                
                Press Keys   NONE   ARROW_DOWN  ARROW_DOWN
                
                Wait Until Element Is Visible   ${homeTitle.title_continuenavegando}     30s
                ${title_canalvivo}=  Get Text   ${homeTitle.title_continuenavegando}

                Exit For Loop If    '${valor[0]}' == ('PASS')
            
          ELSE
                Press Keys   NONE   ARROW_DOWN  ARROW_DOWN
          END
    END

realiza o trilho da grid de "Continue navegando"
   Wait Until Element Is Visible   ${homeTrilho.continuenavegando}     30s

   FOR   ${i}  IN RANGE    200
         
         ${resultado}=  BuiltIn.Run Keyword And Ignore Error    Get Text      xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Continue navegando')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[${i+1}]
         Run Keyword If  '${resultado[0]}' == ('PASS', None)   Sleep   2s

         IF    '${resultado[0]}' == 'FAIL'

                ${condition}=   BuiltIn.Run Keyword And Ignore Error    Element Should be Visible    xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Continue navegando')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
                IF  '${condition[0]}' == 'PASS'
                      Wait Until Element Is Visible   ${homeTrilho.continua_32}     20s
                      Press Keys  ${homeTrilho.continua_32}   ARROW_RIGHT
                      # Press Keys    ${homeTrilho.continuenavegando}    TAB
                ELSE
                      Log To Console    Trilho = '${i}'
                      Exit For Loop If    '${resultado[0]}' == ('FAIL')     
                END
         END

        #  Log To Console    Trilho = '${i}'
         ${x}=    Evaluate    ${i} + 1
        
    END


##############################################################

clicar no menu "Explore"
    Wait until element is visible   ${MenuExplore.btn}      20s
    Click element   ${MenuExplore.btn}


clicar em "Categorias"
    Wait until element is visible   ${Categorias.btn}    20s
    Click element   ${Categorias.btn}


clicar na categoria ${categoria}
    Wait until element is visible   ${MenuExplore_Categorias.${categoria}}   20s
    Click element   ${MenuExplore_Categorias.${categoria}}



acessar uma série
    Wait until element is visible   ${pageHome.HighlightPremium}     20s
    Press Keys  xpath=//body    ARROW_DOWN+ARROW_DOWN
    Press Keys  xpath=//body    ENTER


acessar a lista de episódios
    Wait until element is visible   ${pageTitle.episodios_button}  20s
    Click element   ${pageTitle.episodios_button}


a tag "assinantes" deve estar visível
    Wait until element is visible   ${pageEpisodio.tag_assinante}  20s
    Element Should Be Visible    ${pageEpisodio.tag_assinante}



a tag "assinantes" não deve estar visível
    Wait until element is visible   ${pageEpisodio.episodio}   20s
    Element Should Not Be Visible    ${pageEpisodio.tag_assinante}


clicar no menu "Busca"
    Wait until element is visible   ${pageHome.btnMenuBusca}  20s
    Click element   ${pageHome.btnMenuBusca}



#---------------------------------------------------------------------#
#                VALIDAÇÃO DOS CENÁRIOS DE AGORA NA TV                #
#---------------------------------------------------------------------#

seleciona o menu "Agora na TV"
    Log To Console    Seleciona botão do menu "Agora na TV"

    Run Keyword If    '${url_agora_tv}' == 'https://globoplay.globo.com/tv-globo/ao-vivo'    Log To Console     Redirecionado para a página de Agora na TV
    ...         ELSE   Log To Console     <Não redirecinado para a página de Agora na TV> RETORNA URL: '${url_agora_tv}'

    Wait until element is visible   ${page_agoratv.agora_tv}  50s
    Click element   ${page_agoratv.agora_tv}
    Wait until element is visible   ${page_agoratv.btn_assistir}  50s


########################################################
#    VALIDA OPÇÃO DE CANAIS DA PLAYLIST
########################################################

seleciona os canais da playlist
    Wait until element is visible   ${page_agoratv.canais}  20s

    # @{canal}=   Get WebElements   xpath://*[@id="playkit-channels-navigation"]/div[2]/ul/li[1]/div

    Press Keys   ${page_agoratv.canais}   ARROW_DOWN

    FOR   ${i}  IN RANGE    200
         
         ${resultado}=  BuiltIn.Run Keyword And Ignore Error    Get Text      xpath://*[@id="playkit-channels-navigation"]/div[2]/ul/li[${i+1}]/div
         Run Keyword If  '${resultado[0]}' == ('PASS', None)   Sleep   2s

         Log To Console    Canais = '${i}'
        #  Exit For Loop If    '${resultado[0]}' == ('FAIL')  
         ${x}=    Evaluate    ${i} + 1
         Exit For Loop If    '${resultado[0]}' == ('FAIL')  
        
         Press Keys  NONE   ARROW_DOWN        

    END

########################################################
#    VALIDA OPÇÃO AGORA NA TV TODOS
########################################################

clica no sub menu Todos
    Log To Console    Seleciona sub menu Todos

    Wait until element is visible   ${menuTv.todos}  20s
    Sleep   2s
    Click element   ${menuTv.todos}


########################################################
#    VALIDA OPÇÃO AGORA NA TV BBB
########################################################

clica no sub menu BBB
    Log To Console    Seleciona sub menu BBB

    Sleep   2s
    Wait until element is visible   ${menuTv.bbb}  20s

    Click element   ${menuTv.todos}
    Click element   ${menuTv.bbb}


########################################################
#    VALIDA OPÇÃO AGORA NA TV GRATUITOS
########################################################

clica no sub menu Gratuitos
    Log To Console    Seleciona sub menu Gratuitos
    
    Sleep   2s
    Wait until element is visible   ${menuTv.gratuitos}  20s

    Click element   ${menuTv.todos}
    Click element   ${menuTv.gratuitos}


########################################################
#    VALIDA OPÇÃO AGORA NA TV +CANAIS
########################################################

clica no sub menu +Canais
    Log To Console    Seleciona sub menu +Canais
    
    Sleep   2s
    Wait until element is visible   ${menuTv.maiscanais}  20s
    
    Click element   ${menuTv.todos}
    Click element   ${menuTv.maiscanais}


########################################################
#    VALIDA OPÇÃO AGORA NA TV FILMES E SÉRIES
########################################################

clica no sub menu "Filmes e Séries"
    Log To Console    Seleciona sub menu "Filmes e Séries"
    
    Sleep   2s
    Wait until element is visible   ${menuTv.filmes}  20s
    
    Click element   ${menuTv.todos}
    Click element   ${menuTv.filmes}


########################################################
#    VALIDA OPÇÃO AGORA NA TV ESPORTES
########################################################

clica no sub menu "Esportes"
    Log To Console    Seleciona sub menu "Esportes"
    
    Sleep   2s
    Click Element   ${homePage.cookie}
    Wait until element is visible   ${menuTv.esportes}  20s
    
    Click element   ${menuTv.todos}
    Click element   ${menuTv.esportes}


########################################################
#    VALIDA OPÇÃO AGORA NA TV JORNALISMO
########################################################

clica no sub menu "Jornalismo"
    Log To Console    Seleciona sub menu "Jornalismo"
    
    Sleep   2s
    Click Element   ${homePage.cookie}
    Wait until element is visible   ${menuTv.jornalismo}  20s
    
    Click element   ${menuTv.todos}
    Click element   ${menuTv.jornalismo}


########################################################
#    VALIDA OPÇÃO AGORA NA TV INFANTIL
########################################################

clica no sub menu "Infantil"
    Log To Console    Seleciona sub menu "Infantil"
    
    Sleep   2s
    Click Element   ${homePage.cookie}
    Wait until element is visible   ${menuTv.infantil}  20s
    
    Click element   ${menuTv.todos}
    Click element   ${menuTv.infantil}

#---------------------------------------------------------------------#
#                  VALIDAÇÃO DOS CENÁRIOS DE EXPLORE                  #
#---------------------------------------------------------------------#

seleciona o menu Explore
    Log To Console    Seleciona botão Explore
    Wait Until Element Is Visible   ${menu_podcasts.explore}     20s
    Click element   ${menu_podcasts.explore}

direciona para a página do Explore
    Log To Console    Valida página explore

    Run Keyword If    '${url_explore}' == 'https://globoplay.globo.com/categorias/'    Log To Console     Redirecionado para a página de Explore
    ...         ELSE   Log To Console     <Não redirecinado para a página de Explore> RETORNA URL: '${url_explore}'

    Wait Until Element Is Visible   ${pageExplore.categorias_lista}     20s
    Click element   ${menu_podcasts.explore}

#---------------------------------------------------------------------#
#              VALIDAÇÃO DOS CENÁRIOS DE EXPLORE PODCASTS             #
#---------------------------------------------------------------------#

seleciona a aba "Podcasts"
    Log To Console    Valida aba Podcasts
    Wait Until Element Is Visible   ${menu_podcasts.pod}     20s
    Click element   ${menu_podcasts.pod}

apresenta as opções disponiveis do podcasts
    Log To Console    Valida página de Podcasts

    Run Keyword If    '${url_pod}' == 'https://globoplay.globo.com/podcasts/'    Log To Console     Redirecionado para a página de Podcasts
    ...         ELSE   Log To Console     <Não redirecinado para a página de Podcasts> RETORNA URL: '${url_pod}'
    Wait Until Element Is Visible   ${menu_podcasts.lista}     20s

#----------------------------------------------------------#
# Validação dos cenários PODCASTS - Original Globoplay
#----------------------------------------------------------#

seleciona opção "Original Globoplay"
    Log To Console    Valida opção "Original Globoplay"
    Wait Until Element Is Visible   ${menu_podcasts.originais_globoplay}     20s
    Click element   ${menu_podcasts.originais_globoplay}

apresenta opções disponiveis do Original Globoplay
    Log To Console    Valida página do Podcast "Original Globoplay"
    
    Run Keyword If    '${url_originais}' == 'https://globoplay.globo.com/podcasts/categorias/podcasts-originais-globoplay/'    Log To Console     Redirecionado para a página de Podcasts "Original Globoplay"
    ...         ELSE   Log To Console     <Não redirecinado para a página de Podcast "Original Globoplay"> RETORNA URL: '${url_originais}'
    
    Wait Until Page Contains   text=Podcasts Originais Globoplay
    Wait Until Element Is Visible   ${podcasts.lista}     20s

#----------------------------------------------------------#
# Validação dos cenários PODCASTS - Mais Vistos
#----------------------------------------------------------#

seleciona opção "Podcasts Mais Ouvidos"
    Log To Console    Valida opção "Mais Ouvidos"
    Wait Until Element Is Visible   ${menu_podcasts.mais_ouvidos}     20s
    Click element   ${menu_podcasts.mais_ouvidos}

apresenta opções disponiveis do Podcasts Mais Ouvidos
    Log To Console    Valida página do Podcast "Mais Ouvidos"
    
    Run Keyword If    '${url_mais_ouvidos}' == 'https://globoplay.globo.com/podcasts/categorias/podcasts-mais-ouvidos/'    Log To Console     Redirecionado para a página de Podcasts "Mais Ouvidos"
    ...         ELSE   Log To Console     <Não redirecinado para a página de Podcast "Mais Ouvidos"> RETORNA URL: '${url_mais_ouvidos}'
    
    Wait Until Page Contains   text=Podcasts Mais Ouvidos
    Wait Until Element Is Visible   ${podcasts.lista}     20s

#----------------------------------------------------------#
# Validação dos cenários PODCASTS - Episódios
#----------------------------------------------------------#

apresenta opções disponiveis de episódios
    Log To Console    Valida página do podcast seleciona

    Run Keyword If    '${url_mao_armada}' == 'https://globoplay.globo.com/podcasts/a-mao-armada/7b135c4e-0847-4339-ae77-7d5605ea0ec7'    Log To Console     Redirecionado para a página do Podcasts
    ...         ELSE   Log To Console     <Não redirecinado para a página do Podcast"> RETORNA URL: '${url_mao_armada}'

    Wait Until Element Is Visible   ${grid_podcasts.titulo_principal}     20s
    
    ${titulo_principal}=  Get Text   ${grid_podcasts.titulo_principal}
    Wait Until Element Is Visible   ${grid_podcasts.grid}     20s
    Wait Until Element Is Visible   ${grid_podcasts.grid_episodios}     20s
    
    @{play}=   Get WebElements   CSS:article[class="episode-card"]

    FOR   ${x}  IN RANGE    2000
         Press Keys   NONE   ARROW_DOWN ARROW_DOWN

         Wait Until Element Is Visible   ${grid_podcasts.play}     20s

         ${play}=  BuiltIn.Run Keyword And Ignore Error    Get Text   xpath=//html[1]/body[1]/div[1]/div[1]/div[1]/div[1]/div[2]/span[1]/div[1]/article[1]/div[2]/div[1]/div[1]/section[1]/div[1]/article[${x}+1]   
         Run Keyword If  '${play[0]}' == ('PASS', None)   Sleep   1s 
         
         Log To Console    Episódios = '${x}'
         Exit For Loop If    '${play[0]}' == ('FAIL')  

         ${x}=    Evaluate    ${x} + 1
        
    END

seleciona aba de "Detalhes"
    Log To Console    Valida aba "Detalhes"
    Press Keys   NONE   ARROW_RIGHT ARROW_RIGHT
    Wait Until Element Is Visible   ${grid_podcasts.aba_detalhes}     20s
    Click element   ${grid_podcasts.aba_detalhes}

apresenta os detalhes da serie do podcasts
    Log To Console    Valida página do Podcast
    Wait Until Page Contains   text=Ficha técnica
    Wait Until Page Contains   text=Sinopse

    ${ficha_tecnica}=  Get Text   ${grid_podcasts.ficha_tecnica}
    ${título}=  Get Text   ${grid_podcasts.título}
    ${total_episódios}=  Get Text   ${grid_podcasts.total_episódios}
    ${categoria}=  Get Text   ${grid_podcasts.categoria}
    ${produção}=  Get Text   ${grid_podcasts.produção}
    ${sinopse}=  Get Text   ${grid_podcasts.sinopse}
    ${sinopse_detalhes}=  Get Text   ${grid_podcasts.sinopse_detalhes}

    Wait Until Element Is Visible   ${grid_podcasts.conteudo_detalhes}     20s

# Valida cenários PODCASTS Original Globoplay (À Mão Armada)

seleciona opção "À Mão Armada"
    Log To Console    Valida opção "À Mão Armada"
    Wait Until Element Is Visible   ${podcasts.mao_armada}     20s
    Click element   ${podcasts.mao_armada}

# Valida cenários PODCASTS Original Globoplay (Papo de Parente)

seleciona opção "Papo de Parente"
    Log To Console    Valida opção "Papo de Parente"
    Wait Until Element Is Visible   ${podcasts.papo_parente}     20s
    Click element   ${podcasts.papo_parente}

# Valida cenários PODCASTS Original Globoplay (A República das Milícias)

seleciona opção "A República das Milícias"
    Log To Console    Valida opção "A República das Milícias"
    Wait Until Element Is Visible   ${podcasts.republica_milicias}     20s
    Click element   ${podcasts.republica_milicias}

# Valida cenários PODCASTS Original Globoplay (Abuso)

seleciona opção "Abuso"
    Log To Console    Valida opção "Abuso"
    Wait Until Element Is Visible   ${podcasts.abuso}     20s
    # Click element   ${podcasts.abuso}

    Press Keys   NONE   ARROW_RIGHT ARROW_RIGHT
    
    Run Keyword And Ignore Error    Wait Until Element Is Visible    ${podcasts.abuso}   ${timeout_20}
    ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${podcasts.abuso}
    IF    '${valor[0]}' == 'PASS'
      Click Element   ${podcasts.abuso}
    ELSE
      Click Element   ${menu_podcasts.veja_mais}
    END

# Valida cenários PODCASTS Original Globoplay (Pistoleiros)

seleciona opção "Pistoleiros"
    Log To Console    Valida opção "Pistoleiros"
   
    Run Keyword And Ignore Error    Wait Until Element Is Visible    ${podcasts.pistoleiros}   ${timeout_20}
    ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${podcasts.pistoleiros}
    IF    '${valor[0]}' == 'PASS'
       Click Element   ${podcasts.pistoleiros}
    ELSE
       Press Keys   NONE   ARROW_RIGHT ARROW_RIGHT ARROW_RIGHT

       IF    '${valor[0]}' == 'FAIL'
         Press Keys   NONE   ARROW_RIGHT ARROW_RIGHT ARROW_RIGHT
         Click Element   ${menu_podcasts.cookie}
         Click Element   ${menu_podcasts.veja_mais}
         Wait Until Element Is Visible   ${podcasts.pistoleiros}     20s
         Click Element   ${podcasts.pistoleiros}
       ELSE
         Wait Until Element Is Visible   ${podcasts.pistoleiros}     20s
         Click Element   ${podcasts.pistoleiros}

       END
   END



# Valida cenários PODCASTS Original Globoplay (BBB - Big Brother Brasil)

seleciona opção "BBB - Big Brother Brasil"
    Log To Console    Valida opção "BBB - Big Brother Brasil"
    Wait Until Element Is Visible   ${podcasts.bbb_brasil}     20s
    Click element   ${podcasts.bbb_brasil}

# Valida cenários PODCASTS Original Globoplay (Modus Operandi)

seleciona opção "Modus Operandi"
    Log To Console    Valida opção "Modus Operandi"
    Wait Until Element Is Visible   ${podcasts.modus_operandi}     20s
    Click element   ${podcasts.modus_operandi}

# Valida cenários PODCASTS Original Globoplay (Lady Night)

seleciona opção "Lady Night"
    Log To Console    Valida opção "Lady Night"
    Wait Until Element Is Visible   ${podcasts.lady_night}     20s
    Click element   ${podcasts.lady_night}

# Valida cenários PODCASTS Original Globoplay (O Assunto)
seleciona opção "O Assunto"
    Log To Console    Valida opção "O Assunto"
    Wait Until Element Is Visible   ${podcasts.assunto}     20s
    # Click element   ${podcasts.assunto}

    Press Keys   NONE   ARROW_RIGHT ARROW_RIGHT
    
    Run Keyword And Ignore Error    Wait Until Element Is Visible    ${podcasts.assunto}   ${timeout_20}
    ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${podcasts.assunto}
    IF    '${valor[0]}' == 'PASS'
      Click Element   ${podcasts.assunto}
    ELSE
      Press Keys   NONE   ARROW_RIGHT
    END

# Valida cenários PODCASTS Original Globoplay (E aí Gay?)
seleciona opção "E aí Gay?"
    Log To Console    Valida opção "E aí Gay?"
    
    Run Keyword And Ignore Error    Wait Until Element Is Visible    ${podcasts.ai_gay}   ${timeout_20}
    ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${podcasts.ai_gay}
    IF    '${valor[0]}' == 'PASS'
       Click Element   ${podcasts.ai_gay}
    ELSE
       Press Keys   NONE   ARROW_RIGHT ARROW_RIGHT ARROW_RIGHT

       IF    '${valor[0]}' == 'FAIL'
         Press Keys   NONE   ARROW_RIGHT ARROW_RIGHT ARROW_RIGHT
         Click Element   ${menu_podcasts.cookie}
         Click Element   ${menu_podcasts.veja_mais}
         Wait Until Element Is Visible   ${podcasts.ai_gay}     20s
         Click Element   ${podcasts.ai_gay}
       ELSE
         Wait Until Element Is Visible   ${podcasts.ai_gay}     20s
         Click Element   ${podcasts.ai_gay}

       END
     END

# Valida cenários PODCASTS Original Globoplay (Isso é Fantástico)
seleciona opção "Isso é Fantástico"
    Log To Console    Valida opção "Isso é Fantástico"
    Wait Until Element Is Visible   ${podcasts.isso_fantastico}     20s
    # Click element   ${podcasts.isso_fantastico}
    
    Press Keys   NONE   ARROW_RIGHT ARROW_RIGHT
    
    Run Keyword And Ignore Error    Wait Until Element Is Visible    ${podcasts.isso_fantastico}   ${timeout_20}
    ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${podcasts.isso_fantastico}
    IF    '${valor[0]}' == 'PASS'
      Click Element   ${podcasts.isso_fantastico}
    ELSE
      Press Keys   NONE   ARROW_RIGHT
    END

seleciona opção "Conversas Paralelas"
    Log To Console    Valida opção "Conversas Paralelas"
    
        Run Keyword And Ignore Error    Wait Until Element Is Visible    ${podcasts.conversas_paralelas}   ${timeout_20}
        ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${podcasts.conversas_paralelas}
        IF    '${valor[0]}' == 'PASS'
           Click Element   ${podcasts.conversas_paralelas}
        ELSE
           Press Keys   NONE   ARROW_RIGHT ARROW_RIGHT ARROW_RIGHT

            IF    '${valor[0]}' == 'FAIL'
              Press Keys   NONE   ARROW_RIGHT ARROW_RIGHT ARROW_RIGHT
              Click Element   ${menu_podcasts.cookie}
              Click Element   ${menu_podcasts.veja_mais}
              Wait Until Element Is Visible   ${podcasts.conversas_paralelas}     20s
              Click Element   ${podcasts.conversas_paralelas}
            ELSE
              Wait Until Element Is Visible   ${podcasts.conversas_paralelas}     20s
              Click Element   ${podcasts.conversas_paralelas}

            END
        END

#----------------------------------------------------------------------#
#              VALIDAÇÃO DOS CENÁRIOS DE EXPLORE CATEGORIA             #
#----------------------------------------------------------------------#

# sou um usuário anônimo
#   Log      Abre o site do produto sem logar
#   Open Browser    ${globoplay_home}   ${browser}
#   Maximize Browser Window


#E que estou na home
#  Log      Verifica página home
#  ${url}=    Get Location
#  Run Keyword If    '${url}' == '${globoplay_home}'    Log To Console    Estou na home.
#  ...       ELSE    Log To Console    Não estou na home! URL: '${url}'


#clicar no menu "Explore"
#  Wait Until Element Is Visible    ${Home.btnMenuExplore}   ${timeout_20}
#  Click Element    ${Home.btnMenuExplore}


# Solicitação de login
devo ver a solicitação de login com a Conta Globo
  Log  ...
  Select Frame    ${Frame.ContaGlobo}
  Wait Until Element Is Visible    ${MenuExplore.textoContaGlobo}   ${timeout_20}
  Element Should Be Visible   ${MenuExplore.textoContaGlobo}
  Unselect Frame


# Menu Explore
selecionar "Categorias"
  Sleep  2s
  Click Element    ${Categorias.btn}


selecionar "Canais"
  Wait Until Element Is Visible    ${Canais.btn}   ${timeout_20}
  Click Element    ${Canais.btn}

#----------------------------------------------------------------------#
#              VALIDAÇÃO DOS CENÁRIOS DE EXPLORE CATEGORIA             #
#----------------------------------------------------------------------#

# Menu Explore - Categorias - Página
o título "Novelas" deve estar visível
  Run Keyword And Ignore Error    Wait Until Element Is Visible    ${Categorias.tituloNovelas}   ${timeout_20}
  ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${Categorias.tituloNovelas}
  IF    '${valor[0]}' == 'PASS'
    Log To Console    O título "Novelas" ficou visível.
  ELSE
    Log To Console    O título "Novelas" não ficou visível.
  END


o título "Séries" deve estar visível
  Run Keyword And Ignore Error    Wait Until Element Is Visible    ${Categorias.tituloSeries}   ${timeout_20}
  ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${Categorias.tituloSeries}
  IF    '${valor[0]}' == 'PASS'
    Log To Console    O título "Séries" ficou visível.
  ELSE
    Log To Console    O título "Séries" não ficou visível.
  END


o título "Filmes" deve estar visível
  Run Keyword And Ignore Error    Wait Until Element Is Visible    ${Categorias.tituloFilmes}   ${timeout_20}
  ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${CategoriastituloFilmes}
  IF    '${valor[0]}' == 'PASS'
    Log To Console    O título "Filmes" ficou visível.
  ELSE
    Log To Console    O título "Filmes" não ficou visível.
  END


o título "Infantil" deve estar visível
  Run Keyword And Ignore Error    Wait Until Element Is Visible    ${Categorias.tituloInfantil}   ${timeout_20}
  ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${Categorias.tituloInfantil}
  IF    '${valor[0]}' == 'PASS'
    Log To Console    O título "Infantil" ficou visível.
  ELSE
    Log To Console    O título "Infantil" não ficou visível.
  END


o título "Realities" deve estar visível
  Run Keyword And Ignore Error    Wait Until Element Is Visible    ${Categorias.tituloRealities}   ${timeout_20}
  ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${Categorias.tituloRealities}
  IF    '${valor[0]}' == 'PASS'
    Log To Console    O título "Realities" ficou visível.
  ELSE
    Log To Console    O título "Realities" não ficou visível.
  END


o título "Documentários" deve estar visível
  Run Keyword And Ignore Error    Wait Until Element Is Visible    ${Categorias.tituloDocumentarios}   ${timeout_20}
  ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${Categorias.tituloDocumentarios}
  IF    '${valor[0]}' == 'PASS'
    Log To Console    O título "Documentários" ficou visível.
  ELSE
    Log To Console    O título "Documentários" não ficou visível.
  END


o título "Esportes" deve estar visível
  Run Keyword And Ignore Error    Wait Until Element Is Visible    ${Categorias.tituloEsportes}   ${timeout_20}
  ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${Categorias.tituloEsportes}
  IF    '${valor[0]}' == 'PASS'
    Log To Console    O título "Esportes" ficou visível.
  ELSE
    Log To Console    O título "Esportes" não ficou visível.
  END


o título "Variedades" deve estar visível
  Run Keyword And Ignore Error    Wait Until Element Is Visible    ${Categorias.tituloVariedades}   ${timeout_20}
  ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${Categorias.tituloVariedades}
  IF    '${valor[0]}' == 'PASS'
    Log To Console    O título "Variedades" ficou visível.
  ELSE
    Log To Console    O título "Variedades" não ficou visível.
  END


o título "Humor" deve estar visível
  Run Keyword And Ignore Error    Wait Until Element Is Visible    ${Categorias.tituloHumor}   ${timeout_20}
  ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${Categorias.tituloHumor}
  IF    '${valor[0]}' == 'PASS'
    Log To Console    O título "Humor" ficou visível.
  ELSE
    Log To Console    O título "Humor" não ficou visível.
  END


o título "Música" deve estar visível
  Run Keyword And Ignore Error    Wait Until Element Is Visible    ${Categorias.tituloMusica}   ${timeout_20}
  ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${Categorias.tituloMusica}
  IF    '${valor[0]}' == 'PASS'
    Log To Console    O título "Música" ficou visível.
  ELSE
    Log To Console    O título "Música" não ficou visível.
  END


o título "Jornalismo" deve estar visível
  Run Keyword And Ignore Error    Wait Until Element Is Visible    ${Categorias.tituloJornalismo}   ${timeout_20}
  ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${Categorias.tituloJornalismo}
  IF    '${valor[0]}' == 'PASS'
    Log To Console    O título "Jornalismo" ficou visível.
  ELSE
    Log To Console    O título "Jornalismo" não ficou visível.
  END


o título "Programas Locais" deve estar visível
  Run Keyword And Ignore Error    Wait Until Element Is Visible    ${Categorias.tituloProgramasLocais}   ${timeout_20}
  ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${Categorias.tituloProgramasLocais}
  IF    '${valor[0]}' == 'PASS'
    Log To Console    O título "Programas Locais" ficou visível.
  ELSE
    Log To Console    O título "Programas Locais" não ficou visível.
  END


# Menu Explore - Categorias - Redirecionamento de página
devo ser redirecinado para a página "Novelas"
  ${url}=    Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/categorias/novelas/'    Log To Console       Redirecionado para a página Novelas.
  ...       ELSE    Log To Console    Não redirecinado para a página Novelas! URL: '${url}'


devo ser redirecinado para a página "Séries"
  ${url}=    Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/categorias/series/'    Log To Console       Redirecionado para a página Séries.
  ...       ELSE    Log To Console    Não redirecinado para a página Séries! URL: '${url}'


devo ser redirecinado para a página "Filmes"
  ${url}=    Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/categorias/filmes/'    Log To Console       Redirecionado para a página Filmes.
  ...       ELSE    Log To Console    Não redirecinado para a página Filmes! URL: '${url}'


devo ser redirecinado para a página "Infantil"
  ${url}=    Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/categorias/infantil/'    Log To Console       Redirecionado para a página Infantil.
  ...       ELSE    Log To Console    Não redirecinado para a página Infantil! URL: '${url}'


devo ser redirecinado para a página "Realities"
  ${url}=     Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/categorias/reality-shows/'    Log To Console       Redirecionado para a página Realities.
  ...       ELSE    Log To Console    Não redirecinado para a página Realities! URL: '${url}'


devo ser redirecinado para a página "Documentários"
  ${url}=    Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/categorias/documentarios/'    Log To Console       Redirecionado para a página Documentários.
  ...       ELSE    Log To Console    Não redirecinado para a página Documentários! URL: '${url}'


devo ser redirecinado para a página "Variedades"
  ${url}=    Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/categorias/variedades/'    Log To Console       Redirecionado para a página Variedades.
  ...       ELSE    Log To Console    Não redirecinado para a página Variedades! URL: '${url}'


devo ser redirecinado para a página "Humor"
  ${url}=    Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/categorias/humor/'    Log To Console       Redirecionado para a página Humor.
  ...       ELSE    Log To Console    Não redirecinado para a página Humor! URL: '${url}'


devo ser redirecinado para a página "Música"
  ${url}=    Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/categorias/especiais/'    Log To Console       Redirecionado para a página Música.
  ...       ELSE    Log To Console    Não redirecinado para a página Música! URL: '${url}'


devo ser redirecinado para a página "Esportes"
  ${url}=    Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/categorias/esportes/'    Log To Console       Redirecionado para a página Esportes.
  ...       ELSE    Log To Console    Não redirecinado para a página Esportes! URL: '${url}'


devo ser redirecinado para a página "Jornalismo"
  ${url}=    Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/categorias/jornalismo/'    Log To Console       Redirecionado para a página Jornalismo.
  ...       ELSE    Log To Console    Não redirecinado para a página Jornalismo! URL: '${url}'


devo ser redirecinado para a página "Programas Locais"
  ${url}=    Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/programas-locais/'    Log To Console       Redirecionado para a página Programas Locais.
  ...       ELSE    Log To Console    Não redirecinado para a página Programas Locais! URL: '${url}'


# Menu Explore - Categorias - Conteúdos
selecionar "Documentários"
  Click Element    ${Documentarios.btn}


selecionar "Novelas"
  Sleep   2s
  Click Element    ${Novelas.btn}


selecionar "Infantil"
  Wait Until Element Is Visible    ${Infantil.btn}    ${timeout_20}
  Click Element    ${Infantil.btn}


selecionar "Realities"
  Click Element    ${Realities.btn}


selecionar "Filmes"
  Click Element    ${Filmes.btn}


selecionar "Séries"
  Click Element    ${Series.btn}


selecionar "Variedades"
  Click Element    ${Variedades.btn}


selecionar "Humor"
  Scroll Element Into View     ${MenuExplore.footer}
  Click Element    ${Humor.btn}


selecionar "Música"
  Scroll Element Into View     ${MenuExplore.footer}
  Click Element    ${Musica.btn}


selecionar "Esportes"
  Scroll Element Into View     ${MenuExplore.footer}
  Click Element    ${Esportes.btn}


selecionar "Jornalismo"
  Scroll Element Into View     ${MenuExplore.footer}
  Click Element    ${Jornalismo.btn}


selecionar "Programas Locais"
  Scroll Element Into View     ${MenuExplore.footer}
  Click Element    ${ProgramasLocais.btn}


# Menu Explore - Categorias - Banner
o banner deve estar visível
  Log      Verifica existência do banner na Categoria escolhida
  Sleep  2s
  ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible     ${Categorias.banner}
  Run Keyword If    '${valor[0]}' == 'PASS'     Log To Console    Mostrou o banner.
  ...       ELSE    Log To Console    Não mostrou o banner.


# Menu Explore - Categorias - Veja Mais Banner
selecionar "Veja Mais"
  Log      Verifica o Veja Mais recomendado no banner
  Wait Until Element Is Visible    ${Categorias.btnVejaMaisBanner}   ${timeout_20}
  Click Element   ${Categorias.btnVejaMaisBanner}


selecionar "Assine Já"
  Wait Until Element Is Visible    ${Categorias.btnAssineJaBanner}    ${timeout_20}
  Click Element    ${Categorias.btnAssineJaBanner}


# Menu Explore - Categorias - Assine Já Banner
devo conseguir ver o botão "Assine já"
  Log      Verifica o Assine Já ao clilcar no recomendado no banner
  Wait Until Element Is Visible    ${Categorias.btnAssineJaBanner}   ${timeout_20}
  Element Should Be Visible    ${Categorias.btnAssineJaBanner}


# Menu Explore - Categorias&Canais - Botão "Veja Mais" em Ver Todos
selecionar "Veja Mais" em Ver Todos
  Log  ...
  Scroll Element Into View     ${MenuExplore.footer}
  Wait Until Element Is Visible    ${Categorias.btnVerTodos}   ${timeout_20}
  Click Element    ${Categorias.btnVerTodos}


# Menu Explore - Categorias - Ver Todos
devo conseguir localizar o botão "Veja mais"
  Log      Verifica a existência do botão "Veja Mais"
  Scroll Element Into View     ${MenuExplore.footer}
  Wait Until Element Is Visible    ${Categorias.btnVejaMais}   ${timeout_20}
  Element Should Be Visible    ${Categorias.btnVejaMais}


devo conseguir localizar "Esportes - Todos os títulos"
  Log      Verifica a existência de "Esportes - Todos os títulos"
  Wait Until Element Is Visible    ${Esportes.tituloEsportesTodosOsTitulos}   ${timeout_20}
  Element Should Be Visible    ${Esportes.tituloEsportesTodosOsTitulos}


# Menu Explore - Categorias&Canais - Títulos
devo conseguir localizar "Ver todos"
  Log      Verifica a existência do botão Veja mais ao final da página
  Scroll Element Into View     ${MenuExplore.footer}
  Wait Until Element Is Visible    ${Categorias.btnVerTodos}   ${timeout_20}
  Element Should Be Visible    ${Categorias.btnVerTodos}


# Menu Explore - Categorias - ProgramasLocais
selecionar "Acre"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloAcre}   ${timeout_20}
  Click Element    ${ProgramasLocais.tituloAcre}


selecionar "Alagoas"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloAlagoas}   ${timeout_20}
  Click Element    ${ProgramasLocais.tituloAlagoas}


selecionar "Amapá"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloAmapa}   ${timeout_20}
  Click Element    ${ProgramasLocais.tituloAmapa}


selecionar "Amazonas"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloAmazonas}   ${timeout_20}
  Click Element    ${ProgramasLocais.tituloAmazonas}


selecionar "Bahia"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloBahia}   ${timeout_20}
  Click Element    ${ProgramasLocais.tituloBahia}


selecionar "Ceará"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloCeara}   ${timeout_20}
  Click Element    ${ProgramasLocais.tituloCeara}


selecionar "Distrito Federal"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloDistritoFederal}   ${timeout_20}
  Click Element    ${ProgramasLocais.tituloDistritoFederal}


selecionar "Espírito Santo"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloEspiritoSanto}   ${timeout_20}
  Click Element    ${ProgramasLocais.tituloEspiritoSanto}


selecionar "Goiás"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloGoias}   ${timeout_20}
  Click Element    ${ProgramasLocais.tituloGoias}


selecionar "Maranhão"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloMaranhao}   ${timeout_20}
  Click Element    ${ProgramasLocais.tituloMaranhao}


selecionar "Mato Grosso"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloMatoGrosso}   ${timeout_20}
  Click Element    ${ProgramasLocais.tituloMatoGrosso}


selecionar "Mato Grosso do Sul"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloMatoGrossoDoSul}   ${timeout_20}
  Click Element    ${ProgramasLocais.tituloMatoGrossoDoSul}


selecionar "Minas Gerais"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloMinasGerais}   ${timeout_20}
  Click Element    ${ProgramasLocais.tituloMinasGerais}


selecionar "Paraná"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloParana}   ${timeout_20}
  Click Element    ${ProgramasLocais.tituloParana}


selecionar "Paraíba"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloParaiba}   ${timeout_20}
  Click Element    ${ProgramasLocais.tituloParaiba}


selecionar "Pará"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloPara}   ${timeout_20}
  Click Element    ${ProgramasLocais.tituloPara}


selecionar "Pernambuco"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloPernambuco}   ${timeout_20}
  Click Element    ${ProgramasLocais.tituloPernambuco}


selecionar "Piauí"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloPiaui}   ${timeout_20}
  Click Element    ${ProgramasLocais.tituloPiaui}


selecionar "Rio Grande do Norte"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloRioGrandeDoNorte}   ${timeout_20}
  Click Element    ${ProgramasLocais.tituloRioGrandeDoNorte}


selecionar "Rio Grande do Sul"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloRioGrandeDoSul}   ${timeout_20}   ${timeout_20}
  Click Element    ${ProgramasLocais.tituloRioGrandeDoSul}


selecionar "Rio de Janeiro"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloRioDeJaneiro}   ${timeout_20}
  Click Element    ${ProgramasLocais.tituloRioDeJaneiro}


selecionar "Rondônia"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloRondonia}   ${timeout_20}
  Click Element    ${ProgramasLocais.tituloRondonia}


selecionar "Roraima"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloRoraima}   ${timeout_20}
  Click Element    ${ProgramasLocais.tituloRoraima}


selecionar "Santa Catarina"
  Sleep  2s
  Scroll Element Into View    ${MenuExplore.footer}
  Wait Until Element Is Visible    ${ProgramasLocais.tituloSantaCatarina}   ${timeout_20}
  Click Element    ${ProgramasLocais.tituloSantaCatarina}


selecionar "Sergipe"
  Sleep  2s
  Scroll Element Into View    ${MenuExplore.footer}
  Wait Until Element Is Visible    ${ProgramasLocais.tituloSergipe}   ${timeout_20}
  Click Element    ${ProgramasLocais.tituloSergipe}


selecionar "São Paulo"
  Sleep  2s
  Scroll Element Into View    ${MenuExplore.footer}
  Wait Until Element Is Visible    ${ProgramasLocais.tituloSaoPaulo}   ${timeout_20}
  Click Element    ${ProgramasLocais.tituloSaoPaulo}


selecionar "Tocantins"
  Sleep  2s
  Scroll Element Into View    ${MenuExplore.footer}
  Wait Until Element Is Visible    ${ProgramasLocais.tituloTocantins}   ${timeout_20}
  Click Element    ${ProgramasLocais.tituloTocantins}


# Menu Explore - Categorias - ProgramasLocais
devo conseguir ver o texto "Acre"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloAcre}   ${timeout_20}
  Element Should Be Visible    ${ProgramasLocais.tituloAcre}


devo conseguir ver o texto "Alagoas"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloAlagoas}   ${timeout_20}
  Element Should Be Visible    ${ProgramasLocais.tituloAlagoas}


devo conseguir ver o texto "Amapá"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloAmapa}   ${timeout_20}
  Element Should Be Visible    ${ProgramasLocais.tituloAmapa}


devo conseguir ver o texto "Amazonas"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloAmazonas}   ${timeout_20}
  Element Should Be Visible    ${ProgramasLocais.tituloAmazonas}


devo conseguir ver o texto "Bahia"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloBahia}   ${timeout_20}
  Element Should Be Visible    ${ProgramasLocais.tituloBahia}


devo conseguir ver o texto "Ceará"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloCeara}   ${timeout_20}
  Element Should Be Visible    ${ProgramasLocais.tituloCeara}


devo conseguir ver o texto "Distrito Federal"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloDistritoFederal}   ${timeout_20}
  Element Should Be Visible    ${ProgramasLocais.tituloDistritoFederal}


devo conseguir ver o texto "Grande Vitória, ES"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloGrandeVitoria}   ${timeout_20}
  Element Should Be Visible    ${ProgramasLocais.tituloGrandeVitoria}


devo conseguir ver o texto "Goiás"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloGoias}   ${timeout_20}
  Element Should Be Visible    ${ProgramasLocais.tituloGoias}


devo conseguir ver o texto "Maranhão"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloMaranhao}   ${timeout_20}
  Element Should Be Visible    ${ProgramasLocais.tituloMaranhao}


devo conseguir ver o texto "Mato Grosso"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloMatoGrosso}   ${timeout_20}
  Element Should Be Visible    ${ProgramasLocais.tituloMatoGrosso}


devo conseguir ver o texto "Mato Grosso do Sul"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloMatoGrossoDoSul}   ${timeout_20}
  Element Should Be Visible    ${ProgramasLocais.tituloMatoGrossoDoSul}


devo conseguir ver o texto "Minas Gerais"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloMinasGerais}   ${timeout_20}
  Element Should Be Visible    ${ProgramasLocais.tituloMinasGerais}


devo conseguir ver o texto "Paraná"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloParana}   ${timeout_20}
  Element Should Be Visible    ${ProgramasLocais.tituloParana}


devo conseguir ver o texto "Paraíba"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloParaiba}   ${timeout_20}
  Element Should Be Visible    ${ProgramasLocais.tituloParaiba}


devo conseguir ver o texto "Pará"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloPara}   ${timeout_20}
  Element Should Be Visible    ${ProgramasLocais.tituloPara}


devo conseguir ver o texto "Pernambuco"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloPernambuco}   ${timeout_20}
  Element Should Be Visible    ${ProgramasLocais.tituloPernambuco}


devo conseguir ver o texto "Piauí"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloPiaui}   ${timeout_20}
  Element Should Be Visible    ${ProgramasLocais.tituloPiaui}


devo conseguir ver o texto "Rio Grande do Norte"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloRioGrandeDoNorte}   ${timeout_20}
  Element Should Be Visible    ${ProgramasLocais.tituloRioGrandeDoNorte}


devo conseguir ver o texto "Rio Grande do Sul"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloRioGrandeDoSul}   ${timeout_20}
  Element Should Be Visible    ${ProgramasLocais.tituloRioGrandeDoSul}


devo conseguir ver o texto "Rio de Janeiro"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloRioDeJaneiro}   ${timeout_20}
  Element Should Be Visible    ${ProgramasLocais.tituloRioDeJaneiro}


devo conseguir ver o texto "Rondônia"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloRondonia}   ${timeout_20}
  Element Should Be Visible    ${ProgramasLocais.tituloRondonia}


devo conseguir ver o texto "Roraima"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloRoraima}   ${timeout_20}
  Element Should Be Visible    ${ProgramasLocais.tituloRoraima}


devo conseguir ver o texto "Santa Catarina"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloSantaCatarina}   ${timeout_20}
  Element Should Be Visible    ${ProgramasLocais.tituloSantaCatarina}


devo conseguir ver o texto "Sergipe"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloSergipe}   ${timeout_20}
  Element Should Be Visible    ${ProgramasLocais.tituloSergipe}


devo conseguir ver o texto "São Paulo"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloSaoPaulo}   ${timeout_20}
  Element Should Be Visible    ${ProgramasLocais.tituloSaoPaulo}


devo conseguir ver o texto "Tocantins"
  Wait Until Element Is Visible    ${ProgramasLocais.tituloTocantins}   ${timeout_20}
  Element Should Be Visible    ${ProgramasLocais.tituloTocantins}


# Menu Explore - Categorias - Conteúdo
selecionar "Lady Night"
  Sleep  2s
  Scroll Element Into View     ${MenuExplore.footer}
  Click Element    ${Variedades.LadyNight}
  ${url}=    Get Location
  IF    '${url}' == 'https://globoplay.globo.com/lady-night/t/8sgfsb8qRH/'
    Log To Console    Redirecionado para "Lady Night".
  ELSE
    Log To Console    Não Redirecionado para "Lady Night".
  END


selecionar "Mais Você"
  Sleep  2s
  Scroll Element Into View     ${MenuExplore.footer}
  Click Element    ${Variedades.MaisVoce}
  ${url}=    Get Location
  IF    '${url}' == 'https://globoplay.globo.com/mais-voce/t/n9Vq6SMvsm/'
    Log To Console    Redirecionado para "Mais Você".
  ELSE
    Log To Console    Não Redirecionado para "Mais Você".
  END


selecionar "Multi Tom"
  Sleep  2s
  Scroll Element Into View     ${Humor.MultiTom}
  Click Element    ${Humor.MultiTom}
  ${url}=    Get Location
  IF    '${url}' == 'https://globoplay.globo.com/multi-tom/t/cmVr1RjCT8/'
    Log To Console    Redirecionado para "Multi Tom".
  ELSE
    Log To Console    Não Redirecionado para "Multi Tom".
  END


selecionar "Choque de Cultura Show"
  Sleep  2s
  Scroll Element Into View     ${Humor.ChoquedeCulturaShow}
  Click Element    ${Humor.ChoquedeCulturaShow}
  ${url}=    Get Location
  IF    '${url}' == 'https://globoplay.globo.com/choque-de-cultura-show/t/FBqg2t8Cq2/'
    Log To Console    Redirecionado para "Choque de Cultura Show".
  ELSE
    Log To Console    Não Redirecionado para "Choque de Cultura Show".
  END


selecionar "Prêmio Multishow"
  Sleep  2s
  Scroll Element Into View     ${MenuExplore.footer}
  Click Element    ${Musica.PremioMultishow}
  ${url}=    Get Location
  IF    '${url}' == 'https://globoplay.globo.com/premio-multishow/t/RpX7XmkDQM/'
    Log To Console    Redirecionado para "Prêmio Multishow".
  ELSE
    Log To Console    Não Redirecionado para "Prêmio Multishow".
  END


selecionar "Roberto Carlos Especial"
  Sleep  2s
  Scroll Element Into View     ${MenuExplore.footer}
  Click Element    ${Musica.RobertoCarlosEspecial}
  ${url}=    Get Location
  IF    '${url}' == 'https://globoplay.globo.com/roberto-carlos-especial/t/kXRnfccg1q/'
    Log To Console    Redirecionado para "Roberto Carlos Especial".
  ELSE
    Log To Console    Não Redirecionado para "Roberto Carlos Especial".
  END


selecionar "Esporte Espetacular"
  Sleep  2s
  Scroll Element Into View     ${MenuExplore.footer}
  Click Element    ${Esportes.EsporteEspetacular}
  ${url}=    Get Location
  IF    '${url}' == 'https://globoplay.globo.com/esporte-espetacular/t/Jm2mfGZHfq/'
    Log To Console    Redirecionado para "Esporte Espetacular".
  ELSE
    Log To Console    Não Redirecionado para "Esporte Espetacular".
  END


selecionar "Jornal das Dez"
  Sleep  2s
  Scroll Element Into View     ${MenuExplore.footer}
  Wait Until Element Is Visible    ${Jornalismo_JornalDasDez}   ${timeout_20}
  Click Element    ${Jornalismo.JornalDasDez}
  ${url}=    Get Location
  IF    '${url}' == 'https://globoplay.globo.com/jornal-das-dez/t/NSWghfyn6w/'
    Log To Console    Redirecionado para "Jornal das Dez".
  ELSE
    Log To Console    Não Redirecionado para "Jornal das Dez".
  END


selecionar "Jornal Nacional"
  Sleep  2s
  Scroll Element Into View     ${MenuExplore.footer}
  Click Element    ${Jornalismo_JornalNacional}
  ${url}=    Get Location
  IF    '${url}' == 'https://globoplay.globo.com/jornal-nacional/t/MyCrVrr6gW/'
    Log To Console    Redirecionado para "Jornal Nacional".
  ELSE
    Log To Console    Não Redirecionado para "Jornal Nacional".
  END


# Menu Explore - Botão "Conheça o plano"
devo conseguir ver o botão "Conheça o plano"
  Wait Until Element Is Visible    ${MenuExplore.btnConhecaOPlano}   ${timeout_20}
  Element Should Be Visible   ${MenuExplore.btnConhecaOPlano}


# Menu Explore - Categorias - Botão "Assista"
selecionar "Assista"
  Wait Until Element Is Visible    ${Categorias.btnAssista}   ${timeout_20}
  Click Element   ${Categorias.btnAssista}


# Menu Explore - Texto Conteúdo exclusivo
devo conseguir ver o texto "Conteúdo exclusivo gratuito para contas cadastradas"
  Wait Until Element Is Visible    ${MenuExplore.textoConteudoExclusivo}   ${timeout_20}
  Element Should Be Visible   ${MenuExplore.textoConteudoExclusivo}


#---------------------------------------------------------------------#
#              VALIDAÇÃO DOS CENÁRIOS DE EXPLORE CANAIS               #
#---------------------------------------------------------------------#

# Menu Explore - Canais
o título "Assista ao vivo" deve estar visível
  Sleep  2s
  ${valor}=     Run Keyword And Ignore Error    Element Should Be Visible   ${MenuExplore.textoAssistaAoVivo}
  Run Keyword If    '${valor[0]}' == 'PASS'    Log To Console    "Assista ao vivo" está visível.
  ...       ELSE    Log To Console    "Assista ao vivo" não está visível.


o título "Canais" deve estar visível
  Sleep  2s
  ${valor}=     Run Keyword And Ignore Error    Element Should Be Visible   ${MenuExplore.textoCanais}
  Run Keyword If    '${valor[0]}' == 'PASS'    Log To Console    "Canais" está visível.
  ...       ELSE    Log To Console    "Canais" não está visível.


# Menu Explore - Canais - Redirecionamento de página
devo ser redirecinado para a página "TV Globo" no "Agora na TV"
  ${url}=  Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/tv-globo/ao-vivo/6120663/'    Log To Console       Redirecionado para a página "TV Globo" no "Agora na TV".
  ...       ELSE    Log To Console    Não redirecinado para a página "TV Globo" no "Agora na TV"! RETORNA URL: '${url}'


devo ser redirecinado para a página "Futura" no "Agora na TV"
  ${url}=  Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/futura/ao-vivo/7420604/'    Log To Console       Redirecionado para a página "Futura" no "Agora na TV".
  ...       ELSE    Log To Console    Não redirecinado para a página "Futura" no "Agora na TV"! RETORNA URL: '${url}'


devo ser redirecinado para a página "CBN SP" no "Agora na TV"
  ${url}=  Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/cbn-sp/ao-vivo/9182156/'    Log To Console       Redirecionado para a página "CBN SP" no "Agora na TV".
  ...       ELSE    Log To Console    Não redirecinado para a página "CBN SP" no "Agora na TV"! RETORNA URL: '${url}'


devo ser redirecinado para a página "CBN RJ" no "Agora na TV"
  ${url}=  Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/cbn-rj/ao-vivo/9182126/'    Log To Console       Redirecionado para a página "CBN RJ" no "Agora na TV".
  ...       ELSE    Log To Console    Não redirecinado para a página "CBN RJ" no "Agora na TV"! RETORNA URL: '${url}'


devo ser redirecinado para a página de assinatura
  Wait Until Element Is Visible    ${MenuExplore.textoAssinatura}    ${timeout_20}
  Element Should Be Visible   ${MenuExplore.textoAssinatura}


devo ser redirecinado para a página de assinatura do Telecine
  Wait Until Element Is Visible    ${Telecine.textoAssinatura}    ${timeout_20}
  Element Should Be Visible   ${Telecine.textoAssinatura}


devo ser redirecinado para a página de assinatura do Premiere
  Wait Until Element Is Visible    ${Premiere.textoAssinatura}    ${timeout_20}
  Element Should Be Visible   ${Premiere.textoAssinatura}


devo ser redirecinado para a página de assinatura do Combate
  Wait Until Element Is Visible    ${Combate.textoAssinatura}    ${timeout_20}
  Element Should Be Visible   ${Combate.textoAssinatura}


# Menu Explore - Canais - Assista ao vivo
selecionar "TV Globo" no "Assista ao vivo"
  Wait Until Element Is Visible    ${TVGlobo.AssistaAoVivo}    ${timeout_20}
  Click Element    ${TVGlobo.AssistaAoVivo}


selecionar "Multishow" no "Assista ao vivo"
  Wait Until Element Is Visible    ${Multishow.AssistaAoVivo}    ${timeout_20}
  Click Element    ${Multishow.AssistaAoVivo}


selecionar "Globonews" no "Assista ao vivo"
  Wait Until Element Is Visible    ${Globonews.AssistaAoVivo}    ${timeout_20}
  Click Element    ${Globonews.AssistaAoVivo}


selecionar "SporTV" no "Assista ao vivo"
  Wait Until Element Is Visible    ${Canais.btnNextAssistaAoVivo}    ${timeout_20}
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Wait Until Element Is Visible    ${SporTV.AssistaAoVivo}    ${timeout_20}
  Click Element    ${SporTV.AssistaAoVivo}


selecionar "GNT" no "Assista ao vivo"
  Wait Until Element Is Visible    ${Canais.btnNextAssistaAoVivo}    ${timeout_20}
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Wait Until Element Is Visible    ${GNT.AssistaAoVivo}    ${timeout_20}
  Click Element    ${GNT.AssistaAoVivo}


selecionar "VIVA" no "Assista ao vivo"
  Wait Until Element Is Visible    ${Canais.btnNextAssistaAoVivo}    ${timeout_20}
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Wait Until Element Is Visible    ${VIVA.AssistaAoVivo}    ${timeout_20}
  Click Element    ${VIVA.AssistaAoVivo}


selecionar "Gloob" no "Assista ao vivo"
  Wait Until Element Is Visible    ${Canais.btnNextAssistaAoVivo}    ${timeout_20}
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Wait Until Element Is Visible    ${Gloob.AssistaAoVivo}    ${timeout_20}
  Click Element    ${Gloob.AssistaAoVivo}


selecionar "Gloobinho" no "Assista ao vivo"
  Wait Until Element Is Visible    ${Canais.btnNextAssistaAoVivo}    ${timeout_20}
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Wait Until Element Is Visible    ${Gloobinho.AssistaAoVivo}    ${timeout_20}
  Click Element    ${Gloobinho.AssistaAoVivo}


selecionar "Megapix" no "Assista ao vivo"
  Wait Until Element Is Visible    ${Canais.btnNextAssistaAoVivo}    ${timeout_20}
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep  2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep  2s
  Click Element    ${Megapix.textoMegapix}


selecionar "Universal TV" no "Assista ao vivo"
  Wait Until Element Is Visible    ${Canais.btnNextAssistaAoVivo}    ${timeout_20}
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Universal+.textoUniversalTV}


selecionar "Studio Universal" no "Assista ao vivo"
  Wait Until Element Is Visible    ${Canais.btnNextAssistaAoVivo}    ${timeout_20}
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Universal+.textoStudioUniversal}


selecionar "SYFY" no "Assista ao vivo"
  Wait Until Element Is Visible    ${Canais.btnNextAssistaAoVivo}    ${timeout_20}
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Universal+.textoSYFY}


selecionar "Canal Brasil" no "Assista ao vivo"
  Wait Until Element Is Visible    ${Canais.btnNextAssistaAoVivo}    ${timeout_20}
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${CanalBrasil.AssistaAoVivo}


selecionar "Canal Off" no "Assista ao vivo"
  Wait Until Element Is Visible    ${Canais.btnNextAssistaAoVivo}    ${timeout_20}
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${CanalOff.AssistaAoVivo}


selecionar "BIS" no "Assista ao vivo"
  Wait Until Element Is Visible    ${Canais.btnNextAssistaAoVivo}    ${timeout_20}
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${BIS.AssistaAoVivo}


selecionar "Modo Viagem" no "Assista ao vivo"
  Wait Until Element Is Visible    ${Canais.btnNextAssistaAoVivo}    ${timeout_20}
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${ModoViagem.AssistaAoVivo}


selecionar "Futura" no "Assista ao vivo"
  Wait Until Element Is Visible    ${Canais.btnNextAssistaAoVivo}    ${timeout_20}
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Futura.AssistaAoVivo}


selecionar "Telecine Premium" no "Assista ao vivo"
  Wait Until Element Is Visible    ${Canais.btnNextAssistaAoVivo}    ${timeout_20}
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Telecine.textoTelecinePremium}


selecionar "Telecine Action" no "Assista ao vivo"
  Wait Until Element Is Visible    ${Canais.btnNextAssistaAoVivo}    ${timeout_20}
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Telecine.textoTelecineAction}


selecionar "Telecine Touch" no "Assista ao vivo"
  Wait Until Element Is Visible    ${Canais.btnNextAssistaAoVivo}    ${timeout_20}
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Telecine.textoTelecineTouch}


selecionar "Telecine Fun" no "Assista ao vivo"
  Wait Until Element Is Visible    ${Canais.btnNextAssistaAoVivo}    ${timeout_20}
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Telecine.textoTelecineFun}


selecionar "Telecine Pipoca" no "Assista ao vivo"
  Wait Until Element Is Visible    ${Canais.btnNextAssistaAoVivo}    ${timeout_20}
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Telecine.textoTelecinePipoca}


selecionar "Telecine Cult" no "Assista ao vivo"
  Wait Until Element Is Visible    ${Canais.btnNextAssistaAoVivo}    ${timeout_20}
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Telecine.textoTelecineCult}


selecionar "Premiere" no "Assista ao vivo"
  Wait Until Element Is Visible    ${Canais.btnNextAssistaAoVivo}    ${timeout_20}
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Premiere.AssistaAoVivo}


selecionar "Combate" no "Assista ao vivo"
  Wait Until Element Is Visible    ${Canais.btnNextAssistaAoVivo}    ${timeout_20}
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Combate.AssistaAoVivo}


selecionar "CBN SP" no "Assista ao vivo"
  Wait Until Element Is Visible    ${Canais.btnNextAssistaAoVivo}    ${timeout_20}
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${CBN.SP_AssistaAoVivo}


selecionar "CBN RJ" no "Assista ao vivo"
  Wait Until Element Is Visible    ${Canais.btnNextAssistaAoVivo}    ${timeout_20}
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${Canais.btnNextAssistaAoVivo}
  Sleep   2s
  Click Element    ${CBN.RJ_AssistaAoVivo}


# Menu Explore - Canais - Canais
selecionar "TV Globo" em "Canais"
  Wait Until Element Is Visible    ${TVGlobo.Canais}    ${timeout_20}
  Click Element    ${TVGlobo.Canais}
  ${url}=  Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/canais/globo/'    Log To Console       Redirecionado para a página "TV Globo" em "Canais".
  ...       ELSE    Log To Console    Não redirecinado para a página "TV Globo" em "Canais"! URL: '${url}'


selecionar "Multishow" em "Canais"
  Wait Until Element Is Visible    ${Multishow.Canais}    ${timeout_20}
  Click Element    ${Multishow.Canais}
  ${url}=  Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/canais/multishow/'    Log To Console       Redirecionado para a página "Multishow" em "Canais".
  ...       ELSE    Log To Console    Não redirecinado para a página "Multishow" em "Canais"! URL: '${url}'


selecionar "Globonews" em "Canais"
  Wait Until Element Is Visible    ${Globonews.Canais}    ${timeout_20}
  Click Element    ${Globonews.Canais}
  ${url}=  Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/canais/globonews/'    Log To Console       Redirecionado para a página "Globonews" em "Canais".
  ...       ELSE    Log To Console    Não redirecinado para a página "Globonews" em "Canais"! URL: '${url}'


selecionar "SporTV" em "Canais"
  Wait Until Element Is Visible    ${SporTV.Canais}    ${timeout_20}
  Click Element    ${SporTV.Canais}
  ${url}=  Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/canais/sportv/'    Log To Console       Redirecionado para a página "SporTV" em "Canais".
  ...       ELSE    Log To Console    Não redirecinado para a página "SporTV" em "Canais"! URL: '${url}'


selecionar "GNT" em "Canais"
  Wait Until Element Is Visible    ${GNT.Canais}    ${timeout_20}
  Click Element    ${GNT.Canais}
  ${url}=  Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/canais/gnt/'    Log To Console       Redirecionado para a página "GNT" em "Canais".
  ...       ELSE    Log To Console    Não redirecinado para a página "GNT" em "Canais"! URL: '${url}'


selecionar "VIVA" em "Canais"
  Wait Until Element Is Visible    ${VIVA.Canais}    ${timeout_20}
  Click Element    ${VIVA.Canais}
  ${url}=  Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/canais/viva/'    Log To Console       Redirecionado para a página "VIVA" em "Canais".
  ...       ELSE    Log To Console    Não redirecinado para a página "VIVA" em "Canais"! URL: '${url}'


selecionar "Gloob" em "Canais"
  Scroll Element Into View     ${MenuExplore.footer}
  Wait Until Element Is Visible    ${Gloob.Canais}    ${timeout_20}
  Click Element    ${Gloob.Canais}
  ${url}=  Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/canais/gloob/'    Log To Console       Redirecionado para a página "Gloob" em "Canais".
  ...       ELSE    Log To Console    Não redirecinado para a página "Gloob" em "Canais"! URL: '${url}'


selecionar "Gloobinho" em "Canais"
  Scroll Element Into View     ${MenuExplore.footer}
  Wait Until Element Is Visible    ${Gloobinho.Canais}    ${timeout_20}
  Click Element    ${Gloobinho.Canais}
  ${url}=  Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/canais/gloobinho/'    Log To Console       Redirecionado para a página "Gloobinho" em "Canais".
  ...       ELSE    Log To Console    Não redirecinado para a página "Gloobinho" em "Canais"! URL: '${url}'


selecionar "Megapix" em "Canais"
  Scroll Element Into View     ${MenuExplore.footer}
  Wait Until Element Is Visible    ${Megapix.Canais}    ${timeout_20}
  Click Element    ${Megapix.Canais}
  ${url}=  Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/canais/megapix/'    Log To Console       Redirecionado para a página "Megapix" em "Canais".
  ...       ELSE    Log To Console    Não redirecinado para a página "Megapix" em "Canais"! URL: '${url}'


selecionar "Universal+" em "Canais"
  Scroll Element Into View     ${MenuExplore.footer}
  Wait Until Element Is Visible    ${Universal+.Canais}    ${timeout_20}
  Click Element    ${Universal+.Canais}
  ${url}=  Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/canais/universal/'    Log To Console       Redirecionado para a página "Universal+" em "Canais".
  ...       ELSE    Log To Console    Não redirecinado para a página "Universal+" em "Canais"! URL: '${url}'


selecionar "Canal Brasil" em "Canais"
  Scroll Element Into View     ${MenuExplore.footer}
  Wait Until Element Is Visible    ${CanalBrasil.Canais}    ${timeout_20}
  Click Element    ${CanalBrasil.Canais}
  ${url}=  Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/canais/canal-brasil/'    Log To Console       Redirecionado para a página "Canal Brasil" em "Canais".
  ...       ELSE    Log To Console    Não redirecinado para a página "Canal Brasil" em "Canais"! URL: '${url}'


selecionar "Canal Off" em "Canais"
  Scroll Element Into View     ${MenuExplore.footer}
  Wait Until Element Is Visible    ${CanalOff.Canais}    ${timeout_20}
  Click Element    ${CanalOff.Canais}
  ${url}=  Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/canais/canal-off/'    Log To Console       Redirecionado para a página "Canal Off" em "Canais".
  ...       ELSE    Log To Console    Não redirecinado para a página "Canal Off" em "Canais"! URL: '${url}'


selecionar "BIS" em "Canais"
  Scroll Element Into View     ${MenuExplore.footer}
  Wait Until Element Is Visible    ${BIS.Canais}    ${timeout_20}
  Click Element    ${BIS.Canais}
  ${url}=  Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/canais/bis/'    Log To Console       Redirecionado para a página "BIS" em "Canais".
  ...       ELSE    Log To Console    Não redirecinado para a página "BIS" em "Canais"! URL: '${url}'


selecionar "Modo Viagem" em "Canais"
  Scroll Element Into View     ${MenuExplore.footer}
  Wait Until Element Is Visible    ${ModoViagem.Canais}    ${timeout_20}
  Click Element    ${ModoViagem.Canais}
  ${url}=  Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/canais/modo-viagem/'    Log To Console       Redirecionado para a página "Modo Viagem" em "Canais".
  ...       ELSE    Log To Console    Não redirecinado para a página "Modo Viagem" em "Canais"! URL: '${url}'


selecionar "Futura" em "Canais"
  Scroll Element Into View     ${MenuExplore.footer}
  Wait Until Element Is Visible    ${Futura.Canais}    ${timeout_20}
  Click Element    ${Futura.Canais}
  ${url}=  Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/canais/futura/'    Log To Console       Redirecionado para a página "Futura" em "Canais".
  ...       ELSE    Log To Console    Não redirecinado para a página "Futura" em "Canais"! URL: '${url}'


selecionar "Telecine" em "Canais"
  Scroll Element Into View     ${MenuExplore.footer}
  Wait Until Element Is Visible    ${Telecine.Canais}    ${timeout_20}
  Click Element    ${Telecine.Canais}
  ${url}=  Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/canais/telecine/'    Log To Console       Redirecionado para a página "Telecine" em "Canais".
  ...       ELSE    Log To Console    Não redirecinado para a página "Telecine" em "Canais"! URL: '${url}'


selecionar "Premiere" em "Canais"
  Scroll Element Into View     ${MenuExplore.footer}
  Wait Until Element Is Visible    ${Premiere.Canais}    ${timeout_20}
  Click Element    ${Premiere.Canais}
  ${url}=  Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/canais/premiere/'    Log To Console       Redirecionado para a página "Premiere" em "Canais".
  ...       ELSE    Log To Console    Não redirecinado para a página "Premiere" em "Canais"! URL: '${url}'


selecionar "Combate" em "Canais"
  Scroll Element Into View     ${MenuExplore.footer}
  Wait Until Element Is Visible    ${Combate.Canais}    ${timeout_20}
  Click Element    ${Combate.Canais}
  ${url}=  Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/canais/combate/'    Log To Console       Redirecionado para a página "Combate" em "Canais".
  ...       ELSE    Log To Console    Não redirecinado para a página "Combate" em "Canais"! URL: '${url}'


# Menu Explore - Canais - Botões
selecionar "Assista" no banner
  Wait Until Element Is Visible    ${Canais.btnAssista}    ${timeout_20}
  Click Element    ${Canais.btnAssista}


selecionar "Conheça o novo plano"
  Wait Until Element Is Visible    ${Canais.btnConhecaONovoPlano}    ${timeout_20}
  Click Element    ${Canais.btnConhecaONovoPlano}


selecionar "Conheça o plano"
  Wait Until Element Is Visible    ${MenuExplore.btnConhecaOPlano}    ${timeout_20}
  Click Element    ${MenuExplore.btnConhecaOPlano}


selecionar "Eu quero"
  Wait Until Element Is Visible    ${MenuExplore.btnEuQuero}    ${timeout_20}
  Click Element    ${MenuExplore.btnEuQuero}


selecionar "Veja Mais" no banner
  Wait Until Element Is Visible    ${Canais.btnVejaMais_Banner}    ${timeout_20}
  Click Element    ${Canais.btnVejaMais_Banner}


selecionar "Assista agora" em "Agora na Tv"
  Wait Until Element Is Visible    ${Canais.btnAssistaAgora}    ${timeout_20}
  Click Element    ${Canais.btnAssistaAgora}


selecionar "Escolha seu plano"
  Wait Until Element Is Visible    ${Canais.btnEscolhaSeuPlano}    ${timeout_20}
  Click Button   ${Canais.btnEscolhaSeuPlano}


selecionar "Assine Combate"
  Wait Until Element Is Visible    ${Combate.btnAssineCombate}    ${timeout_20}
  Click Button   ${Combate.btnAssineCombate}


# Menu Explore - Canais - Título
o título "Escolha seu plano" deve estar visível
  Log      Verifica existência do texto "Escolha seu plano"
  Wait Until Element Is Visible    ${Canais.textoEscolhaSeuPlano}   ${timeout_20}
  Element Should Be Visible     ${Canais.textoEscolhaSeuPlano}


# Menu Explore - Canais - Banner
o banner deste canal deve estar visível
  Log      Verifica existência do banner em Canais
  Wait Until Element Is Visible    ${Canais.banner}   ${timeout_20}
  Element Should Be Visible     ${Canais.banner}


# Menu Explore - Canais - "Todos os títulos - Multishow"
devo conseguir ver o texto "Todos os títulos - Multishow"
  Wait Until Element Is Visible    ${Multishow.textoTodosOsTitulos}   ${timeout_20}
  Element Should Be Visible   ${Multishow.textoTodosOsTitulos}


# Menu Explore - Canais - "Agora no Megapix"
selecionar "Agora no Megapix"
  Sleep      2s
  Scroll Element Into View     ${MenuExplore.footer}
  Wait Until Element Is Visible    ${Megapix.textoMegapix}   ${timeout_20}
  Click Element    ${Megapix.textoMegapix}


# Menu Explore - Canais - "Agora no Premiere"
selecionar "Agora no Premiere"
  Sleep      2s
  Scroll Element Into View     ${MenuExplore.footer}
  Wait Until Element Is Visible    ${Premiere.AgoraNoPremiere_Canais}   ${timeout_20}
  Click Element    ${Premiere.AgoraNoPremiere_Canais}


# Menu Explore - Canais -  Universal TV
selecionar "Universal TV"
  Wait Until Element Is Visible    ${Universal+.textoUniversalTV}   ${timeout_20}
  Scroll Element Into View     ${MenuExplore.footer}
  Scroll Element Into View     ${Universal+.textoUniversalTV}
  Click Element    ${Universal+.textoUniversalTV}


selecionar "Studio Universal"
  Wait Until Element Is Visible    ${Universal+.textoStudioUniversal}   ${timeout_20}
  Scroll Element Into View     ${MenuExplore.footer}
  Scroll Element Into View     ${Universal+.textoStudioUniversal}
  Click Element    ${Universal+.textoStudioUniversal}


selecionar "SYFY"
  Wait Until Element Is Visible    ${Universal+.textoSYFY}  ${timeout_20}
  Scroll Element Into View     ${MenuExplore.footer}
  Scroll Element Into View     ${Universal+.textoSYFY}
  Click Element    ${Universal+.textoSYFY}


# Menu Explore - Canais -  Telecine
selecionar "Telecine Premium" em "Canais Telecine"
  Sleep  2s
  Scroll Element Into View     ${MenuExplore.footer}
  Scroll Element Into View     ${Telecine.textoCanaisTelecine}
  Wait Until Element Is Visible    ${Telecine.textoTelecinePremium}   ${timeout_20}
  Click Element    ${Telecine.textoTelecinePremium}


selecionar "Telecine Action" em "Canais Telecine"
  Sleep  2s
  Scroll Element Into View     ${MenuExplore.footer}
  Scroll Element Into View     ${Telecine.textoCanaisTelecine}
  Wait Until Element Is Visible    ${Telecine.textoTelecineAction}   ${timeout_20}
  Click Element    ${Telecine.textoTelecineAction}


selecionar "Telecine Touch" em "Canais Telecine"
  Sleep  2s
  Scroll Element Into View     ${MenuExplore.footer}
  Scroll Element Into View     ${Telecine.textoCanaisTelecine}
  Wait Until Element Is Visible    ${Telecine.textoTelecineTouch}   ${timeout_20}
  Click Element    ${Telecine.textoTelecineTouch}


selecionar "Telecine Fun" em "Canais Telecine"
  Sleep  2s
  Scroll Element Into View     ${MenuExplore.footer}
  Scroll Element Into View     ${Telecine.textoCanaisTelecine}
  Wait Until Element Is Visible    ${Telecine.textoTelecineFun}   ${timeout_20}
  Click Element    ${Telecine.textoTelecineFun}


selecionar "Telecine Pipoca" em "Canais Telecine"
  Sleep  2s
  Scroll Element Into View     ${MenuExplore.footer}
  Scroll Element Into View     ${Telecine.textoCanaisTelecine}
  Click Element    ${Telecine.btnNextTelecine_Canais}
  Sleep      2s
  Wait Until Element Is Visible    ${Telecine.textoTelecinePipoca}   ${timeout_20}
  Click Element    ${Telecine.textoTelecinePipoca}


selecionar "Telecine Cult" em "Canais Telecine"
  # telecine pipoca utilizado, visto que o telecine cult não fica visível
  Sleep  2s
  Scroll Element Into View     ${MenuExplore.footer}
  Scroll Element Into View     ${Telecine.textoCanaisTelecine}
  Click Element    ${Telecine.btnNextTelecine_Canais}
  Sleep      2s
  Wait Until Element Is Visible     ${Telecine.textoTelecineCult}   ${timeout_20}
<<<<<<< HEAD
  Click Element    ${Telecine.textoTelecineCult}
=======
  Click Element    ${Telecine.textoTelecineCult}

>>>>>>> 94bcc07a76d2a35a68903753361268a1b01c4859
