*** Settings ***

Documentation    Elementos de Canais
Library          SeleniumLibrary

*** Variables ***
# Variáveis estavam nomeadas como MenuExplore e foram alteradas; alterar no arquivo das keywords.
&{Canais}
...                         textoAssistaAoVivo=xpath://h2[text()="Assista ao vivo"]
...                         textoCanais=xpath://h2[text()="Canais"]
...                         btnCanais=xpath://a[text()="Canais"]
...                         textoEscolhaSeuPlano=xpath://h2[text()="Escolha seu plano"]
...                         btnAssista_Canais=xpath://span[text()="Assista"]
...                         btnAssistaAgora_Canais=xpath://*[text()="Assista agora"]
...                         btnConhecaONovoPlano_AoVivo_Canais=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div/div/section/div/div[1]/div/div[2]/div[1]/div/span
...                         btnConhecaONovoPlano_Canais=xpath://*[text()="Conheça o novo plano"]
...                         bannerCanais=xpath://*[@class="highlight__content"]
...                         btnNextAssistaAoVivo_Canais=xpath://*[@class="playkit-list__next playkit-list__always-show-navigation"]
...                         btnVejaMais_Banner=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[1]/div[2]/div[3]/a
...                         btnVejaMais=xpath://button[@aria-label="botao-Veja mais"]
...                         btnEscolhaSeuPlano=xpath://*[@class="open-products-card-list-modal-button"]
...                         btnAssineCombate=xpath://*[@class="open-products-card-list-modal-button"]

&{TVGlobo}
...                         TVGlobo_AssistaAoVivo=xpath://a[contains(@aria-label,"TV Globo.")]
...                         TVGlobo_Canais=xpath://a[@aria-label="TV Globo"]

&{Multishow}
...                         Multishow_AssistaAoVivo=xpath://a[contains(@aria-label,"Multishow.")]
...                         Multishow_Canais=xpath://a[@aria-label="Multishow"]
...                         textoTodosOsTitulos_Multishow=xpath://*[text()="Todos os títulos - Multishow"]

&{Globonews}
...                         Globonews_AssistaAoVivo=xpath://a[contains(@aria-label,"GloboNews.")]
...                         Globonews_Canais=xpath://a[@aria-label="GloboNews"]

&{SporTV}
...                         SporTV_AssistaAoVivo=xpath://a[contains(@aria-label,"SporTV.")]
...                         SporTV_Canais=xpath://a[@aria-label="SporTV"]

&{GNT}
...                         GNT_AssistaAoVivo=xpath://a[contains(@aria-label,"GNT.")]
...                         GNT_Canais=xpath://a[@aria-label="GNT"]

&{VIVA}
...                         VIVA_AssistaAoVivo=xpath://a[contains(@aria-label,"VIVA.")]
...                         VIVA_Canais=xpath://a[@aria-label="VIVA"]

&{Gloob}
...                         Gloob_AssistaAoVivo=xpath://a[contains(@aria-label,"Gloob.")]
...                         Gloob_Canais=xpath://a[@aria-label="Gloob"]

&{Gloobinho}
...                         Gloobinho_AssistaAoVivo=xpath://a[contains(@aria-label,"Gloobinho.")]
...                         Gloobinho_Canais=xpath://a[@aria-label="Gloobinho"]

&{Megapix}
...                         textoMegapix=xpath://a[contains(@aria-label,"Megapix.")]
...                         Megapix_Canais=xpath://a[@aria-label="Megapix"]

&{Universal+}
...                         textoUniversalTV=xpath://a[starts-with(@aria-label,"Universal.")]
...                         textoStudioUniversal=xpath://a[contains(@aria-label,"Studio Universal.")]
...                         textoSYFY=xpath://a[contains(@aria-label,"SYFY.")]
...                         Universal+_Canais=xpath://a[@aria-label="Universal+"]
...                         textoAgoranoUniversal+=xpath://h2[text()="Novas Temporadas!"]

&{CanalBrasil}
...                         CanalBrasil_AssistaAoVivo=xpath://a[contains(@aria-label,"Canal Brasil.")]
...                         CanalBrasil_Canais=xpath://a[@aria-label="Canal Brasil"]

&{CanalOff}

...                         CanalOff_AssistaAoVivo=xpath://a[contains(@aria-label,"Canal Off.")]
...                         CanalOff_Canais=xpath://a[@aria-label="Canal Off"]

&{Bis}
...                         BIS_AssistaAoVivo=xpath://a[contains(@aria-label,"Bis.")]
...                         BIS_Canais=xpath://a[@aria-label="Bis"]

&{Modo Viagem}
...                         ModoViagem_AssistaAoVivo=xpath://a[contains(@aria-label,"Modo Viagem.")]
...                         ModoViagem_Canais=xpath://a[@aria-label="Modo Viagem"]

&{Futura}
...                         Futura_AssistaAoVivo=xpath://a[contains(@aria-label,"Futura.")]
...                         Futura_Canais=xpath://a[@aria-label="Futura"]

&{Telecine}
...                         textoTelecinePremium=xpath://a[contains(@aria-label,"Telecine Premium")]
...                         textoTelecineAction=xpath://a[contains(@aria-label,"Telecine Action")]
...                         textoTelecineTouch=xpath://a[contains(@aria-label,"Telecine Touch")]
...                         textoTelecineFun=xpath://a[contains(@aria-label,"Telecine Fun")]
...                         textoTelecinePipoca=xpath://a[contains(@aria-label,"Telecine Pipoca")]
...                         textoTelecineCult=xpath://a[contains(@aria-label,"Telecine Cult")]
...                         Telecine_Canais=xpath://nav[@class="channels-list__navigation"]/a[contains(@aria-label,"Telecine")]
...                         Telecine_textoCanaisTelecine=xpath://h2[text()="Canais Telecine"]
...                         btnNextTelecine_Canais=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[8]/div/div[2]/div[3]
...                         textoAssinaturaTelecine=xpath://h3[text()="Telecine"]

&{CBN}
...                         CBNRJ_AssistaAoVivo=xpath://a[contains(@aria-label,"CBN RJ.")]
...                         CBNSP_AssistaAoVivo=xpath://a[contains(@aria-label,"CBN SP.")]

&{Premiere}
...                         Premiere_AssistaAoVivo=xpath://a[contains(@aria-label,"Premiere.")]
...                         Premiere_Canais=xpath://a[@aria-label="Premiere"]
...                         AgoraNoPremiere_Canais=xpath://a[contains(@aria-label,"Premiere.")]
...                         textoAssinaturaPremiere=xpath://h3[text()="Premiere"]

&{Combate}
...                         Combate_AssistaAoVivo=xpath://a[contains(@aria-label,"Combate.")]
...                         Combate_Canais=xpath://a[@aria-label="Combate"]
...                         textoAssinaturaCombate=xpath://h3[text()="Combate"]
