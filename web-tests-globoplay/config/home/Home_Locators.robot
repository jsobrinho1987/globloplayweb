*** Settings ***
Documentation       Elementos mapeados presentes na home
Library             SeleniumLibrary


*** Variables ***
${url}=          Get Location

&{pageHome}
...                     btnMenuBusca=link:Busca
...                     btnMenuHome=//*[@id="app"]/div/div/div[1]/header/div[2]/a/span[2]
...                     btnAvatar=id:avatar-button
...                     btnLogin=CSS:#login-button-Entrar
...                     btnProsseguir=link:PROSSEGUIR
...                     btnMenuAgoraNaTV=link:Agora na TV
...                     btnMenuNovelas=link:Novelas
...                     btnMenuSeries=link:Séries
...                     btnMenuFilmes=link:Filmes
...                     btnMenuInfantil=link:Infantil
...                     btnMenuExplore=link:Explore
...                     btnMenuMinhaConta_UserLogado=xpath://*[@id="root"]/div[2]/div/a[5]
#...                     btnMenuMinhaConta_UserLogado=link:Minha conta
# ...                    btnMenuMinhaConta=link:Minha conta
# ...                    HighlightPremium=class:pktv-content-informations
# ...                    HighlightPremium_Title=class:pktv-headline-image
#...                     HighlightPremium_Live=class:pktv-icon-wrapper
...                     carrossel_home=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[1]/div/div[6]/div/div[2]
...                     carrossel_imagem=xpath://*[@id="subscribe-button"]/div/div/span
...                     top_10=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[2]/div/div[1]/section/a
...                     top_10_1=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[2]/div/div[2]/div[2]/div/div[1]/a/div/div
...                     top_10_2=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[2]/div/div[2]/div[2]/div/div[2]/a/div/div
...                     top_10_3=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[2]/div/div[2]/div[2]/div/div[3]/a/div/div



&{carrossel}
...                     carrossel_home=CSS:div[class="carousel-highlight"]
...                     HighlightPremium_Live=class:background-color-live.font-color-live.font-family-standard.font-size-xxs.font-weight-bold.display-inline-block.padding-x-xs.padding-y-xxs.border-radius-live-label.pktv-live-label.pulse
...                     HighlightPremium_VejaMais=class:pktv-button.padding-x-lg.padding-y-sm.border-radius-standard.font-weight-bold.font-family-standard.font-size-sm.line-height-sm.gap-xs.pktv-outline
...                     HighlightPremium_Assista=class:pktv-button.padding-x-lg.padding-y-sm.border-radius-standard.font-weight-bold.font-family-standard.font-size-sm.line-height-sm.gap-xs.pktv-outline

&{canais_vivo}
...                     canais=CSS:div[class="playkit-slider__track"]           

&{novidades}
...                     acre=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     alagoas=xpath://*[@id="root"]/div[4]/div/div/div[2]/div

&{assista_no_disney+}
...                     acre=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     alagoas=xpath://*[@id="root"]/div[4]/div/div/div[2]/div

&{novela_nao_recomendada}
...                     acre=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     alagoas=xpath://*[@id="root"]/div[4]/div/div/div[2]/div

&{top_10_10}
...                     top_10=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[2]/div/div[1]/section/a
...                     alagoas=xpath://*[@id="root"]/div[4]/div/div/div[2]/div

&{categorias}
...                     acre=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     alagoas=xpath://*[@id="root"]/div[4]/div/div/div[2]/div

&{estreias_no_+Canais}
...                     acre=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     alagoas=xpath://*[@id="root"]/div[4]/div/div/div[2]/div

&{mais_vistos_pela_criançada}
...                     acre=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     alagoas=xpath://*[@id="root"]/div[4]/div/div/div[2]/div

&{novelas_séries_estrangeiras}
...                     acre=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     alagoas=xpath://*[@id="root"]/div[4]/div/div/div[2]/div

&{grandes_lançamentos_2021}
...                     acre=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     alagoas=xpath://*[@id="root"]/div[4]/div/div/div[2]/div

&{fantastico}
...                     acre=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     alagoas=xpath://*[@id="root"]/div[4]/div/div/div[2]/div

&{sucessos_cinema}
...                     acre=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     alagoas=xpath://*[@id="root"]/div[4]/div/div/div[2]/div

&{premiados}
...                     acre=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     alagoas=xpath://*[@id="root"]/div[4]/div/div/div[2]/div

&{series_originais_globoplay}
...                     titulos=class:about

&{dropz}
...                     titulos=class:about

&{notícias_mais_quentes}
...                     titulos=class:about

&{melhor_canais_aovivo}
...                     titulos=class:about

&{so_globoplay}
...                     titulos=class:about

&{sucessos_globoplay}
...                     titulos=class:about

&{veja_também}
...                     titulos=class:about

&{videos_mais_vistos}
...                     titulos=class:about

&{continue_navegando}
...                     titulos=class:about
