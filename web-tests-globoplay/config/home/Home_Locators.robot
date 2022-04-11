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
...                     title_canalvivo=xpath://h2[contains(.,'Canais Ao VivoVeja mais')]
...                     title_seriemaisvista=xpath://h2[contains(.,'As séries mais vistas')]
...                     title_canal=xpath://h2[contains(.,'CanaisVeja mais')]
...                     title_novidade=xpath://h2[contains(.,'NovidadesVeja mais')]
...                     title_estreias_canais=xpath://h2[contains(.,'Estreias no +Canais')]
...                     title_seriesquefalar=xpath://h2[contains(.,'Séries que dão o que falar')]
...                     title_filmesvendo=xpath://h2[contains(.,'Os filmes que todos estão vendo')]
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
...                     trilho_sonovelao=xpath:/html[1]/body[1]/div[1]/div[1]/div[1]/div[1]/div[2]/span[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[2]/div[2]/div[1]/div[1]
...                     continua_01=xpath:/html[1]/body[1]/div[1]/div[1]/div[1]/div[1]/div[2]/span[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[2]/div[3]/div[1]/*
...                     trilho_canalvivo=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[3]/div/div[2]/div[2]/div/div[1]
...                     continua_02=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[4]/div/div[2]/div[3]/div
...                     trilho_seriemaisvista=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[5]/div/div[1]/section/h2
...                     continua_03=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[5]/div/div[2]/div[3]/div
...                     trilho_canal=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[7]/div/div[2]/div[2]/div/div[1]
...                     continua_04=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[7]/div/div[2]/div[3]/div
...                     novidade=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[8]/div/div[2]/div[2]/div/div[1]
...                     continua_05=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[8]/div/div[2]/div[3]/div
...                     estreias_canais=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[9]/div/div[2]/div[2]/div/div[1]
...                     continua_06=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[9]/div/div[2]/div[3]/div
...                     seriesquefalar=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[10]/div/div[2]/div[2]/div/div[1]
...                     continua_07=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[10]/div/div[2]/div[3]/div
...                     filmestodosvendo=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[11]/div/div[2]/div[2]/div/div[1]
...                     continua_08=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[11]/div/div[2]/div[3]/div
...                     vivobbb=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[12]/div/div[2]/div[2]/div/div[1]
...                     continua_09=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[12]/div/div[2]/div[3]/div
...                     assista_discovery=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[14]/div/div[2]/div[2]/div/div[1]
...                     continua_10=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[14]/div/div[2]/div[3]/div
...                     top10alta=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[14]/div/div[2]/div[2]/div/div[1]
...                     continua_11=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[14]/div/div[2]/div[3]/div
...                     categorias=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[15]/div/div[2]/div[2]/div/div[1]
...                     continua_12=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[15]/div/div[2]/div[3]/div
...                     tramaslatinas=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[18]/div/div[2]/div[2]/div/div[1]
...                     continua_13=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[18]/div/div[2]/div[3]/div
...                     participapipoca=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[19]/div/div[2]/div[2]/div/div[1]
...                     continua_14=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[19]/div/div[2]/div[3]/div
...                     participacamarote=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[20]/div/div[2]/div[2]/div/div[1]
...                     continua_15=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[20]/div/div[2]/div[3]/div
...                     filmesvendo=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[21]/div/div[2]/div[2]/div/div[1]
...                     continua_16=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[21]/div/div[2]/div[3]/div
...                     top10maisconsumidos=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[22]/div/div[2]/div[2]/div/div[1]
...                     continua_17=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[22]/div/div[2]/div[3]/div
...                     naveguegloboplay=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[23]/div/div[2]/div[2]/div/div[1]
...                     continua_18=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[23]/div/div[2]/div[3]/div
...                     assistadisney=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[24]/div/div[2]/div[2]/div/div[1]
...                     continua_19=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[24]/div/div[2]/div[3]/div
...                     grandessucesso=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[25]/div/div[2]/div[2]/div/div[1]
...                     continua_20=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[25]/div/div[2]/div[3]/div
...                     altatelecine=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[26]/div/div[2]/div[2]/div/div[1]
...                     continua_21=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[26]/div/div[2]/div[3]/div
...                     assistagraça=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[27]/div/div[2]/div[2]/div/div[1]
...                     continua_22=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[27]/div/div[2]/div[3]/div
...                     podcasts=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[16]/div/div[2]/div[2]/div/div[1]
...                     continua_23=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[16]/div/div[2]/div[3]/div
...                     novelasepoca=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[28]/div/div[2]/div[2]/div/div[1]
...                     continua_24=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[28]/div/div[2]/div[3]/div
...                     originaisgloboplay=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[29]/div/div[2]/div[2]/div/div[1]
...                     continua_25=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[29]/div/div[2]/div[3]/div
...                     seriepremiadas=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[31]/div/div[2]/div[2]/div/div[1]
...                     continua_26=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[31]/div/div[2]/div[3]/div
...                     sogloboplay=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[32]/div/div[2]/div[2]/div/div[1]
...                     continua_27=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[32]/div/div[2]/div[3]/div
...                     criancada=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[33]/div/div[2]/div[2]/div/div[1]
...                     continua_28=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[33]/div/div[2]/div[3]/div
...                     sucessosgloboplay=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[35]/div/div[2]/div[2]/div/div[1]
...                     continua_29=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[35]/div/div[2]/div[3]/div
...                     personalidades=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[36]/div/div[2]/div[2]/div/div[1]
...                     continua_30=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[36]/div/div[2]/div[3]/div
...                     noticiasmais=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[37]/div/div[2]/div[2]/div/div[1]
...                     continua_31=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[37]/div/div[2]/div[3]/div
...                     videosmais=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[39]/div/div[2]/div[2]/div/div[1]
...                     continua_32=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[39]/div/div[2]/div[3]/div
...                     continuenavegando=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[40]/div/div[2]/div[2]/div/div[1]
...                     continua_33=xpath:/html/body/div[1]/div/div/div[1]/div[2]/span/div/div/div/div[40]/div/div[2]/div[3]/div

