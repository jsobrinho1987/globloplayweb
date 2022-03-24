*** Settings ***
Library             SeleniumLibrary

*** Variables ***

${IMG}    src="http://s2.glbimg.com/B6wFFcIAuWmvyTN8acLEuDsiA3k=/285x285/https://s2.glbimg.com/aeWKmoZ7If9bHHe-jNTgA5PeD2A=/filters:fill(transparent,false)/https://i.s3.glbimg.com/v1/AUTH_c3c606ff68e7478091d1ca496f9c5625/internal_photos/bs/2020/Z/k/0mMxFGTgiPvkNQQLX0VQ/syfy.png"
${NOME}   alt="Logotipo do canal SYFY"
${BROWSER}                Firefox
${URL}                    http://tv-globoplay-prod.globo.com/v2/release
# ${GLOBO}                  xpath=//*[@id="playkit-channels-navigation"]/div[2]/ul/li[1]/div/div[1]/button[2]
${CBNSP}                  xpath=//*[@id="playkit-channels-navigation"]/div[2]/ul/li[21]/div/div[1]/button[2]
${CBNRJ}                  xpath=//*[@id="playkit-channels-navigation"]/div[2]/ul/li[22]/div/div[1]/button[2]
${troca_canal.channel}    xpath=//*[@id="playkit-channels-navigation"]/div[2]/div/div[4]/div
${troca_canal.fecha}      xpath=//*[@id="playkit-channels-navigation"]/div[2]/div/div[4]/div/div[1]/div[2]/span[2]

#------------------#
# Lista de canais
#------------------#
@{canais_tv}              ${MTS} ${gbn}

${Globo}                  xpath://*[@id="playkit-channels-navigation"]/div[2]/div[1]/div[4]/div/div[1]/div[1]/img[@alt='Logotipo do canal TV Globo']
${msw}                    xpath://*[@id="playkit-channels-navigation"]/div[2]/div[1]/div[4]/div/div[1]/div[1]/img[@alt='Logotipo do canal Multishow']
${gbn}                    xpath://*[@id="playkit-channels-navigation"]/div[2]/div/div[5]/div/div[1]/div[1]/img[@alt='Logotipo do canal GloboNews']
# ${teste1}                 css:#playkit-channels-navigation > div.playkit-channels-navigation-channels-wrapper > div > div:nth-child(3) > div > div.playkit-channels-navigation__channel-info__column.playkit-channels-navigation__channel-info__column__current-program > div.playkit-channels-navigation__channel-info__column__current-program__logo > img
# ${teste2}                 css:#playkit-channels-navigation > div.playkit-channels-navigation-channels-wrapper > div > div:nth-child(4) > div > div.playkit-channels-navigation__channel-info__column.playkit-channels-navigation__channel-info__column__current-program > div.playkit-channels-navigation__channel-info__column__current-program__logo > img



# ${IMG-LOGO}         https://images.sandbox.canaldapeca.com.br/fornecedores/m/toca-obra.jpg
# ${CAMPO-EMAIL}      xpath=//*[@id="username"]
# ${CAMPO-SENHA}      xpath=//*[@id="password"]
# ${EMAIL}            jsobrinho87@gmail.com
# ${SENHA}            testecws
# ${BOTAO-LOGIN}      xpath=//*[@id="submit"]
# ${TEXT-PRODUTO}     xpath=//*[@id="tab-content"]
# ${IMG-PROD}         https://images.sandbox.canaldapeca.com.br/produtos/g/28/81/chuveiro-acqua-storm-ultra-black-7800w-220v-6578128-1577467895156.jpg
# ${DETALHES}         id: detalhes
# ${BUTTON-ACEITE}    id: div-cookieTerms-float-button
# ${ADD-CARRINHO}     id: button-add-to-cart
# ${ADD-PROD}         xpath=//*[@id="content"]/div[2]/form/div/div[2]/div[1]/a
# ${SEL-PROD}         css=#wrapper > div.highlight-products-section > div.go-home-container.clearfix.container > div > div > div > div > div.owl-stage-outer > div > div:nth-child(2) > div > div.y-item-body
# ${SEL-CATEGORIA1}   xpath=//*[@id="wrapper"]/section/ul/li[2]/a/span[1]
# ${SEL-CATEGORIA2}   xpath=//*[@id="content"]/section/div[2]/div/div/div/div/div/div/li[2]/a/span[1]

*** Keywords ***
### Setup e TEARDOWN
Abrir navegador
  Open Browser    about:blank   ${BROWSER}
  Maximize Browser Window

Fechar navegador
  Close Browser

### Ações
Acessar a página Agora na TV
   Go to              ${URL}
   Title Should Be    Globoplay
   Set Selenium Implicit Wait       30 seconds

   Click Element     xpath=//*[@id="root"]/div/div[1]/a
   Click Element     xpath=//*[@id="root"]/div[2]/div/a[3]

Clicar na opção de TV

      FOR   ${INDICE}   ${i}   IN  ENUMERATE   @{canais_tv}
         Press Keys   ${troca_canal.channel}  ARROW_DOWN
         Log To Console    Canal é: ${INDICE} -->  ${i}!
          # Click Element  ${troca_canal.channel}  ARROW_DOWN
         Sleep      3s
         Log To Console      ${i}
         # Exit For Loop IF   '${i}' ==  ${Multishow}

      END

      FOR ${i} IN RANGE 50
        Press Keys ${troca_canal.channel} ARROW_DOWN
        Sleep 1s

        ${image_atributo} Get Element Attribute ${troca_canal.logo_canal} attribute=alt
        ${title} Split String From Right ${image_atributo}
        Log To Console ${title[-1]}

        Run Keyword If 'Globo' == '0' Keyword to run
        ... Exit For Loop IF "${title[-1]}" == "GloboNews"
      END

     # FOR    ${i}   IN RANGE     35
     #    Press Keys   ${troca_canal.channel}   ARROW_DOWN
     #    Sleep      1s
     #    Log To Console      ${i}
     #
     #    # Finaliza loop de opções de canais de TV    ${canal}
     #    Exit For Loop IF   '${i}' == "15"
     #
     # END
troco o canal selecionado
      FOR ${i} IN RANGE 1  50
      Press Keys ${troca_canal.channel} ARROW_DOWN
      Sleep 1s
      ${image_atributo} Get Element Attribute ${troca_canal.logo_canal} attribute=alt
      ${title_canal} Split String From Right ${image_atributo}
      Log To Console ${title_canal[-1]}
      Log To Console ${i}
      #Exit For Loop IF "${title[-1]}" == "GloboNews"
      # Run Keyword If "${title[-1]}" == 'Globo' Keyword to run
      # ... Exit For Loop IF "${title[-1]}" == "Globo"
      identifica canal e sai
      END

identifica canal e sai
      FOR ${nome_canal_selecionado} IN ${title_canal}
        Exit For Loop IF "${title_canal[-1]}" == "GloboNews"
      END


Finaliza loop de opções de canais de TV

     # Run Keyword If    '${troca_canal.channel}'   ==    '${troca_canal.fecha}'

     # Log To Console    ${\n}
     # FOR    ${canal}  IN ENUMERATE  ${troca_canal.channel}
     #    Exit For Loop IF   '${canal}' == '${troca_canal.fecha}'
     # END

Seleciona opção o canal desejado
   Set Selenium Implicit Wait       15 seconds

# Informe campo Email
#    Click Element      ${CAMPO-EMAIL}
#    Input Text         ${CAMPO-EMAIL}  ${EMAIL}
#
# Informe campo Senha
#    Click Element      ${CAMPO-SENHA}
#    Input Text         ${CAMPO-SENHA}  ${SENHA}
#
# Seleciona botão "Fazer login"
#    Click Element      ${BOTAO-LOGIN}
#
# Verifica página logado Home
#    Set Selenium Implicit Wait       15 seconds
#    Wait Until Element Is Visible    xpath=//*[@id="wrapper"]/section/h2
#    Page Should Contain Image        xpath=//*[@id="logo"]/h1/a/img[@src="${IMG-LOGO}"]
#
# Seleciona um produto
#    Click Element      ${SEL-PROD}
#
# Verifica página de ficha do produto
#    Set Selenium Implicit Wait       15 seconds
#    Wait Until Element Is Visible    ${TEXT-PRODUTO}
#    Page Should Contain Element      ${DETALHES}
#
# Seleciona o botão "Adicionar ao Carrinho"
#    Set Selenium Implicit Wait       15 seconds
#    Click Element     ${ADD-CARRINHO}
#
# Verifica página do Carrinho
#    Set Selenium Implicit Wait       15 seconds
#    Wait Until Element Is Visible    xpath=//*[@id="content"]/div[1]/h3/div
#
# ### Adiciona mais produtos ###
# Seleciona o botão "Adicionar mais itens"
#    Set Selenium Implicit Wait       15 seconds
#    Click Element      ${ADD-PROD}
#    Wait Until Element Is Visible    xpath=//*[@id="wrapper"]/header/nav[2]
#    Page Should Contain Image        xpath=//*[@id="logo"]/h1/a/img[@src="${IMG-LOGO}"]
#
# Seleciona um segundo produto
#    Click Element      ${SEL-CATEGORIA1}
#    Click Element      ${SEL-CATEGORIA2}
#    Click Element      ${SEL-PROD2}
#
# Seleciona botão "Adicionar ao Carrinho 2"
#    Set Selenium Implicit Wait       15 seconds
#    Click Element     ${ADD-CARRINHO}
#
# Seleciona um terceiro produto
#    Click Element      ${SEL-CATEG1}
#    Click Element      ${SEL-CATEG2}
#    Click Element      ${SEL-PROD3}
#
# Seleciona botão "Adicionar ao Carrinho 3"
#    Set Selenium Implicit Wait       15 seconds
#    Click Element     ${ADD-CARRINHO}
#
# Verifica página de Escolha o frete 3
#   Set Selenium Implicit Wait       15 seconds
#   Click Element      ${BOT-FORMA-ENTR}
#
# ##############################
#
# Seleciona o botão "Finalizar Compra"
#    Set Selenium Implicit Wait       15 seconds
# #  Scroll Element Into View         xpath=//*[@id="wrapper"]/footer/article
#    Click Element                    xpath=/html/body/div[1]/footer/article/form/input[1]
#    Set Selenium Implicit Wait       15 seconds
#    Click Element      ${BOT-FRETE}
#
# Verifica página logado carrinho
#    Set Selenium Implicit Wait       15 seconds
#    Wait Until Element Is Visible    xpath=//*[@id="content"]/div[1]/h3/div
#
# Verifica página de Escolha o frete
#    Set Selenium Implicit Wait       15 seconds
#    Click Element      ${BOT-FORMA-ENTR}
#
# #Valida CUPOM valido:
# Seleciona campo de cupom de promoção
#    Click Element      ${BOT-CUPOM}
#
# Verifica se o cupom é valido
#    Input Text         ${BOT-CUPOM}  ${CUPOM}
#    Click Element      ${BOT-APLI-CUPOM}
#    Wait Until Element Is Visible    ${MENSAGEM-CUPOM}
# ###
#
# Seleciona o botão "Ir para forma de pagamento"
#    Wait Until Element Is Visible    id: order-resume
#    Click Element                    xpath=/html/body/div[1]/main/form/div[1]/div[2]/div/div[2]/div/div[1]/label/input
#    Click Element     ${BOT-FORMA-PAG}
#
# Verifica página de forma de pagamento
#    Set Selenium Implicit Wait       120 seconds
#    Wait Until Element Is Visible    xpath=//*[@id="template"]/div[1]/div/div
#
# Seleciona aba "Boleto Bancário" e finaliza compra
#    Set Selenium Implicit Wait       120 seconds
#    Click Element     ${BOLETO-BANC}
#    Set Selenium Implicit Wait       15 seconds
#    Click Element     ${FINAL-PEDIDO}
#
# Verifica página de sucesso
#    Set Selenium Implicit Wait       15 seconds
#    Wait Until Element Is Visible    xpath=//*[@id="wrapper"]/main/div[1]/div[1]/div/div/div[2]/h2
#    Wait Until Element Is Visible    xpath=//*[@id="wrapper"]/main/div[1]/div[1]/div/div/div[2]/p[1]/strong
#    capture page screenshot

### Conferências
