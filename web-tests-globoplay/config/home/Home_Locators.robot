*** Settings ***
Documentation       Elementos mapeados presentes na página de home
Library             SeleniumLibrary


*** Variables ***
${url}=                 Get Location


&{homePage}
...                     pagina=CSS:div[class="application-controller__view"]
...                     cookie=CSS:div[class="cookie-banner-lgpd_text-box"]  

&{homeBanner}
...                     carrosel=xpath=/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[1]/div/div[1]
...                     carrossel_home=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[1]/div/div[6]/div/div[2]
...                     carrossel_imagem=xpath://*[@id="subscribe-button"]/div/div/span
...                     banner=xpath=//html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[1]/div/div
...                     roda=xpath=//html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[1]/div/div[9]/div/div[6]

&{homeTitle}
...                     title_sonovelao=xpath://h2[contains(.,'Só novelãoVeja mais')]
...                     title_assistavivo=xpath://h2[contains(.,'Assista ao Vivo')]
...                     title_seriemaisvista=xpath://h2[contains(.,'As séries mais vistas')]
...                     title_canal=xpath://h2[contains(.,'CanaisVeja mais')]
...                     title_novidade=xpath://h2[contains(.,'NovidadesVeja mais')]
...                     title_estreias_canais=xpath://h2[contains(.,'Estreias no +Canais')]
...                     title_seriesquefalar=xpath://h2[contains(.,'Séries que dão o que falar')]
...                     title_filmesstodovendo=xpath://h2[contains(.,'Os filmes que todos estão vendo')]
...                     title_vivobbb=xpath://h2[contains(.,'Ao Vivo no BBBVeja mais')]
...                     title_assista_discovery=xpath://h2[contains(.,'Assista no Discovery+')]
...                     title_top10alta=xpath://h2[contains(.,'Top 10 - Em AltaVeja mais')]
...                     title_categorias=xpath://h2[contains(.,'CategoriasVeja mais')]
...                     title_tramaslatinas=xpath://h2[contains(.,'Tramas latinas')]
...                     title_participapipoca=xpath://h2[contains(.,'Participantes Pipoca')]
...                     title_participacamarote=xpath://h2[contains(.,'Participantes Camarote')]
...                     title_fantastico=xpath://h2[contains(.,'Participantes Camarote')]
...                     title_sucessoscinema=xpath://h2[contains(.,'Grandes sucessos do cinema')]
...                     title_top10maisconsumidos=xpath://h2[contains(.,'Top 10 - Mais Consumidos')]
...                     title_naveguegloboplay=xpath://h2[contains(.,'Navegue pelo Globoplay')]
...                     title_assistadisney=xpath://h2[contains(.,'Assista no Disney+')]
...                     title_grandessucesso=xpath://h2[contains(.,'Grandes sucessos do cinema')]
...                     title_altatelecine=xpath://h2[contains(.,'Em alta no TelecineVeja mais')]
...                     title_assistagraça=xpath://h2[@class='title'][contains(.,'Assista de graçaVeja mais')]
...                     title_podcasts=xpath://h2[@class='title'][contains(.,'PodcastsVeja mais')]
...                     title_novelasepoca=xpath://h2[contains(.,'Novelas que marcaram época')]
...                     title_originaisgloboplay=xpath://h2[@class='title'][contains(.,'Produções Originais GloboplayVeja mais')]
...                     title_seriesviciantes=xpath://h2[@class='title'][contains(.,'Séries premiadasVeja mais')]
...                     title_sogloboplay=xpath://h2[@class='title'][contains(.,'Só no GloboplayVeja mais')]
...                     title_seriepremiadas=xpath://h2[@class='title'][contains(.,'Séries premiadas')]
...                     tltle_criancada=xpath://h2[@class='title'][contains(.,'Os favoritos da criançadaVeja mais')]
...                     title_sucessosgloboplay=xpath://h2[contains(.,'Sucessos no Globoplay')]
...                     title_personalidades=xpath://h2[@class='title'][contains(.,'Documentários sobre PersonalidadesVeja mais')]
...                     title_noticiasmais=xpath://h2[contains(.,'As notícias mais quentes')]
...                     title_videosmais=xpath://h2[contains(.,'Vídeos mais vistos')]
...                     title_continuenavegando=xpath://h2[contains(.,'Continue navegando')]


&{homeTrilho}
...                     sonovelao=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Só novelãoVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[1]
...                     continua_01=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Só novelãoVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
...                     assistavivo=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Assista ao Vivo')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[1]
...                     continua_02=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Assista ao Vivo')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
...                     seriemaisvista=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'As séries mais vistas')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[1]
...                     continua_03=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'As séries mais vistas')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
...                     canal=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'CanaisVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[1]
...                     continua_04=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'CanaisVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
...                     novidade=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'NovidadesVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[1]
...                     continua_05=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'NovidadesVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
...                     estreias_canais=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Estreias no +Canais')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[1]
...                     continua_06=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Estreias no +Canais')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
...                     seriesquefalar=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Séries que dão o que falar')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[1]
...                     continua_07=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Séries que dão o que falar')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
...                     filmesstodovendo=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Os filmes que todos estão vendo')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[1]
...                     continua_08=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Os filmes que todos estão vendo')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
...                     vivobbb=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Ao Vivo no BBBVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[1]
...                     continua_09=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Ao Vivo no BBBVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
...                     assista_discovery=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Assista no Discovery+')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[1]
...                     continua_10=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Assista no Discovery+')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
...                     top10alta=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Top 10 - Em AltaVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[1]
...                     continua_11=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Top 10 - Em AltaVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
...                     categorias=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'CategoriasVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[1]
...                     continua_12=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'CategoriasVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
...                     tramaslatinas=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Tramas latinas')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[1]
...                     continua_13=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Tramas latinas')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
...                     participapipoca=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Participantes Pipoca')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[1]
...                     continua_14=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Participantes Pipoca')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
...                     participacamarote=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Participantes Camarote')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[1]
...                     continua_15=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Participantes Camarote')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
...                     top10maisconsumidos=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Top 10 - Mais Consumidos')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[1]
...                     continua_16=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Top 10 - Mais Consumidos')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
...                     naveguegloboplay=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Navegue pelo Globoplay')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[1]
...                     continua_17=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Navegue pelo Globoplay')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
...                     assistadisney=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Assista no Disney+')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[1]
...                     continua_18=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Assista no Disney+')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
...                     grandessucesso=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Grandes sucessos do cinema')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[1]
...                     continua_19=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Grandes sucessos do cinema')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
...                     altatelecine=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Em alta no TelecineVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[1]
...                     continua_20=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Em alta no TelecineVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
...                     assistagraça=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Assista de graçaVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[1]
...                     continua_21=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Assista de graçaVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
...                     podcasts=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'PodcastsVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[1]
...                     continua_22=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'PodcastsVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
...                     novelasepoca=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Novelas que marcaram época')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[1]
...                     continua_23=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Novelas que marcaram época')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
...                     originaisgloboplay=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Produções Originais GloboplayVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[1]
...                     continua_24=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Produções Originais GloboplayVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
...                     seriepremiadas=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Séries premiadasVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[1]
...                     continua_25=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Séries premiadasVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
...                     sogloboplay=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Só no GloboplayVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[1]
...                     continua_26=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Só no GloboplayVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
...                     criancada=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Os favoritos da criançadaVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[1]
...                     continua_27=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Os favoritos da criançadaVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
...                     sucessosgloboplay=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Sucessos no Globoplay')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[1]
...                     continua_28=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Sucessos no Globoplay')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
...                     personalidades=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Documentários sobre PersonalidadesVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[1]
...                     continua_29=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Documentários sobre PersonalidadesVeja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
...                     noticiasmais=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'As notícias mais quentes')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[1]
...                     continua_30=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'As notícias mais quentes')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
...                     videosmais=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Vídeos mais vistos')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[1]
...                     continua_31=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Vídeos mais vistos')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
...                     continuenavegando=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Continue navegando')]/ancestor::div/div[@class='playkit-slider__container ']/div[2]/div/div[1]
...                     continua_32=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Continue navegando')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div

