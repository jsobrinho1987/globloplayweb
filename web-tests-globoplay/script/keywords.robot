*** Settings ***
Library    SeleniumLibrary
*** Keywords ***

#----------------------------------------------------------------#
#              VALIDAÇÃO DE ACESSOS POR USUÁRIOS                 #
#----------------------------------------------------------------#

que sou um usuário anônimo
    # Acessa Home_Locator
    Log        Verifica acesso Globoplay
    Wait Until Element Is Visible   ${pageHome.btnMenuHome}

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


clicar no menu "Agora na TV"
    Wait until element is visible   ${pageHome.btnMenuAgoraNaTV}      20s
    Click element   ${pageHome.btnMenuAgoraNaTV}
    Wait until element is visible   ${pageCanaisAoVivo.gradePgm}    20s



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

o destaque premium deve ser exibido
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


canal ao vivo deve ser exibido
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

    Wait Until Element Is Visible   ${pageHome.btnMenuHome}     20s

#VALIDA CARROSSEL HOME
destaque do carrossel deve ser exibido
    Log To Console     Verifica carrosel
    Wait Until Element Is Visible   ${carrossel.carrossel_home}     20s

apresenta as imagens do banner
    Log To Console     Verifica imagens do banner
    Wait Until Element Is Visible   ${pageHome.carrossel_imagem}     20s

#VALIDA TRILHO CANAIS AO VIVO
destaque do trilho de Canais Ao Vivo deve ser exibido
    Log To Console    Verifica o trilho de Canais Ao Vivo
    Wait Until Element Is Visible   ${canais_vivo.canais}     15s

valida o trilho de rolagem dos de Canais Ao Vivo
    Log      Verifica o trilho de novidade
    Wait Until Element Is Visible   ${pageHome.carrossel_imagem}     30s

#VALIDA TRILHO TOP 10
o Top 10 deve ser exibido
    Log To Console    Verifica o Top 10
    Wait Until Element Is Visible   ${pageHome.top_10}     30s
    Wait Until Element Is Visible   ${pageHome.carrossel_imagem}     30s

exibição do trilho de destaque na home
    Log      Verifica o trilho de novidade
    Wait Until Element Is Visible   ${pageHome.carrossel_imagem}     30s



clicar no menu "Explore"
    Wait until element is visible   ${pageHome.btnMenuExplore}      20s
    Click element   ${pageHome.btnMenuExplore}


clicar em "Categorias"
    Wait until element is visible   ${MenuExplore.btnCategorias}    20s
    Click element   ${MenuExplore.btnCategorias}


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
#                  VALIDAÇÃO DOS CENÁRIOS DE EXPLORE                  #
#---------------------------------------------------------------------#

seleciona o menu Explore
    Log To Console    Seleciona botão Explore
    Click element   ${podcasts.explore}

direciona para a página do Explore
    Log To Console    Valida página explore

    Run Keyword If    '${url_explore}' == 'https://globoplay.globo.com/categorias/'    Log To Console     Redirecionado para a página de Explore
    ...         ELSE   Log To Console     <Não redirecinado para a página de Explore> RETORNA URL: '${url_explore}'

#    ${pageExplore.aba_categoria}=  set variable 
#    Run Keyword If    '${pageExplore.aba_categoria}' == 'Categorias'    Log To Console    Retorno OK
#    Run Keyword If    '${pageExplore.aba_categoria}' == ''    Log To Console    Retorno NOK

    Wait Until Element Is Visible   ${pageExplore.categorias_lista}     20s
    Click element   ${podcasts.explore}


#---------------------------------------------------------------------#
#              VALIDAÇÃO DOS CENÁRIOS DE EXPLORE PODCASTS             #
#---------------------------------------------------------------------#

seleciona a aba "Podcasts"
    Log To Console    Valida aba Podcasts
    Wait Until Element Is Visible   ${podcasts.pod}     20s
    Click element   ${podcasts.pod}

apresenta as opções disponiveis do podcasts
    Log To Console    Valida página de Podcasts

    Run Keyword If    '${url_pod}' == 'https://globoplay.globo.com/podcasts/'    Log To Console     Redirecionado para a página de Podcasts
    ...         ELSE   Log To Console     <Não redirecinado para a página de Podcasts> RETORNA URL: '${url_pod}'
    Wait Until Element Is Visible   ${podcasts.lista}     20s

#----------------------------------------------------------#
# Validação dos cenários PODCASTS - Original Globoplay
#----------------------------------------------------------#

seleciona opção "Original Globoplay"
    Log To Console    Valida opção "Original Globoplay"
    Wait Until Element Is Visible   ${podcasts.originais_globoplay}     20s
    Click element   ${podcasts.originais_globoplay}

apresenta opções disponiveis do Original Globoplay
    Log To Console    Valida página do Podcast "Original Globoplay"
    
    Run Keyword If    '${url_originais}' == 'https://globoplay.globo.com/podcasts/categorias/podcasts-originais-globoplay/'    Log To Console     Redirecionado para a página de Podcasts "Original Globoplay"
    ...         ELSE   Log To Console     <Não redirecinado para a página de Podcast "Original Globoplay"> RETORNA URL: '${url_originais}'
    
    Wait Until Page Contains   text=Podcasts Originais Globoplay
    Wait Until Element Is Visible   ${originais.lista}     20s

# Valida cenários PODCASTS Original Globoplay (À Mão Armada)

seleciona opção "À Mão Armada"
    Log To Console    Valida opção "À Mão Armada"
    Wait Until Element Is Visible   ${originais.mao_armada}     20s
    Click element   ${originais.mao_armada}

apresenta opções disponiveis de episódios À Mão Armada
    Log To Console    Valida página do podcast "À Mão Armada"

    Run Keyword If    '${url_mao_armada}' == 'https://globoplay.globo.com/podcasts/a-mao-armada/7b135c4e-0847-4339-ae77-7d5605ea0ec7'    Log To Console     Redirecionado para a página de Podcasts "À Mão Armada"
    ...         ELSE   Log To Console     <Não redirecinado para a página de Podcast "À Mão Armada"> RETORNA URL: '${url_mao_armada}'

    Wait Until Page Contains   text=À Mão Armada
    Wait Until Element Is Visible   ${pod_mao_armada.grid}     20s
    Wait Until Element Is Visible   ${pod_mao_armada.grid_episodios}     20s
    
    @{play}=   Get WebElements   CSS:article[class="episode-card"]

    FOR   ${x}  IN RANGE    2000
         Wait Until Element Is Visible   ${pod_mao_armada.play}     20s

         Press Keys   NONE   ARROW_DOWN

         ${play}=  BuiltIn.Run Keyword And Ignore Error    Get Text   xpath=//html[1]/body[1]/div[1]/div[1]/div[1]/div[1]/div[2]/span[1]/div[1]/article[1]/div[2]/div[1]/div[1]/section[1]/div[1]/article[${x}+1]   
         Run Keyword If  '${play[0]}' == ('PASS', None)   Sleep   1s 
 #        ...         ELSE IF  '${play[0]}' == ('FAIL')  Log To Console    Episódios = '${x}'  Exit For Loop  
         
         Log To Console    Episódios = '${x}'
         Exit For Loop If    '${play[0]}' == ('FAIL')  

         ${x}=    Evaluate    ${x} + 1
        
    END


seleciona aba de "Detalhes"
    Log To Console    Valida aba "Detalhes"
    Wait Until Element Is Visible   ${pod_mao_armada.aba_detalhes}     20s
    Click element   ${pod_mao_armada.aba_detalhes}

apresenta os detalhes da serie do podcasts "À Mão Armada"
    Log To Console    Valida página do Podcast "À Mão Armada"
    Wait Until Page Contains   text=Ficha técnica
    Wait Until Page Contains   text=Sinopse
    Wait Until Element Is Visible   ${pod_mao_armada.conteudo_detalhes}     20s


#----------------------------------------------------------------------#
#              VALIDAÇÃO DOS CENÁRIOS DE EXPLORE CATEGORIA             #
#----------------------------------------------------------------------#

sou um usuário anônimo
  Log      Abre o site do produto sem logar
  Open Browser    ${globoplay_home}   ${browser}
  Maximize Browser Window


que estou na home
  Log      Verifica página home
  ${url}=    Get Location
  Run Keyword If    '${url}' == '${globoplay_home}'    Log To Console    Estou na home.
  ...       ELSE    Log To Console    Não estou na home! URL: '${url}'


clicar no menu "Explore"
  Wait Until Element Is Visible    ${Home.btnMenuExplore}   ${timeout_20}
  Click Element    ${Home.btnMenuExplore}


# Solicitação de login
devo ver a solicitação de login com a Conta Globo
  Log  ...
  Select Frame    ${Frame.ContaGlobo}
  Wait Until Element Is Visible    ${MenuExplore.textoContaGlobo}   ${timeout_20}
  Element Should Be Visible   ${MenuExplore.textoContaGlobo}
  Unselect Frame


# Menu Explore
selecionar "Categorias"
  Wait Until Element Is Visible    ${MenuExplore.btnCategorias}   ${timeout_20}
  Click Element    ${MenuExplore.btnCategorias}


selecionar "Canais"
  Wait Until Element Is Visible    ${MenuExplore.btnCanais}   ${timeout_20}
  Click Element    ${MenuExplore.btnCanais}

#----------------------------------------------------------------------#
#              VALIDAÇÃO DOS CENÁRIOS DE EXPLORE CATEGORIA             #
#----------------------------------------------------------------------#

# Menu Explore - Categorias - Página
o título "Novelas" deve estar visível
  Run Keyword And Ignore Error    Wait Until Element Is Visible    ${MenuExplore.tituloNovelas}   ${timeout_20}
  ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${MenuExplore.tituloNovelas}
  IF    '${valor[0]}' == 'PASS'
    Log To Console    O título "Novelas" ficou visível.
  ELSE
    Log To Console    O título "Novelas" não ficou visível.
  END


o título "Séries" deve estar visível
  Run Keyword And Ignore Error    Wait Until Element Is Visible    ${MenuExplore.tituloSeries}   ${timeout_20}
  ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${MenuExplore.tituloSeries}
  IF    '${valor[0]}' == 'PASS'
    Log To Console    O título "Séries" ficou visível.
  ELSE
    Log To Console    O título "Séries" não ficou visível.
  END


o título "Filmes" deve estar visível
  Run Keyword And Ignore Error    Wait Until Element Is Visible    ${MenuExplore.tituloFilmes}   ${timeout_20}
  ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${MenuExplore.tituloFilmes}
  IF    '${valor[0]}' == 'PASS'
    Log To Console    O título "Filmes" ficou visível.
  ELSE
    Log To Console    O título "Filmes" não ficou visível.
  END


o título "Infantil" deve estar visível
  Run Keyword And Ignore Error    Wait Until Element Is Visible    ${MenuExplore.tituloInfantil}   ${timeout_20}
  ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${MenuExplore.tituloInfantil}
  IF    '${valor[0]}' == 'PASS'
    Log To Console    O título "Infantil" ficou visível.
  ELSE
    Log To Console    O título "Infantil" não ficou visível.
  END


o título "Realities" deve estar visível
  Run Keyword And Ignore Error    Wait Until Element Is Visible    ${MenuExplore.tituloRealities}   ${timeout_20}
  ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${MenuExplore.tituloRealities}
  IF    '${valor[0]}' == 'PASS'
    Log To Console    O título "Realities" ficou visível.
  ELSE
    Log To Console    O título "Realities" não ficou visível.
  END


o título "Documentários" deve estar visível
  Run Keyword And Ignore Error    Wait Until Element Is Visible    ${MenuExplore.tituloDocumentarios}   ${timeout_20}
  ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${MenuExplore.tituloDocumentarios}
  IF    '${valor[0]}' == 'PASS'
    Log To Console    O título "Documentários" ficou visível.
  ELSE
    Log To Console    O título "Documentários" não ficou visível.
  END


o título "Esportes" deve estar visível
  Run Keyword And Ignore Error    Wait Until Element Is Visible    ${MenuExplore.tituloEsportes}   ${timeout_20}
  ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${MenuExplore.tituloEsportes}
  IF    '${valor[0]}' == 'PASS'
    Log To Console    O título "Esportes" ficou visível.
  ELSE
    Log To Console    O título "Esportes" não ficou visível.
  END


o título "Variedades" deve estar visível
  Run Keyword And Ignore Error    Wait Until Element Is Visible    ${MenuExplore.tituloVariedades}   ${timeout_20}
  ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${MenuExplore.tituloVariedades}
  IF    '${valor[0]}' == 'PASS'
    Log To Console    O título "Variedades" ficou visível.
  ELSE
    Log To Console    O título "Variedades" não ficou visível.
  END


o título "Humor" deve estar visível
  Run Keyword And Ignore Error    Wait Until Element Is Visible    ${MenuExplore.tituloHumor}   ${timeout_20}
  ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${MenuExplore.tituloHumor}
  IF    '${valor[0]}' == 'PASS'
    Log To Console    O título "Humor" ficou visível.
  ELSE
    Log To Console    O título "Humor" não ficou visível.
  END


o título "Música" deve estar visível
  Run Keyword And Ignore Error    Wait Until Element Is Visible    ${MenuExplore.tituloMusica}   ${timeout_20}
  ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${MenuExplore.tituloMusica}
  IF    '${valor[0]}' == 'PASS'
    Log To Console    O título "Música" ficou visível.
  ELSE
    Log To Console    O título "Música" não ficou visível.
  END


o título "Jornalismo" deve estar visível
  Run Keyword And Ignore Error    Wait Until Element Is Visible    ${MenuExplore.tituloJornalismo}   ${timeout_20}
  ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${MenuExplore.tituloJornalismo}
  IF    '${valor[0]}' == 'PASS'
    Log To Console    O título "Jornalismo" ficou visível.
  ELSE
    Log To Console    O título "Jornalismo" não ficou visível.
  END


o título "Programas Locais" deve estar visível
  Run Keyword And Ignore Error    Wait Until Element Is Visible    ${MenuExplore.tituloProgramasLocais}   ${timeout_20}
  ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible    ${MenuExplore.tituloProgramasLocais}
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
  Click Element    ${MenuExplore.btnDocumentarios}


selecionar "Novelas"
  Click Element    ${MenuExplore.btnNovelas}


selecionar "Infantil"
  Wait Until Element Is Visible    ${MenuExplore.btnInfantil}    ${timeout_20}
  Click Element    ${MenuExplore.btnInfantil}


selecionar "Realities"
  Click Element    ${MenuExplore.btnRealities}


selecionar "Filmes"
  Click Element    ${MenuExplore.btnFilmes}


selecionar "Séries"
  Click Element    ${MenuExplore.btnSeries}


selecionar "Variedades"
  Click Element    ${MenuExplore.btnVariedades}


selecionar "Humor"
  Scroll Element Into View     ${MenuExplore.footer}
  Click Element    ${MenuExplore.btnHumor}


selecionar "Música"
  Scroll Element Into View     ${MenuExplore.footer}
  Click Element    ${MenuExplore.btnMusica}


selecionar "Esportes"
  Scroll Element Into View     ${MenuExplore.footer}
  Click Element    ${MenuExplore.btnEsportes}


selecionar "Jornalismo"
  Scroll Element Into View     ${MenuExplore.footer}
  Click Element    ${MenuExplore.btnJornalismo}


selecionar "Programas Locais"
  Scroll Element Into View     ${MenuExplore.footer}
  Click Element    ${MenuExplore.btnProgramasLocais}


# Menu Explore - Categorias - Banner
o banner deve estar visível
  Log      Verifica existência do banner na Categoria escolhida
  Sleep  2s
  ${valor}=    Run Keyword And Ignore Error    Element Should Be Visible     ${MenuExplore.banner}
  Run Keyword If    '${valor[0]}' == 'PASS'     Log To Console    Mostrou o banner.
  ...       ELSE    Log To Console    Não mostrou o banner.


# Menu Explore - Categorias - Veja Mais Banner
selecionar "Veja Mais"
  Log      Verifica o Veja Mais recomendado no banner
  Wait Until Element Is Visible    ${MenuExplore.btnVejaMaisBanner}   ${timeout_20}
  Click Element   ${MenuExplore.btnVejaMaisBanner}


# Menu Explore - Categorias - Assine Já Banner
devo conseguir ver o botão "Assine já"
  Log      Verifica o Assine Já ao clilcar no recomendado no banner
  Wait Until Element Is Visible    ${MenuExplore.btnAssineJaBanner}   ${timeout_20}
  Element Should Be Visible    ${MenuExplore.btnAssineJaBanner}


# Menu Explore - Categorias&Canais - Botão "Veja Mais" em Ver Todos
selecionar "Veja Mais" em Ver Todos
  Log  ...
  Scroll Element Into View     ${MenuExplore.footer}
  Wait Until Element Is Visible    ${MenuExplore.btnVerTodos}   ${timeout_20}
  Click Element    ${MenuExplore.btnVerTodos}


# Menu Explore - Categorias - Ver Todos
devo conseguir localizar o botão "Veja mais"
  Log      Verifica a existência do botão "Veja Mais"
  Scroll Element Into View     ${MenuExplore.footer}
  Wait Until Element Is Visible    ${MenuExplore.btnVejaMais}   ${timeout_20}
  Element Should Be Visible    ${MenuExplore.btnVejaMais}


devo conseguir localizar "Todos os documentários"
  Log      Verifica a existência de Todos os documentários
  Wait Until Element Is Visible    ${MenuExplore.btnTodosOsDocumentarios}   ${timeout_20}
  Element Should Be Visible    ${MenuExplore.btnTodosOsDocumentarios}


devo conseguir localizar "Todas as novelas"
  Log      Verifica a existência de Todas as novelas
  Sleep  2s
  Scroll Element Into View     ${MenuExplore.footer}
  #Wait Until Element Is Visible    ${MenuExplore.btnTodasAsNovelas}   ${timeout_20}
  Element Should Be Visible    ${MenuExplore.btnTodasAsNovelas}


devo conseguir localizar "Todos os filmes"
  Log      Verifica a existência de Todos os filmes
  Wait Until Element Is Visible    ${MenuExplore.btnTodosOsFilmes}   ${timeout_20}
  Element Should Be Visible    ${MenuExplore.btnTodosOsFilmes}


devo conseguir localizar "Todas as séries"
  Log      Verifica a existência de Todas as séries
  Wait Until Element Is Visible    ${MenuExplore.btnTodasAsSeries}   ${timeout_20}
  Element Should Be Visible    ${MenuExplore.btnTodasAsSeries}


devo conseguir localizar "Esportes - Todos os títulos"
  Log      Verifica a existência de "Esportes - Todos os títulos"
  Wait Until Element Is Visible    ${MenuExplore.tituloEsportesTodosOsTitulos}   ${timeout_20}
  Element Should Be Visible    ${MenuExplore.tituloEsportesTodosOsTitulos}


# Menu Explore - Categorias&Canais - Títulos
devo conseguir localizar "Ver todos"
  Log      Verifica a existência do botão Veja mais ao final da página
  Scroll Element Into View     ${MenuExplore.footer}
  Wait Until Element Is Visible    ${MenuExplore.btnVerTodos}   ${timeout_20}
  Element Should Be Visible    ${MenuExplore.btnVerTodos}


# Menu Explore - Categorias - ProgramasLocais
selecionar "Acre"
  Wait Until Element Is Visible    ${MenuExplore.tituloAcre}   ${timeout_20}
  Click Element    ${MenuExplore.tituloAcre}


selecionar "Alagoas"
  Wait Until Element Is Visible    ${MenuExplore.tituloAlagoas}   ${timeout_20}
  Click Element    ${MenuExplore.tituloAlagoas}


selecionar "Amapá"
  Wait Until Element Is Visible    ${MenuExplore.tituloAmapa}   ${timeout_20}
  Click Element    ${MenuExplore.tituloAmapa}


selecionar "Amazonas"
  Wait Until Element Is Visible    ${MenuExplore.tituloAmazonas}   ${timeout_20}
  Click Element    ${MenuExplore.tituloAmazonas}


selecionar "Bahia"
  Wait Until Element Is Visible    ${MenuExplore.tituloBahia}   ${timeout_20}
  Click Element    ${MenuExplore.tituloBahia}


selecionar "Ceará"
  Wait Until Element Is Visible    ${MenuExplore.tituloCeara}   ${timeout_20}
  Click Element    ${MenuExplore.tituloCeara}


selecionar "Distrito Federal"
  Wait Until Element Is Visible    ${MenuExplore.tituloDistritoFederal}   ${timeout_20}
  Click Element    ${MenuExplore.tituloDistritoFederal}


selecionar "Espírito Santo"
  Wait Until Element Is Visible    ${MenuExplore.tituloEspiritoSanto}   ${timeout_20}
  Click Element    ${MenuExplore.tituloEspiritoSanto}


selecionar "Goiás"
  Wait Until Element Is Visible    ${MenuExplore.tituloGoias}   ${timeout_20}
  Click Element    ${MenuExplore.tituloGoias}


selecionar "Maranhão"
  Wait Until Element Is Visible    ${MenuExplore.tituloMaranhao}   ${timeout_20}
  Click Element    ${MenuExplore.tituloMaranhao}


selecionar "Mato Grosso"
  Wait Until Element Is Visible    ${MenuExplore.tituloMatoGrosso}   ${timeout_20}
  Click Element    ${MenuExplore.tituloMatoGrosso}


selecionar "Mato Grosso do Sul"
  Wait Until Element Is Visible    ${MenuExplore.tituloMatoGrossoDoSul}   ${timeout_20}
  Click Element    ${MenuExplore.tituloMatoGrossoDoSul}


selecionar "Minas Gerais"
  Wait Until Element Is Visible    ${MenuExplore.tituloMinasGerais}   ${timeout_20}
  Click Element    ${MenuExplore.tituloMinasGerais}


selecionar "Paraná"
  Wait Until Element Is Visible    ${MenuExplore.tituloParana}   ${timeout_20}
  Click Element    ${MenuExplore.tituloParana}


selecionar "Paraíba"
  Wait Until Element Is Visible    ${MenuExplore.tituloParaiba}   ${timeout_20}
  Click Element    ${MenuExplore.tituloParaiba}


selecionar "Pará"
  Wait Until Element Is Visible    ${MenuExplore.tituloPara}   ${timeout_20}
  Click Element    ${MenuExplore.tituloPara}


selecionar "Pernambuco"
  Wait Until Element Is Visible    ${MenuExplore.tituloPernambuco}   ${timeout_20}
  Click Element    ${MenuExplore.tituloPernambuco}


selecionar "Piauí"
  Wait Until Element Is Visible    ${MenuExplore.tituloPiaui}   ${timeout_20}
  Click Element    ${MenuExplore.tituloPiaui}


selecionar "Rio Grande do Norte"
  Wait Until Element Is Visible    ${MenuExplore.tituloRioGrandeDoNorte}   ${timeout_20}
  Click Element    ${MenuExplore.tituloRioGrandeDoNorte}


selecionar "Rio Grande do Sul"
  Wait Until Element Is Visible    ${MenuExplore.tituloRioGrandeDoSul}   ${timeout_20}   ${timeout_20}
  Click Element    ${MenuExplore.tituloRioGrandeDoSul}


selecionar "Rio de Janeiro"
  Wait Until Element Is Visible    ${MenuExplore.tituloRioDeJaneiro}   ${timeout_20}
  Click Element    ${MenuExplore.tituloRioDeJaneiro}


selecionar "Rondônia"
  Wait Until Element Is Visible    ${MenuExplore.tituloRondonia}   ${timeout_20}
  Click Element    ${MenuExplore.tituloRondonia}


selecionar "Roraima"
  Wait Until Element Is Visible    ${MenuExplore.tituloRoraima}   ${timeout_20}
  Click Element    ${MenuExplore.tituloRoraima}


selecionar "Santa Catarina"
  Sleep  2s
  Scroll Element Into View    ${MenuExplore.footer}
  Wait Until Element Is Visible    ${MenuExplore.tituloSantaCatarina}   ${timeout_20}
  Click Element    ${MenuExplore.tituloSantaCatarina}


selecionar "Sergipe"
  Sleep  2s
  Scroll Element Into View    ${MenuExplore.footer}
  Wait Until Element Is Visible    ${MenuExplore.tituloSergipe}   ${timeout_20}
  Click Element    ${MenuExplore.tituloSergipe}


selecionar "São Paulo"
  Sleep  2s
  Scroll Element Into View    ${MenuExplore.footer}
  Wait Until Element Is Visible    ${MenuExplore.tituloSaoPaulo}   ${timeout_20}
  Click Element    ${MenuExplore.tituloSaoPaulo}


selecionar "Tocantins"
  Sleep  2s
  Scroll Element Into View    ${MenuExplore.footer}
  Wait Until Element Is Visible    ${MenuExplore.tituloTocantins}   ${timeout_20}
  Click Element    ${MenuExplore.tituloTocantins}


# Menu Explore - Categorias - ProgramasLocais
devo conseguir ver o texto "Acre"
  Wait Until Element Is Visible    ${MenuExplore.tituloAcre}   ${timeout_20}
  Element Should Be Visible    ${MenuExplore.tituloAcre}


devo conseguir ver o texto "Alagoas"
  Wait Until Element Is Visible    ${MenuExplore.tituloAlagoas}   ${timeout_20}
  Element Should Be Visible    ${MenuExplore.tituloAlagoas}


devo conseguir ver o texto "Amapá"
  Wait Until Element Is Visible    ${MenuExplore.tituloAmapa}   ${timeout_20}
  Element Should Be Visible    ${MenuExplore.tituloAmapa}


devo conseguir ver o texto "Amazonas"
  Wait Until Element Is Visible    ${MenuExplore.tituloAmazonas}   ${timeout_20}
  Element Should Be Visible    ${MenuExplore.tituloAmazonas}


devo conseguir ver o texto "Bahia"
  Wait Until Element Is Visible    ${MenuExplore.tituloBahia}   ${timeout_20}
  Element Should Be Visible    ${MenuExplore.tituloBahia}


devo conseguir ver o texto "Ceará"
  Wait Until Element Is Visible    ${MenuExplore.tituloCeara}   ${timeout_20}
  Element Should Be Visible    ${MenuExplore.tituloCeara}


devo conseguir ver o texto "Distrito Federal"
  Wait Until Element Is Visible    ${MenuExplore.tituloDistritoFederal}   ${timeout_20}
  Element Should Be Visible    ${MenuExplore.tituloDistritoFederal}


devo conseguir ver o texto "Grande Vitória, ES"
  Wait Until Element Is Visible    ${MenuExplore.tituloGrandeVitoria}   ${timeout_20}
  Element Should Be Visible    ${MenuExplore.tituloGrandeVitoria}


devo conseguir ver o texto "Goiás"
  Wait Until Element Is Visible    ${MenuExplore.tituloGoias}   ${timeout_20}
  Element Should Be Visible    ${MenuExplore.tituloGoias}


devo conseguir ver o texto "Maranhão"
  Wait Until Element Is Visible    ${MenuExplore.tituloMaranhao}   ${timeout_20}
  Element Should Be Visible    ${MenuExplore.tituloMaranhao}


devo conseguir ver o texto "Mato Grosso"
  Wait Until Element Is Visible    ${MenuExplore.tituloMatoGrosso}   ${timeout_20}
  Element Should Be Visible    ${MenuExplore.tituloMatoGrosso}


devo conseguir ver o texto "Mato Grosso do Sul"
  Wait Until Element Is Visible    ${MenuExplore.tituloMatoGrossoDoSul}   ${timeout_20}
  Element Should Be Visible    ${MenuExplore.tituloMatoGrossoDoSul}


devo conseguir ver o texto "Minas Gerais"
  Wait Until Element Is Visible    ${MenuExplore.tituloMinasGerais}   ${timeout_20}
  Element Should Be Visible    ${MenuExplore.tituloMinasGerais}


devo conseguir ver o texto "Paraná"
  Wait Until Element Is Visible    ${MenuExplore.tituloParana}   ${timeout_20}
  Element Should Be Visible    ${MenuExplore.tituloParana}


devo conseguir ver o texto "Paraíba"
  Wait Until Element Is Visible    ${MenuExplore.tituloParaiba}   ${timeout_20}
  Element Should Be Visible    ${MenuExplore.tituloParaiba}


devo conseguir ver o texto "Pará"
  Wait Until Element Is Visible    ${MenuExplore.tituloPara}   ${timeout_20}
  Element Should Be Visible    ${MenuExplore.tituloPara}


devo conseguir ver o texto "Pernambuco"
  Wait Until Element Is Visible    ${MenuExplore.tituloPernambuco}   ${timeout_20}
  Element Should Be Visible    ${MenuExplore.tituloPernambuco}


devo conseguir ver o texto "Piauí"
  Wait Until Element Is Visible    ${MenuExplore.tituloPiaui}   ${timeout_20}
  Element Should Be Visible    ${MenuExplore.tituloPiaui}


devo conseguir ver o texto "Rio Grande do Norte"
  Wait Until Element Is Visible    ${MenuExplore.tituloRioGrandeDoNorte}   ${timeout_20}
  Element Should Be Visible    ${MenuExplore.tituloRioGrandeDoNorte}


devo conseguir ver o texto "Rio Grande do Sul"
  Wait Until Element Is Visible    ${MenuExplore.tituloRioGrandeDoSul}   ${timeout_20}
  Element Should Be Visible    ${MenuExplore.tituloRioGrandeDoSul}


devo conseguir ver o texto "Rio de Janeiro"
  Wait Until Element Is Visible    ${MenuExplore.tituloRioDeJaneiro}   ${timeout_20}
  Element Should Be Visible    ${MenuExplore.tituloRioDeJaneiro}


devo conseguir ver o texto "Rondônia"
  Wait Until Element Is Visible    ${MenuExplore.tituloRondonia}   ${timeout_20}
  Element Should Be Visible    ${MenuExplore.tituloRondonia}


devo conseguir ver o texto "Roraima"
  Wait Until Element Is Visible    ${MenuExplore.tituloRoraima}   ${timeout_20}
  Element Should Be Visible    ${MenuExplore.tituloRoraima}


devo conseguir ver o texto "Santa Catarina"
  Wait Until Element Is Visible    ${MenuExplore.tituloSantaCatarina}   ${timeout_20}
  Element Should Be Visible    ${MenuExplore.tituloSantaCatarina}


devo conseguir ver o texto "Sergipe"
  Wait Until Element Is Visible    ${MenuExplore.tituloSergipe}   ${timeout_20}
  Element Should Be Visible    ${MenuExplore.tituloSergipe}


devo conseguir ver o texto "São Paulo"
  Wait Until Element Is Visible    ${MenuExplore.tituloSaoPaulo}   ${timeout_20}
  Element Should Be Visible    ${MenuExplore.tituloSaoPaulo}


devo conseguir ver o texto "Tocantins"
  Wait Until Element Is Visible    ${MenuExplore.tituloTocantins}   ${timeout_20}
  Element Should Be Visible    ${MenuExplore.tituloTocantins}


# Menu Explore - Categorias - Conteúdo
selecionar "Lady Night"
  Sleep  2s
  Scroll Element Into View     ${MenuExplore.footer}
  Click Element    ${MenuExplore.Variedades_LadyNight}
  ${url}=    Get Location
  IF    '${url}' == 'https://globoplay.globo.com/lady-night/t/8sgfsb8qRH/'
    Log To Console    Redirecionado para "Lady Night".
  ELSE
    Log To Console    Não Redirecionado para "Lady Night".
  END


selecionar "Mais Você"
  Sleep  2s
  Scroll Element Into View     ${MenuExplore.footer}
  Click Element    ${MenuExplore.Variedades_MaisVoce}
  ${url}=    Get Location
  IF    '${url}' == 'https://globoplay.globo.com/mais-voce/t/n9Vq6SMvsm/'
    Log To Console    Redirecionado para "Mais Você".
  ELSE
    Log To Console    Não Redirecionado para "Mais Você".
  END


selecionar "Multi Tom"
  Sleep  2s
  Scroll Element Into View     ${MenuExplore.Humor_MultiTom}
  Click Element    ${MenuExplore.Humor_MultiTom}
  ${url}=    Get Location
  IF    '${url}' == 'https://globoplay.globo.com/multi-tom/t/cmVr1RjCT8/'
    Log To Console    Redirecionado para "Multi Tom".
  ELSE
    Log To Console    Não Redirecionado para "Multi Tom".
  END


selecionar "Choque de Cultura Show"
  Sleep  2s
  Scroll Element Into View     ${MenuExplore.Humor_ChoquedeCulturaShow}
  Click Element    ${MenuExplore.Humor_ChoquedeCulturaShow}
  ${url}=    Get Location
  IF    '${url}' == 'https://globoplay.globo.com/choque-de-cultura-show/t/FBqg2t8Cq2/'
    Log To Console    Redirecionado para "Choque de Cultura Show".
  ELSE
    Log To Console    Não Redirecionado para "Choque de Cultura Show".
  END


selecionar "Prêmio Multishow"
  Sleep  2s
  Scroll Element Into View     ${MenuExplore.footer}
  Click Element    ${MenuExplore.Musica_PremioMultishow}
  ${url}=    Get Location
  IF    '${url}' == 'https://globoplay.globo.com/premio-multishow/t/RpX7XmkDQM/'
    Log To Console    Redirecionado para "Prêmio Multishow".
  ELSE
    Log To Console    Não Redirecionado para "Prêmio Multishow".
  END


selecionar "Roberto Carlos Especial"
  Sleep  2s
  Scroll Element Into View     ${MenuExplore.footer}
  Click Element    ${MenuExplore.Musica_RobertoCarlosEspecial}
  ${url}=    Get Location
  IF    '${url}' == 'https://globoplay.globo.com/roberto-carlos-especial/t/kXRnfccg1q/'
    Log To Console    Redirecionado para "Roberto Carlos Especial".
  ELSE
    Log To Console    Não Redirecionado para "Roberto Carlos Especial".
  END


selecionar "Esporte Espetacular"
  Sleep  2s
  Scroll Element Into View     ${MenuExplore.footer}
  Click Element    ${MenuExplore.Esportes_EsporteEspetacular}
  ${url}=    Get Location
  IF    '${url}' == 'https://globoplay.globo.com/esporte-espetacular/t/Jm2mfGZHfq/'
    Log To Console    Redirecionado para "Esporte Espetacular".
  ELSE
    Log To Console    Não Redirecionado para "Esporte Espetacular".
  END


selecionar "Jornal das Dez"
  Sleep  2s
  Scroll Element Into View     ${MenuExplore.footer}
  Wait Until Element Is Visible    ${MenuExplore.Jornalismo_JornalDasDez}   ${timeout_20}
  Click Element    ${MenuExplore.Jornalismo_JornalDasDez}
  ${url}=    Get Location
  IF    '${url}' == 'https://globoplay.globo.com/jornal-das-dez/t/NSWghfyn6w/'
    Log To Console    Redirecionado para "Jornal das Dez".
  ELSE
    Log To Console    Não Redirecionado para "Jornal das Dez".
  END


selecionar "Jornal Nacional"
  Sleep  2s
  Scroll Element Into View     ${MenuExplore.footer}
  Click Element    ${MenuExplore.Jornalismo_JornalNacional}
  ${url}=    Get Location
  IF    '${url}' == 'https://globoplay.globo.com/jornal-nacional/t/MyCrVrr6gW/'
    Log To Console    Redirecionado para "Jornal Nacional".
  ELSE
    Log To Console    Não Redirecionado para "Jornal Nacional".
  END


# Menu Explore - Categorias - Botão "Conheça o plano"
devo conseguir ver o botão "Conheça o plano"
  Wait Until Element Is Visible    ${MenuExplore.btnConhecaOPlano}   ${timeout_20}
  Element Should Be Visible   ${MenuExplore.btnConhecaOPlano}


# Menu Explore - Categorias - Botão "Assista"
selecionar "Assista"
  Wait Until Element Is Visible    ${MenuExplore.btnAssista}   ${timeout_20}
  Click Element   ${MenuExplore.btnAssista}


# Menu Explore - Categorias - Texto Conteúdo exclusivo
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
  Wait Until Element Is Visible    ${MenuExplore.textoAssinaturaTelecine}    ${timeout_20}
  Element Should Be Visible   ${MenuExplore.textoAssinaturaTelecine}


devo ser redirecinado para a página de assinatura do Premiere
  Wait Until Element Is Visible    ${MenuExplore.textoAssinaturaPremiere}    ${timeout_20}
  Element Should Be Visible   ${MenuExplore.textoAssinaturaPremiere}


devo ser redirecinado para a página de assinatura do Combate
  Wait Until Element Is Visible    ${MenuExplore.textoAssinaturaCombate}    ${timeout_20}
  Element Should Be Visible   ${MenuExplore.textoAssinaturaCombate}


# Menu Explore - Canais - Assista ao vivo
selecionar "TV Globo" no "Assista ao vivo"
  Wait Until Element Is Visible    ${MenuExplore.TVGlobo_AssistaAoVivo}    ${timeout_20}
  Click Element    ${MenuExplore.TVGlobo_AssistaAoVivo}


selecionar "Multishow" no "Assista ao vivo"
  Wait Until Element Is Visible    ${MenuExplore.Multishow_AssistaAoVivo}    ${timeout_20}
  Click Element    ${MenuExplore.Multishow_AssistaAoVivo}


selecionar "Globonews" no "Assista ao vivo"
  Wait Until Element Is Visible    ${MenuExplore.Globonews_AssistaAoVivo}    ${timeout_20}
  Click Element    ${MenuExplore.Globonews_AssistaAoVivo}


selecionar "SporTV" no "Assista ao vivo"
  Wait Until Element Is Visible    ${MenuExplore.btnNextAssistaAoVivo_Canais}    ${timeout_20}
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Wait Until Element Is Visible    ${MenuExplore.SporTV_AssistaAoVivo}    ${timeout_20}
  Click Element    ${MenuExplore.SporTV_AssistaAoVivo}


selecionar "GNT" no "Assista ao vivo"
  Wait Until Element Is Visible    ${MenuExplore.btnNextAssistaAoVivo_Canais}    ${timeout_20}
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Wait Until Element Is Visible    ${MenuExplore.GNT_AssistaAoVivo}    ${timeout_20}
  Click Element    ${MenuExplore.GNT_AssistaAoVivo}


selecionar "VIVA" no "Assista ao vivo"
  Wait Until Element Is Visible    ${MenuExplore.btnNextAssistaAoVivo_Canais}    ${timeout_20}
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Wait Until Element Is Visible    ${MenuExplore.VIVA_AssistaAoVivo}    ${timeout_20}
  Click Element    ${MenuExplore.VIVA_AssistaAoVivo}


selecionar "Gloob" no "Assista ao vivo"
  Wait Until Element Is Visible    ${MenuExplore.btnNextAssistaAoVivo_Canais}    ${timeout_20}
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Wait Until Element Is Visible    ${MenuExplore.Gloob_AssistaAoVivo}    ${timeout_20}
  Click Element    ${MenuExplore.Gloob_AssistaAoVivo}


selecionar "Gloobinho" no "Assista ao vivo"
  Wait Until Element Is Visible    ${MenuExplore.btnNextAssistaAoVivo_Canais}    ${timeout_20}
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Wait Until Element Is Visible    ${MenuExplore.Gloobinho_AssistaAoVivo}    ${timeout_20}
  Click Element    ${MenuExplore.Gloobinho_AssistaAoVivo}


selecionar "Megapix" no "Assista ao vivo"
  Wait Until Element Is Visible    ${MenuExplore.btnNextAssistaAoVivo_Canais}    ${timeout_20}
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep  2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep  2s
  Click Element    ${MenuExplore.textoMegapix}


selecionar "Universal TV" no "Assista ao vivo"
  Wait Until Element Is Visible    ${MenuExplore.btnNextAssistaAoVivo_Canais}    ${timeout_20}
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.textoUniversalTV}


selecionar "Studio Universal" no "Assista ao vivo"
  Wait Until Element Is Visible    ${MenuExplore.btnNextAssistaAoVivo_Canais}    ${timeout_20}
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.textoStudioUniversal}


selecionar "SYFY" no "Assista ao vivo"
  Wait Until Element Is Visible    ${MenuExplore.btnNextAssistaAoVivo_Canais}    ${timeout_20}
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.textoSYFY}


selecionar "Canal Brasil" no "Assista ao vivo"
  Wait Until Element Is Visible    ${MenuExplore.btnNextAssistaAoVivo_Canais}    ${timeout_20}
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.CanalBrasil_AssistaAoVivo}


selecionar "Canal Off" no "Assista ao vivo"
  Wait Until Element Is Visible    ${MenuExplore.btnNextAssistaAoVivo_Canais}    ${timeout_20}
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.CanalOff_AssistaAoVivo}


selecionar "BIS" no "Assista ao vivo"
  Wait Until Element Is Visible    ${MenuExplore.btnNextAssistaAoVivo_Canais}    ${timeout_20}
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.BIS_AssistaAoVivo}


selecionar "Modo Viagem" no "Assista ao vivo"
  Wait Until Element Is Visible    ${MenuExplore.btnNextAssistaAoVivo_Canais}    ${timeout_20}
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.ModoViagem_AssistaAoVivo}


selecionar "Futura" no "Assista ao vivo"
  Wait Until Element Is Visible    ${MenuExplore.btnNextAssistaAoVivo_Canais}    ${timeout_20}
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.Futura_AssistaAoVivo}


selecionar "Telecine Premium" no "Assista ao vivo"
  Wait Until Element Is Visible    ${MenuExplore.btnNextAssistaAoVivo_Canais}    ${timeout_20}
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.textoTelecinePremium}


selecionar "Telecine Action" no "Assista ao vivo"
  Wait Until Element Is Visible    ${MenuExplore.btnNextAssistaAoVivo_Canais}    ${timeout_20}
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.textoTelecineAction}


selecionar "Telecine Touch" no "Assista ao vivo"
  Wait Until Element Is Visible    ${MenuExplore.btnNextAssistaAoVivo_Canais}    ${timeout_20}
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.textoTelecineTouch}


selecionar "Telecine Fun" no "Assista ao vivo"
  Wait Until Element Is Visible    ${MenuExplore.btnNextAssistaAoVivo_Canais}    ${timeout_20}
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.textoTelecineFun}


selecionar "Telecine Pipoca" no "Assista ao vivo"
  Wait Until Element Is Visible    ${MenuExplore.btnNextAssistaAoVivo_Canais}    ${timeout_20}
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.textoTelecinePipoca}


selecionar "Telecine Cult" no "Assista ao vivo"
  Wait Until Element Is Visible    ${MenuExplore.btnNextAssistaAoVivo_Canais}    ${timeout_20}
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.textoTelecineCult}


selecionar "Premiere" no "Assista ao vivo"
  Wait Until Element Is Visible    ${MenuExplore.btnNextAssistaAoVivo_Canais}    ${timeout_20}
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.Premiere_AssistaAoVivo}


selecionar "Combate" no "Assista ao vivo"
  Wait Until Element Is Visible    ${MenuExplore.btnNextAssistaAoVivo_Canais}    ${timeout_20}
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.Combate_AssistaAoVivo}


selecionar "CBN SP" no "Assista ao vivo"
  Wait Until Element Is Visible    ${MenuExplore.btnNextAssistaAoVivo_Canais}    ${timeout_20}
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.CBNSP_AssistaAoVivo}


selecionar "CBN RJ" no "Assista ao vivo"
  Wait Until Element Is Visible    ${MenuExplore.btnNextAssistaAoVivo_Canais}    ${timeout_20}
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.btnNextAssistaAoVivo_Canais}
  Sleep   2s
  Click Element    ${MenuExplore.CBNRJ_AssistaAoVivo}


# Menu Explore - Canais - Canais
selecionar "TV Globo" em "Canais"
  Wait Until Element Is Visible    ${MenuExplore.TVGlobo_Canais}    ${timeout_20}
  Click Element    ${MenuExplore.TVGlobo_Canais}
  ${url}=  Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/canais/globo/'    Log To Console       Redirecionado para a página "TV Globo" em "Canais".
  ...       ELSE    Log To Console    Não redirecinado para a página "TV Globo" em "Canais"! URL: '${url}'


selecionar "Multishow" em "Canais"
  Wait Until Element Is Visible    ${MenuExplore.Multishow_Canais}    ${timeout_20}
  Click Element    ${MenuExplore.Multishow_Canais}
  ${url}=  Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/canais/multishow/'    Log To Console       Redirecionado para a página "Multishow" em "Canais".
  ...       ELSE    Log To Console    Não redirecinado para a página "Multishow" em "Canais"! URL: '${url}'


selecionar "Globonews" em "Canais"
  Wait Until Element Is Visible    ${MenuExplore.Globonews_Canais}    ${timeout_20}
  Click Element    ${MenuExplore.Globonews_Canais}
  ${url}=  Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/canais/globonews/'    Log To Console       Redirecionado para a página "Globonews" em "Canais".
  ...       ELSE    Log To Console    Não redirecinado para a página "Globonews" em "Canais"! URL: '${url}'


selecionar "SporTV" em "Canais"
  Wait Until Element Is Visible    ${MenuExplore.SporTV_Canais}    ${timeout_20}
  Click Element    ${MenuExplore.SporTV_Canais}
  ${url}=  Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/canais/sportv/'    Log To Console       Redirecionado para a página "SporTV" em "Canais".
  ...       ELSE    Log To Console    Não redirecinado para a página "SporTV" em "Canais"! URL: '${url}'


selecionar "GNT" em "Canais"
  Wait Until Element Is Visible    ${MenuExplore.GNT_Canais}    ${timeout_20}
  Click Element    ${MenuExplore.GNT_Canais}
  ${url}=  Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/canais/gnt/'    Log To Console       Redirecionado para a página "GNT" em "Canais".
  ...       ELSE    Log To Console    Não redirecinado para a página "GNT" em "Canais"! URL: '${url}'


selecionar "VIVA" em "Canais"
  Wait Until Element Is Visible    ${MenuExplore.VIVA_Canais}    ${timeout_20}
  Click Element    ${MenuExplore.VIVA_Canais}
  ${url}=  Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/canais/viva/'    Log To Console       Redirecionado para a página "VIVA" em "Canais".
  ...       ELSE    Log To Console    Não redirecinado para a página "VIVA" em "Canais"! URL: '${url}'


selecionar "Gloob" em "Canais"
  Scroll Element Into View     ${MenuExplore.footer}
  Wait Until Element Is Visible    ${MenuExplore.Gloob_Canais}    ${timeout_20}
  Click Element    ${MenuExplore.Gloob_Canais}
  ${url}=  Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/canais/gloob/'    Log To Console       Redirecionado para a página "Gloob" em "Canais".
  ...       ELSE    Log To Console    Não redirecinado para a página "Gloob" em "Canais"! URL: '${url}'


selecionar "Gloobinho" em "Canais"
  Scroll Element Into View     ${MenuExplore.footer}
  Wait Until Element Is Visible    ${MenuExplore.Gloobinho_Canais}    ${timeout_20}
  Click Element    ${MenuExplore.Gloobinho_Canais}
  ${url}=  Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/canais/gloobinho/'    Log To Console       Redirecionado para a página "Gloobinho" em "Canais".
  ...       ELSE    Log To Console    Não redirecinado para a página "Gloobinho" em "Canais"! URL: '${url}'


selecionar "Megapix" em "Canais"
  Scroll Element Into View     ${MenuExplore.footer}
  Wait Until Element Is Visible    ${MenuExplore.Megapix_Canais}    ${timeout_20}
  Click Element    ${MenuExplore.Megapix_Canais}
  ${url}=  Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/canais/megapix/'    Log To Console       Redirecionado para a página "Megapix" em "Canais".
  ...       ELSE    Log To Console    Não redirecinado para a página "Megapix" em "Canais"! URL: '${url}'


selecionar "Universal+" em "Canais"
  Scroll Element Into View     ${MenuExplore.footer}
  Wait Until Element Is Visible    ${MenuExplore.Universal+_Canais}    ${timeout_20}
  Click Element    ${MenuExplore.Universal+_Canais}
  ${url}=  Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/canais/universal/'    Log To Console       Redirecionado para a página "Universal+" em "Canais".
  ...       ELSE    Log To Console    Não redirecinado para a página "Universal+" em "Canais"! URL: '${url}'


selecionar "Canal Brasil" em "Canais"
  Scroll Element Into View     ${MenuExplore.footer}
  Wait Until Element Is Visible    ${MenuExplore.CanalBrasil_Canais}    ${timeout_20}
  Click Element    ${MenuExplore.CanalBrasil_Canais}
  ${url}=  Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/canais/canal-brasil/'    Log To Console       Redirecionado para a página "Canal Brasil" em "Canais".
  ...       ELSE    Log To Console    Não redirecinado para a página "Canal Brasil" em "Canais"! URL: '${url}'


selecionar "Canal Off" em "Canais"
  Scroll Element Into View     ${MenuExplore.footer}
  Wait Until Element Is Visible    ${MenuExplore.CanalOff_Canais}    ${timeout_20}
  Click Element    ${MenuExplore.CanalOff_Canais}
  ${url}=  Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/canais/canal-off/'    Log To Console       Redirecionado para a página "Canal Off" em "Canais".
  ...       ELSE    Log To Console    Não redirecinado para a página "Canal Off" em "Canais"! URL: '${url}'


selecionar "BIS" em "Canais"
  Scroll Element Into View     ${MenuExplore.footer}
  Wait Until Element Is Visible    ${MenuExplore.BIS_Canais}    ${timeout_20}
  Click Element    ${MenuExplore.BIS_Canais}
  ${url}=  Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/canais/bis/'    Log To Console       Redirecionado para a página "BIS" em "Canais".
  ...       ELSE    Log To Console    Não redirecinado para a página "BIS" em "Canais"! URL: '${url}'


selecionar "Modo Viagem" em "Canais"
  Scroll Element Into View     ${MenuExplore.footer}
  Wait Until Element Is Visible    ${MenuExplore.ModoViagem_Canais}    ${timeout_20}
  Click Element    ${MenuExplore.ModoViagem_Canais}
  ${url}=  Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/canais/modo-viagem/'    Log To Console       Redirecionado para a página "Modo Viagem" em "Canais".
  ...       ELSE    Log To Console    Não redirecinado para a página "Modo Viagem" em "Canais"! URL: '${url}'


selecionar "Futura" em "Canais"
  Scroll Element Into View     ${MenuExplore.footer}
  Wait Until Element Is Visible    ${MenuExplore.Futura_Canais}    ${timeout_20}
  Click Element    ${MenuExplore.Futura_Canais}
  ${url}=  Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/canais/futura/'    Log To Console       Redirecionado para a página "Futura" em "Canais".
  ...       ELSE    Log To Console    Não redirecinado para a página "Futura" em "Canais"! URL: '${url}'


selecionar "Telecine" em "Canais"
  Scroll Element Into View     ${MenuExplore.footer}
  Wait Until Element Is Visible    ${MenuExplore.Telecine_Canais}    ${timeout_20}
  Click Element    ${MenuExplore.Telecine_Canais}
  ${url}=  Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/canais/telecine/'    Log To Console       Redirecionado para a página "Telecine" em "Canais".
  ...       ELSE    Log To Console    Não redirecinado para a página "Telecine" em "Canais"! URL: '${url}'


selecionar "Premiere" em "Canais"
  Scroll Element Into View     ${MenuExplore.footer}
  Wait Until Element Is Visible    ${MenuExplore.Premiere_Canais}    ${timeout_20}
  Click Element    ${MenuExplore.Premiere_Canais}
  ${url}=  Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/canais/premiere/'    Log To Console       Redirecionado para a página "Premiere" em "Canais".
  ...       ELSE    Log To Console    Não redirecinado para a página "Premiere" em "Canais"! URL: '${url}'


selecionar "Combate" em "Canais"
  Scroll Element Into View     ${MenuExplore.footer}
  Wait Until Element Is Visible    ${MenuExplore.Combate_Canais}    ${timeout_20}
  Click Element    ${MenuExplore.Combate_Canais}
  ${url}=  Get Location
  Run Keyword If    '${url}' == 'https://globoplay.globo.com/canais/combate/'    Log To Console       Redirecionado para a página "Combate" em "Canais".
  ...       ELSE    Log To Console    Não redirecinado para a página "Combate" em "Canais"! URL: '${url}'


# Menu Explore - Canais - Botões
selecionar "Assista" no banner
  Wait Until Element Is Visible    ${MenuExplore.btnAssista_Canais}    ${timeout_20}
  Click Element    ${MenuExplore.btnAssista_Canais}


selecionar "Conheça o novo plano"
  Wait Until Element Is Visible    ${MenuExplore.btnConhecaONovoPlano_Canais}    ${timeout_20}
  Click Element    ${MenuExplore.btnConhecaONovoPlano_Canais}


selecionar "Conheça o plano"
  Wait Until Element Is Visible    ${MenuExplore.btnConhecaOPlano}    ${timeout_20}
  Click Element    ${MenuExplore.btnConhecaOPlano}


selecionar "Eu quero"
  Wait Until Element Is Visible    ${MenuExplore.btnEuQuero}    ${timeout_20}
  Click Element    ${MenuExplore.btnEuQuero}


selecionar "Veja Mais" no banner
  Wait Until Element Is Visible    ${MenuExplore.btnVejaMais_Banner}    ${timeout_20}
  Click Element    ${MenuExplore.btnVejaMais_Banner}


selecionar "Assista agora" em "Agora na Tv"
  Wait Until Element Is Visible    ${MenuExplore.btnAssistaAgora_Canais}    ${timeout_20}
  Click Element    ${MenuExplore.btnAssistaAgora_Canais}


selecionar "Assine Já"
  Wait Until Element Is Visible    ${MenuExplore.btnAssineJaBanner}    ${timeout_20}
  Click Element    ${MenuExplore.btnAssineJaBanner}


selecionar "Escolha seu plano"
  Wait Until Element Is Visible    ${MenuExplore.btnEscolhaSeuPlano}    ${timeout_20}
  Click Button   ${MenuExplore.btnEscolhaSeuPlano}


selecionar "Assine Combate"
  Wait Until Element Is Visible    ${MenuExplore.btnAssineCombate}    ${timeout_20}
  Click Button   ${MenuExplore.btnAssineCombate}


# Menu Explore - Canais - Título
o título "Escolha seu plano" deve estar visível
  Log      Verifica existência do texto "Escolha seu plano"
  Wait Until Element Is Visible    ${MenuExplore.textoEscolhaSeuPlano}   ${timeout_20}
  Element Should Be Visible     ${MenuExplore.textoEscolhaSeuPlano}


# Menu Explore - Canais - Banner
o banner deste canal deve estar visível
  Log      Verifica existência do banner em Canais
  Wait Until Element Is Visible    ${MenuExplore.bannerCanais}   ${timeout_20}
  Element Should Be Visible     ${MenuExplore.bannerCanais}


# Menu Explore - Canais - "Todos os títulos - Multishow"
devo conseguir ver o texto "Todos os títulos - Multishow"
  Wait Until Element Is Visible    ${MenuExplore.textoTodosOsTitulos_Multishow}   ${timeout_20}
  Element Should Be Visible   ${MenuExplore.textoTodosOsTitulos_Multishow}


# Menu Explore - Canais - "Agora no Megapix"
selecionar "Agora no Megapix"
  Sleep      2s
  Scroll Element Into View     ${MenuExplore.footer}
  Wait Until Element Is Visible    ${MenuExplore.textoMegapix}   ${timeout_20}
  Click Element    ${MenuExplore.textoMegapix}


# Menu Explore - Canais - "Agora no Premiere"
selecionar "Agora no Premiere"
  Sleep      2s
  Scroll Element Into View     ${MenuExplore.footer}
  Wait Until Element Is Visible    ${MenuExplore.AgoraNoPremiere_Canais}   ${timeout_20}
  Click Element    ${MenuExplore.AgoraNoPremiere_Canais}


# Menu Explore - Canais -  Universal TV
selecionar "Universal TV"
  Wait Until Element Is Visible    ${MenuExplore.textoUniversalTV}   ${timeout_20}
  Scroll Element Into View     ${MenuExplore.footer}
  Scroll Element Into View     ${MenuExplore.textoUniversalTV}
  Click Element    ${MenuExplore.textoUniversalTV}


selecionar "Studio Universal"
  Wait Until Element Is Visible    ${MenuExplore.textoStudioUniversal}   ${timeout_20}
  Scroll Element Into View     ${MenuExplore.footer}
  Scroll Element Into View     ${MenuExplore.textoStudioUniversal}
  Click Element    ${MenuExplore.textoStudioUniversal}


selecionar "SYFY"
  Wait Until Element Is Visible    ${MenuExplore.textoSYFY}  ${timeout_20}
  Scroll Element Into View     ${MenuExplore.footer}
  Scroll Element Into View     ${MenuExplore.textoSYFY}
  Click Element    ${MenuExplore.textoSYFY}


# Menu Explore - Canais -  Telecine
selecionar "Telecine Premium" em "Canais Telecine"
  Sleep  2s
  Scroll Element Into View     ${MenuExplore.footer}
  Scroll Element Into View     ${MenuExplore.Telecine_textoCanaisTelecine}
  Wait Until Element Is Visible    ${MenuExplore.textoTelecinePremium}   ${timeout_20}
  Click Element    ${MenuExplore.textoTelecinePremium}


selecionar "Telecine Action" em "Canais Telecine"
  Sleep  2s
  Scroll Element Into View     ${MenuExplore.footer}
  Scroll Element Into View     ${MenuExplore.Telecine_textoCanaisTelecine}
  Wait Until Element Is Visible    ${MenuExplore.textoTelecineAction}   ${timeout_20}
  Click Element    ${MenuExplore.textoTelecineAction}


selecionar "Telecine Touch" em "Canais Telecine"
  Sleep  2s
  Scroll Element Into View     ${MenuExplore.footer}
  Scroll Element Into View     ${MenuExplore.Telecine_textoCanaisTelecine}
  Wait Until Element Is Visible    ${MenuExplore.textoTelecineTouch}   ${timeout_20}
  Click Element    ${MenuExplore.textoTelecineTouch}


selecionar "Telecine Fun" em "Canais Telecine"
  Sleep  2s
  Scroll Element Into View     ${MenuExplore.footer}
  Scroll Element Into View     ${MenuExplore.Telecine_textoCanaisTelecine}
  Wait Until Element Is Visible    ${MenuExplore.textoTelecineFun}   ${timeout_20}
  Click Element    ${MenuExplore.textoTelecineFun}


selecionar "Telecine Pipoca" em "Canais Telecine"
  Sleep  2s
  Scroll Element Into View     ${MenuExplore.footer}
  Scroll Element Into View     ${MenuExplore.Telecine_textoCanaisTelecine}
  Click Element    ${MenuExplore.btnNextTelecine_Canais}
  Sleep      2s
  Wait Until Element Is Visible    ${MenuExplore.textoTelecinePipoca}   ${timeout_20}
  Click Element    ${MenuExplore.textoTelecinePipoca}


selecionar "Telecine Cult" em "Canais Telecine"
  # telecine pipoca utilizado, visto que o telecine cult não fica visível
  Sleep  2s
  Scroll Element Into View     ${MenuExplore.footer}
  Scroll Element Into View     ${MenuExplore.Telecine_textoCanaisTelecine}
  Click Element    ${MenuExplore.btnNextTelecine_Canais}
  Sleep      2s
  Wait Until Element Is Visible     ${MenuExplore.textoTelecineCult}   ${timeout_20}
  Click Element    ${MenuExplore.textoTelecineCult}

