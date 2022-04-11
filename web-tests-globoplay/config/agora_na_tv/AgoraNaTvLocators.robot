*** Settings ***
Documentation       Elementos mapeados presentes na página de home
Library             SeleniumLibrary


*** Variables ***
&{page_agoratv}
...                     agora_tv=xpath://*[@id="app"]/div/div/div[1]/header/nav/a[1]
...                     btn_assistir=xpath://div[@class='playkit-buttons__button-content'][contains(.,'Assista agora')]
...                     canais=xpath://*[@id="playkit-channels-navigation"]/div[2]
...                     menu_tv=xpath://*[@id="playkit-channels-navigation"]/div[1]/ul


&{menuTv}
...						todos=xpath://*[contains(text(),"Todos")]
...                     bbb=xpath://button[@class='playkit-channels-navigation__category'][contains(.,'BBB')]
...                     maiscanais=xpath://*[contains(text(),"+Canais")]
...                     filmes=xpath://*[contains(text(),"Filmes e Séries")]
...                     esportes=xpath://*[contains(text(),"Esportes")]
...                     jornalismo=xpath://*[contains(text(),"Jornalismo")]
...                     infantil=xpath://*[contains(text(),"Infantil")]
...                     maiscanais=xpath://*[contains(text(),"+Canais")]
...                     gratuitos=xpath://*[contains(text(),"Gratuitos")]

&{canal}
... 					megapix=xpath://*[@id="playkit-channels-navigation"]/div[2]/div[1]/div[4]/div/div[1]
...                     sportv=xpath://*[@id="playkit-channels-navigation"]/div[2]/div[1]/div[4]/div/div[1]
...                     multshow=xpath://*[@id="playkit-channels-navigation"]/div[2]/ul/li[1]/div
...                     globo=xpath://*[@id="playkit-channels-navigation"]/div[2]/ul/li[1]/div
...                     viva=xpath://*[@id="playkit-channels-navigation"]/div[2]/ul/li[7]/div
...                     gratuitos=xpath://*[@id="playkit-channels-navigation"]/div[2]/ul/li[1]/div
...                     todos=xpath://*[@id="playkit-channels-navigation"]/div[2]/div[1]/div[4]
...                     jornalismo=xpath://*[@id="playkit-channels-navigation"]/div[2]/ul/li[1]/div

&{text}
...                     msg1=xpath://*[contains(text(),"Conteúdo exclusivo")]
...                     msg2=xpath://*[contains(text(),"Aproveite")]
...                     msg3=//*[@id="root"]/div[2]/div/div/div[1]/div/div[1]/h1

&{image}
...                     xpath://*[@id="playkit-channels-navigation"]/div[2]/div[1]/div[4]/div/div[1]/div[1]/img

&{troca_canal}
...                     programacao=xpath://*[@id="playkit-channels-navigation"]/div[2]/div[1]/div[4]/div/div[3]
...                     title_epg_agora=xpath://*[contains(text(),"Agora")]
...                     channel=xpath://*[@id="playkit-channels-navigation"]/div[2]/div[1]/div[4]/div/div[1]

