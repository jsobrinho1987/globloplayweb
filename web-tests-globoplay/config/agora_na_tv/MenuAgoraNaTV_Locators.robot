*** Settings ***
Documentation       Elementos mapeados presentes na tela de Agora Na TV
Library             SeleniumLibrary




*** Variables ***
&{pageCanaisAoVivo}
...                     gradePgm=id:playkit-channels-navigation
...                     canalSelecionado=class:playkit-channels-navigation__channel-info__logo
...                     tapumeWarningBlock=class:playkit-warning-box__container
...                     lista_FiltroCanais=class:playkit-channels-navigation__categories-list-tv
...                     slider_down=class:playkit-list-tv__vertical-infinite-slider__arrow-icon.playkit-list-tv__vertical-infinite-slider__arrow-icon--down

&{filtroCanaisAoVivo}
...                     todos=xpath://*[@id="playkit-channels-navigation"]/div[1]/ul/li[1]
...                     gratuitos=xpath://*[@id="playkit-channels-navigation"]/div[1]/ul/li[2]
...                     +canais=xpath://*[@id="playkit-channels-navigation"]/div[1]/ul/li[3]
...                     filmes_e_series=xpath://*[@id="playkit-channels-navigation"]/div[1]/ul/li[4]
...                     esportes=xpath://*[@id="playkit-channels-navigation"]/div[1]/ul/li[5]
...                     jornalismo=xpath://*[@id="playkit-channels-navigation"]/div[1]/ul/li[6]
...                     infantil=xpath//*[@id="playkit-channels-navigation"]/div[1]/ul/li[7]