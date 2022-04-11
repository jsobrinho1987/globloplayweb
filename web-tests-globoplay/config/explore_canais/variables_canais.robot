*** Settings ***

Documentation    Elementos de Canais
Library          SeleniumLibrary

*** Variables ***
&{Canais}
...                         textoAssistaAoVivo=xpath://h2[text()="Assista ao vivo"]
...                         textoCanais=xpath://h2[text()="Canais"]
...                         btn=xpath://a[text()="Canais"]
...                         textoEscolhaSeuPlano=xpath://h2[text()="Escolha seu plano"]
...                         btnAssista=xpath://span[text()="Assista"]
...                         btnAssistaAgora_Canais=xpath://*[text()="Assista agora"]
...                         btnConhecaONovoPlano=xpath://*[text()="Conheça o novo plano"]
...                         banner=xpath://*[@class="highlight__content"]
...                         btnNextAssistaAoVivo=xpath://*[@class="playkit-list__next playkit-list__always-show-navigation"]
...                         btnVejaMais_Banner=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[1]/div[2]/div[3]/a
...                         btnVejaMais=xpath://button[@aria-label="botao-Veja mais"]
...                         btnEscolhaSeuPlano=xpath://*[@class="open-products-card-list-modal-button"]

&{TVGlobo}
...                         AssistaAoVivo=xpath://a[contains(@aria-label,"TV Globo.")]
...                         Canais=xpath://a[@aria-label="TV Globo"]

&{Multishow}
...                         AssistaAoVivo=xpath://a[contains(@aria-label,"Multishow.")]
...                         Canais=xpath://a[@aria-label="Multishow"]
...                         textoTodosOsTitulos_Multishow=xpath://*[text()="Todos os títulos - Multishow"]

&{Globonews}
...                         AssistaAoVivo=xpath://a[contains(@aria-label,"GloboNews.")]
...                         Canais=xpath://a[@aria-label="GloboNews"]

&{SporTV}
...                         AssistaAoVivo=xpath://a[contains(@aria-label,"SporTV.")]
...                         Canais=xpath://a[@aria-label="SporTV"]

&{GNT}
...                         AssistaAoVivo=xpath://a[contains(@aria-label,"GNT.")]
...                         Canais=xpath://a[@aria-label="GNT"]

&{VIVA}
...                         AssistaAoVivo=xpath://a[contains(@aria-label,"VIVA.")]
...                         Canais=xpath://a[@aria-label="VIVA"]

&{Gloob}
...                         AssistaAoVivo=xpath://a[contains(@aria-label,"Gloob.")]
...                         Canais=xpath://a[@aria-label="Gloob"]

&{Gloobinho}
...                         AssistaAoVivo=xpath://a[contains(@aria-label,"Gloobinho.")]
...                         Canais=xpath://a[@aria-label="Gloobinho"]

&{Megapix}
...                         textoMegapix=xpath://a[contains(@aria-label,"Megapix.")]
...                         Canais=xpath://a[@aria-label="Megapix"]

&{Universal+}
...                         textoUniversalTV=xpath://a[starts-with(@aria-label,"Universal.")]
...                         textoStudioUniversal=xpath://a[contains(@aria-label,"Studio Universal.")]
...                         textoSYFY=xpath://a[contains(@aria-label,"SYFY.")]
...                         Universal+_Canais=xpath://a[@aria-label="Universal+"]
...                         textoAgoranoUniversal+=xpath://h2[text()="Novas Temporadas!"]

&{CanalBrasil}
...                         AssistaAoVivo=xpath://a[contains(@aria-label,"Canal Brasil.")]
...                         Canais=xpath://a[@aria-label="Canal Brasil"]

&{CanalOff}

...                         AssistaAoVivo=xpath://a[contains(@aria-label,"Canal Off.")]
...                         Canais=xpath://a[@aria-label="Canal Off"]

&{Bis}
...                         AssistaAoVivo=xpath://a[contains(@aria-label,"Bis.")]
...                         Canais=xpath://a[@aria-label="Bis"]

&{Modo Viagem}
...                         AssistaAoVivo=xpath://a[contains(@aria-label,"Modo Viagem.")]
...                         Canais=xpath://a[@aria-label="Modo Viagem"]

&{Futura}
...                         AssistaAoVivo=xpath://a[contains(@aria-label,"Futura.")]
...                         Canais=xpath://a[@aria-label="Futura"]

&{Telecine}
...                         textoTelecinePremium=xpath://a[contains(@aria-label,"Telecine Premium")]
...                         textoTelecineAction=xpath://a[contains(@aria-label,"Telecine Action")]
...                         textoTelecineTouch=xpath://a[contains(@aria-label,"Telecine Touch")]
...                         textoTelecineFun=xpath://a[contains(@aria-label,"Telecine Fun")]
...                         textoTelecinePipoca=xpath://a[contains(@aria-label,"Telecine Pipoca")]
...                         textoTelecineCult=xpath://a[contains(@aria-label,"Telecine Cult")]
...                         Telecine_Canais=xpath://nav[@class="channels-list__navigation"]/a[contains(@aria-label,"Telecine")]
...                         textoCanaisTelecine=xpath://h2[text()="Canais Telecine"]
...                         btnNextTelecine_Canais=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[8]/div/div[2]/div[3]
...                         textoAssinatura=xpath://h3[text()="Telecine"]

&{CBN}
...                         RJ_AssistaAoVivo=xpath://a[contains(@aria-label,"CBN RJ.")]
...                         SP_AssistaAoVivo=xpath://a[contains(@aria-label,"CBN SP.")]

&{Premiere}
...                         AssistaAoVivo=xpath://a[contains(@aria-label,"Premiere.")]
...                         Canais=xpath://a[@aria-label="Premiere"]
...                         AgoraNoPremiere_Canais=xpath://a[contains(@aria-label,"Premiere.")]
...                         textoAssinatura=xpath://h3[text()="Premiere"]

&{Combate}
...                         AssistaAoVivo=xpath://a[contains(@aria-label,"Combate.")]
...                         Canais=xpath://a[@aria-label="Combate"]
...                         textoAssinatura=xpath://h3[text()="Combate"]
...                         btnAssineCombate=xpath://*[@class="open-products-card-list-modal-button"]