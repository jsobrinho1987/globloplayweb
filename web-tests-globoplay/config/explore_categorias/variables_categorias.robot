*** Settings ***

Documentation    Elementos de Categorias
Library          SeleniumLibrary

*** Variables ***
@{lista}

&{Categorias}
...                         tituloNovelas=xpath://h3[text()="Novelas"]
...                         tituloSeries=xpath://h3[text()="Séries"]
...                         tituloFilmes=xpath://h3[text()="Filmes"]
...                         tituloInfantil=xpath://h3[text()="Infantil"]
...                         tituloRealities=xpath://h3[text()="Realities"]
...                         tituloDocumentarios=xpath://h3[text()="Documentários"]
...                         tituloEsportes=xpath://h3[text()="Esportes"]
...                         btn=xpath://a[text()="Categorias"]
...                         banner=xpath://*[@class="highlight__background__picture"]
...                         btnVejaMaisBanner=xpath://*[@class="playkit-buttons__button--upperCase"]
...                         btnAssineJaBanner=xpath://*[text()="Assine já"]
...                         btnVerTodos=xpath://h2[text()="Ver todos"]
...                         btnAssista=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div[1]/div/div[2]/div/div[4]/span[1]/span/span[1]/a

# criar dicionário para Título/Title e para Trilho
&{categoriasTrilho}
...                         trilho_escolhapelogenero=xpath://h2[text()="Escolha pelo gênero"]
...                         btnNextescolhapelogenero=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[2]/div/div[2]/div[3]/div
...                         pega_titulo_escolhapelogenero=xpath:(//h2[text()="Escolha pelo gênero"]/../../..//a)[1]
...                         trilho_novidades=xpath://h2[text()="Novidades"]
...                         btnNextnovidades=xpath://h2[text()="Novidades"]/../../..//div[@class="playkit-list__next-icon"]
...                         pega_titulo_novidades=xpath:(//h2[text()="Novidades"]/../../../..//figure//a)[1]
# ajustar variáveis para modelo novo
...                         trilho_todasasseries=xpath://h2[text()="Todas as séries"]
...                         btnNexttodasasseries=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[4]/div/div[2]/div[3]/div
...                         trilho_acao=xpath://h2[text()="Ação"]
...                         btnNextacao=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[5]/div/div[2]/div[3]/div
...                         trilho_comedia=xpath://h2[text()="Comédia"]
...                         btnNextcomedia=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[6]/div/div[2]/div[3]/div
...                         trilho_originaisgloboplay=xpath://h2[text()="Originais Globoplay"]
...                         btnNextoriginaisgloboplay=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[7]/div/div[2]/div[3]/div
...                         pega_titulo_originaisgloboplay=xpath:(//h2[text()="Originais Globoplay"]/../../../..//figure//a)[1]
...                         trilho_seriesbrasileiras=xpath://h2[text()="Séries brasileiras"]
...                         btnNextseriesbrasileiras=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[8]/div/div[2]/div[3]/div
...                         trilho_seriesdeepoca=xpath://h2[text()="Séries de época"]
...                         btnNextseriesdeepoca=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[9]/div/div[2]/div[3]/div
...                         trilho_exclusivogloboplay=xpath://h2[text()="Exclusivo Globoplay"]
...                         btnNextexclusivogloboplay=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[10]/div/div[2]/div[3]/div
...                         trilho_seriesmedicas=xpath://h2[text()="Séries médicas"]
...                         btnNextseriesmedicas=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[11]/div/div[2]/div[3]/div
...                         trilho_sessaonostalgia=xpath://h2[text()="Sessão nostalgia"]
...                         btnNextsessaonostalgia=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[12]/div/div[2]/div[3]/div
...                         trilho_sucessosnogloboplay=xpath://h2[text()="Sucessos no Globoplay"]
...                         btnNextsucessosnogloboplay=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[13]/div/div[2]/div[3]/div
...                         trilho_premiadas=xpath://h2[text()="Premiadas"]
...                         btnNextpremiadas=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[14]/div/div[2]/div[3]/div
...                         trilho_seriescompletas=xpath://h2[text()="Séries completas"]
...                         btnNextseriescompletas=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[15]/div/div[2]/div[3]/div
...                         trilho_paraverrapidinho=xpath://h2[text()="Para ver rapidinho"]
...                         btnNextparaverrapidinho=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[16]/div/div[2]/div[3]/div
...                         trilho_seriesdaglobo=xpath://h2[text()="Séries da Globo"]
...                         btnNextseriesdaglobo=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[17]/div/div[2]/div[3]/div
...                         trilho_novastemporadas=xpath://h2[text()="Novas temporadas"]
...                         btnNextnovastemporadas=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[18]/div/div[2]/div[3]/div
...                         trilho_franquiasespin-offs=xpath://h2[text()="Franquias e spin-offs"]
...                         btnNextfranquiasespin-offs=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[19]/div/div[2]/div[3]/div
...                         trilho_misterio=xpath://h2[text()="Mistério"]
...                         btnNextmisterio=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[20]/div/div[2]/div[3]/div
...                         trilho_paraverdegraca=xpath://h2[text()="Séries levinhas para relaxar"]
...                         btnNextparaverdegraca=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[21]/div/div[2]/div[3]/div
...                         trilho_ficcaocientifica=xpath://h2[text()="Ficção Científica"]
...                         btnNextficcaocientifica=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[26]/div/div[2]/div[3]/div
...                         pega_titulo_ficcaocientifica=xpath:(//h2[text()="Ficção Científica"]/../../../..//figure//a)[1]
...                         trilho_faroeste=xpath://h2[text()="Faroeste"]
...                         trilho_podcasts=xpath://h2[text()="Podcasts"]
...                         btnTodosOsDocumentarios=xpath://h2[text()="Todos os documentários"]
...                         trilho_filmesmaisvistos=xpath://h2[text()="Filmes mais vistos"]
...                         btnNextfilmesmaisvistos=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[3]/div/div[2]/div[3]/div
...                         trilho_biografias=xpath://h2[text()="Biografias"]
...                         btnNextbiografias=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[5]/div/div[2]/div[3]/div
...                         trilho_lgbtqia+=xpath://h2[text()="LGBTQIA+"]
...                         btnNextlgbtqia+=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[6]/div/div[2]/div[3]/div
...                         trilho_nacionais=xpath://h2[text()="Nacionais"]
...                         btnNextnacionais=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[7]/div/div[2]/div[3]/div
...                         trilho_musica=xpath://h2[text()="Música"]
...                         btnNextmusica=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[7]/div/div[2]/div[3]/div
...                         trilho_historia=xpath://h2[text()="História"]
...                         btnNexthistoria=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[9]/div/div[2]/div[3]/div
...                         trilho_familiareal=xpath://h2[text()="Família Real"]
...                         btnNextfamiliareal=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[10]/div/div[2]/div[3]/div
...                         trilho_cienciaetecnologia=xpath://h2[text()="Ciência e Tecnologia"]
...                         btnNextcienciaetecnologia=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[11]/div/div[2]/div[3]/div
...                         trilho_crimeeinvestigacao=xpath://h2[text()="Crime e Investigação"]
...                         btnNextcrimeeinvestigacao=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[12]/div/div[2]/div[3]/div
...                         trilho_esportes=xpath://h2[text()="Esportes"]
...                         btnNextesportes=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[13]/div/div[2]/div[3]/div
...                         trilho_politica=xpath://h2[text()="Política"]
...                         btnNextpolitica=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[14]/div/div[2]/div[3]/div
...                         trilho_questoessociais=xpath://h2[text()="Questões Sociais"]
...                         btnNextquestoessociais=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[15]/div/div[2]/div[3]/div
...                         trilho_meioambiente=xpath://h2[text()="Meio ambiente"]
...                         btnNextmeioambiente=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[16]/div/div[2]/div[3]/div
...                         trilho_premiados=xpath://h2[text()="Premiados"]
...                         btnNextpremiados=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[17]/div/div[2]/div[3]/div
...                         trilho_estilodevida=xpath://h2[text()="Estilo de Vida"]
...                         btnNextestilodevida=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[18]/div/div[2]/div[3]/div
...                         trilho_sonogloboplay=xpath://h2[text()="Só no Globoplay"]
...                         btnNextsonogloboplay=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[19]/div/div[2]/div[3]/div
...                         trilho_artes=xpath://h2[text()="Artes"]
...                         btnNextartes=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[20]/div/div[2]/div[3]/div
...                         trilho_esportesradicais=xpath://h2[text()="Esportes Radicais"]
...                         btnNextesportesradicais=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[21]/div/div[2]/div[3]/div
...                         trilho_retratosdeumavida=xpath://h2[text()="Retratos de Uma Vida"]
...                         trilho_saude=xpath://h2[text()="Saúde"]
...                         btnNextsaude=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[23]/div/div[2]/div[3]/div
...                         trilho_cinema=xpath://h2[text()="Cinema"]
...                         btnNextcinema=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[24]/div/div[2]/div[3]/div
...                         trilho_diversidadeeidentidade=xpath://h2[text()="Diversidade e Identidade"]
...                         btnNextdiversidadeeidentidade=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[25]/div/div[2]/div[3]/div
...                         trilho_lancamentosmaisrecentes=xpath://h2[text()="Lançamentos mais recentes"]
...                         btnNextlancamentosmaisrecentes=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[2]/div/div[2]/div[3]/div
...                         trilho_noarnatvglobo=xpath://h2[text()="No ar na TV Globo"]
...                         trilho_noarnoVIVA=xpath://h2[text()="No ar no VIVA"]
...                         btnNextnoarnoVIVA=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[4]/div/div[2]/div[3]/div
...                         trilho_novelasestrangeiras=xpath://h2[text()="Novelas Estrangeiras"]
...                         btnNextnovelasestrangeiras=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[5]/div/div[2]/div[3]/div
...                         trilho_anos2020=xpath://h2[text()="Anos 2020"]
...                         btnNextanos2020=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[6]/div/div[2]/div[3]/div
...                         anos2015-2019=css:#app > div > div > div.application-controller__layout > div.application-controller__view > span > div > div > div > div:nth-child(7) > div > div.playkit-container > section > a > h2
...                         trilho_anos2015-2019=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Anos 2015-2019Veja mais')]
...                         btnNextanos2015-2019=xpath://div[@class='playkit-container']/section[@class='playkit-slider__header']//h2[contains(.,'Anos 2015-2019Veja mais')]/ancestor::div/div[@class='playkit-slider__container ']/div[@class='playkit-list__next playkit-list__always-show-navigation']/div
...                         trilho_anos2010-2014=xpath://h2[text()="Anos 2010-2014"]
...                         btnNextanos2010-2014=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[8]/div/div[2]/div[3]/div
...                         trilho_anos2000=xpath://h2[text()="Anos 2000"]
...                         btnNextanos2000=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[9]/div/div[2]/div[3]/div
...                         trilho_anos90=xpath://h2[text()="Anos 90"]
...                         btnNextanos90=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[10]/div/div[2]/div[3]/div
...                         trilho_anos70-80=xpath://h2[text()="Anos 70 e 80"]
...                         btnNextanos70-80=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[11]/div/div[2]/div[3]/div
...                         trilho_malhacao=xpath://h2[text()="Malhação"]
...                         btnNextmalhacao=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[12]/div/div[2]/div[3]/div
...                         trilho_memoriasdatv=xpath://h2[text()="Memória da TV"]
...                         btnNextmemoriasdatv=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[13]/div/div[2]/div[3]/div
...                         trilho_todasasnovelas=xpath://h2[text()="Todas as Novelas"]
...                         btnNexttodasasnovelas=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[14]/div/div[2]/div[3]/div
...                         trilho_paracriancasmaisvelhas=xpath://h2[text()="Para crianças mais velhas"]
...                         btnNextparacriancasmaisvelhas=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[2]/div/div[2]/div[3]/div
...                         trilho_acabaramdechegar=xpath://h2[text()="Acabaram de chegar"]
...                         btnNextacabaramdechegar=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[3]/div/div[2]/div[3]/div
...                         trilho_osmaisvistospelagalera!=xpath://h2[text()="Os mais vistos pela galera!"]
...                         btnNextosmaisvistospelagalera!=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[4]/div/div[2]/div[3]/div
...                         trilho_paracriancasmaisnovas=xpath://h2[text()="Para crianças mais novas"]
...                         btnNextparacriancasmaisnovas=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[5]/div/div[2]/div[3]/div
...                         trilho_filmes=xpath://h2[text()="Filmes"]
...                         btnNextfilmes=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[6]/div/div[2]/div[3]/div
...                         trilho_personagens=xpath://h2[text()="Personagens"]
...                         btnNextpersonagens=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[7]/div/div[2]/div[3]/div
...                         trilho_pokemon=xpath://h2[text()="Pokémon"]
...                         btnNextpokemon=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[8]/div/div[2]/div[3]/div
...                         trilho_mundodabarbie=xpath://h2[text()="Mundo da Barbie"]
...                         btnNextmundodabarbie=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[9]/div/div[2]/div[3]/div
...                         trilho_assistaaovivo=xpath://h2[text()="Assista ao Vivo"]
...                         trilho_heroisdolego=xpath://h2[text()="Heróis de Lego"]
...                         btnNextheroisdolego=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[11]/div/div[2]/div[3]/div
...                         trilho_mundodafantasia=xpath://h2[text()="Mundo da fantasia"]
...                         btnNextmundodafantasia=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[12]/div/div[2]/div[3]/div
...                         trilho_superpoderosos=xpath://h2[text()="Superpoderosos"]
...                         btnNextsuperpoderosos=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[13]/div/div[2]/div[3]/div
...                         trilho_trabalhoemequipe=xpath://h2[text()="Trabalho em equipe"]
...                         btnNexttrabalhoemequipe=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[14]/div/div[2]/div[3]/div
...                         trilho_episodioscurtos=xpath://h2[text()="Episódios curtos"]
...                         btnNextepisodioscurtos=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[15]/div/div[2]/div[3]/div
...                         trilho_personagensclassicos=xpath://h2[text()="Personagens clássicos"]
...                         btnNextpersonagensclassicos=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[17]/div/div[2]/div[3]/div
...                         trilho_animaisfalantes=xpath://h2[text()="Animais falantes"]
...                         btnNextanimaisfalantes=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[18]/div/div[2]/div[3]/div
...                         trilho_meninasnocomando=xpath://h2[text()="Meninas no comando"]
...                         btnNextmeninasnocomando=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[19]/div/div[2]/div[3]/div
...                         trilho_paraassistiremfamilia=xpath://h2[text()="Para assistir em família"]
...                         btnNextparaassistiremfamilia=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[20]/div/div[2]/div[3]/div
...                         trilho_vertodos=xpath://h2[text()="Ver todos"]
...                         btnNextvertodos=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[22]/div/div[2]/div[3]/div
...                         trilho_grandessucessos=xpath://h2[text()="Grandes sucessos"]
...                         btnNextgrandessucessos=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[3]/div/div[2]/div[3]/div
...                         trilho_maisassistidos=xpath://h2[text()="Mais assistidos"]
...                         btnNextmaisassistidos=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[5]/div/div[2]/div[3]/div
...                         trilho_assistafilmesaovivo=xpath://h2[text()="Assista Filmes Ao Vivo"]
...                         btnNextassistafilmesaovivo=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[6]/div/div[2]/div[3]/div
...                         trilho_romance=xpath://h2[text()="Romance"]
...                         btnNextromance=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[7]/div/div[2]/div[3]/div
...                         trilho_filmesexclusivos=xpath://h2[text()="Filmes exclusivos"]
...                         btnNextfilmesexclusivos=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[8]/div/div[2]/div[3]/div
...                         trilho_zumbis=xpath://h2[text()="Zumbis"]
...                         btnNextzumbis=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[11]/div/div[2]/div[3]/div
...                         trilho_tesourosparacinefilos=xpath://h2[text()="Tesouros para cinéfilos"]
...                         btnNexttesourosparacinefilos=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[12]/div/div[2]/div[3]/div
...                         trilho_cinelistdotelecine=xpath://h2[text()="Cinelists do Telecine"]
...                         btnNextcinelistdotelecine=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[13]/div/div[2]/div[3]/div
...                         trilho_novosclassicosbrasileiros=xpath://h2[text()="Novos clássicos brasileiros"]
...                         btnNextnovosclassicosbrasileiros=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[14]/div/div[2]/div[3]/div
...                         trilho_filmesnacionais=xpath://h2[text()="Filmes nacionais"]
...                         btnNextfilmesnacionais=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[15]/div/div[2]/div[3]/div
...                         trilho_jasaoclassicos= xpath://h2[text()="Já são clássicos"]
...                         btnNextjasaoclassicos=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[16]/div/div[2]/div[3]/div
...                         trilho_classicosdocinemabrasileiro=xpath://h2[text()="Clássicos do cinema brasileiro"]
...                         btnNextclassicosdocinemabrasileiro=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[17]/div/div[2]/div[3]/div
...                         trilho_infantil=xpath://h2[text()="Infantil"]
...                         btnNextinfantil=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[18]/div/div[2]/div[3]/div
...                         trilho_todososfilmes=xpath://h2[text()="Todos os filmes"]
...                         btnNexttodososfilmes=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[20]/div/div[2]/div[3]/div
...                         trilho_esportesaovivo=xpath://h2[text()="Esportes ao vivo"]
...                         btnNextesportesaovivo=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[2]/div/div[2]/div[3]/div
...                         trilho_copadomundo2022=xpath://h2[Text()="Copa do Mundo 2022"]
...                         btnNextcopadomundo2022=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[3]/div/div[2]/div[3]/div
...                         trilho_futebol=xpath://h2[text()="Futebol"]
...                         btnNextfutebol=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[4]/div/div[2]/div[3]/div
...                         trilho_globoesporte=xpath://h2[text()="Globo Esporte"]
...                         btnNextgloboesporte=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[5]/div/div[2]/div[3]/div
...                         trilho_lutas=xpath://h2[text()="Lutas"]
...                         btnNextlutas=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[6]/div/div[2]/div[3]/div
...                         trilho_noasfalto=xpath://h2[text()="No asfalto"]
...                         btnNextnoasfalto=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[7]/div/div[2]/div[3]/div
...                         trilho_nomar=xpath://h2[text()="No mar"]
...                         btnNextnomar=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[8]/div/div[2]/div[3]/div
...                         trilho_+esportes=xpath://h2[text()="+ esportes"]
...                         btnNext+esportes=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[9]/div/div[2]/div[3]/div
...                         trilho_documentarios=xpath://h2[text()="Documentários"]
...                         btnNextdocumentarios=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div/div[10]/div/div[2]/div[3]/div

&{Documentarios}
...                         btn=xpath://a[@title="Documentários"]

&{Novelas}
...                         btn=xpath://a[@title="Novelas"]

&{Infantil}
...                         btn=xpath://a[@title="Infantil"]

&{Realities}
...                         btn=xpath://a[@title="Realities"]

&{Filmes}
...                         btn=xpath://a[@title="Filmes"]

&{Series}
...                         btn=xpath://a[@title="Séries"]

&{BBB}
...                         btn=xpath://a[@title="BBB"]
...                         trilho_aovivonobbb22=xpath://h2[text()="Ao Vivo no BBB 22"]
...                         trilho_ultimasdobbb22=xpath://h2[text()="Últimas do BBB 22"]
...                         trilho_osmelhoresmomentosdafesta=xpath://h2[text()="Os Melhores Momentos da Festa"]
...                         trilho_bigterapia=xpath://h2[text()="Big Terapia"]
...                         trilho_clickbbb22=xpath://h2[text()="Click BBB 22"]
...                         trilho_participantespipoca=xpath://h2[text()="Participantes Pipoca"]
...                         trilho_participantescamarote=xpath://h2[text()="Participantes Camarote"]
...                         trilho_programasnaintegra=xpath://h2[text()="Programas na íntegra"]
...                         trilho_programasbbb=xpath://h2[text()="Programas BBB"]
...                         trilho_titulosmencionadospelosbrothersesisters=xpath://h2[text()="Títulos mencionados pelos brothers e sisters"]
...                         trilho_podcastssobreobbb22=xpath://h2[text()="Podcasts sobre o BBB 22"]
...                         trilho_omelhordobbb=xpath://h2[text()="O melhor do BBB"]

&{Variedades}
...                         btn=xpath://a[@title="Variedades"]
...                         tituloVariedades=xpath://h1[text()="Variedades"]
...                         LadyNight=css:a[title="Lady Night"]
...                         MaisVoce=css:a[title="Mais Você"]

&{Humor}
...                         btn=xpath://a[@title="Humor"]
...                         tituloHumor=xpath://h1[text()="Humor"]
...                         MultiTom=css:a[title="Multi Tom"]
...                         ChoquedeCulturaShow=css:a[title="Choque de Cultura Show"]

&{Musica}
...                         btn=xpath://a[@title="Música"]
...                         tituloMusica=xpath://h1[text()="Música"]
...                         PremioMultishow=css:a[title="Prêmio Multishow"]
...                         RobertoCarlosEspecial=css:a[title="Roberto Carlos Especial"]

&{Esportes}
...                         btn=xpath://a[@title="Esportes"]
...                         Esportes_EsporteEspetacular=css:a[title="Esporte Espetacular"]
...                         tituloEsportesTodosOsTitulos=xpath://h1[text()="Esportes - Todos os títulos"]

&{Jornalismo}
...                         btn=xpath://a[@title="Jornalismo"]
...                         tituloJornalismo=xpath://h1[text()="Jornalismo"]
...                         JornalDasDez=css:a[title="Jornal das Dez"]
...                         JornalNacional=css:a[title="Jornal Nacional"]

&{ProgramasLocais}
...                         btn=xpath://a[@title="Programas Locais"]
...                         tituloProgramasLocais=xpath://h1[text()="Programas Locais"]
...                         tituloAcre=xpath://*[text()="Acre"]
...                         tituloAlagoas=xpath://*[text()="Alagoas"]
...                         tituloAmapa=xpath://*[text()="Amapá"]
...                         tituloAmazonas=xpath://*[text()="Amazonas"]
...                         tituloBahia=xpath://*[text()="Bahia"]
...                         tituloCeara=xpath://*[text()="Ceará"]
...                         tituloDistritoFederal=xpath://*[text()="Distrito Federal"]
...                         tituloGrandeVitoria=xpath://*[text()="Grande Vitória, ES"]
...                         tituloEspiritoSanto=xpath://*[text()="Espírito Santo"]
...                         tituloGoias=xpath://*[text()="Goiás"]
...                         tituloMaranhao=xpath://*[text()="Maranhão"]
...                         tituloMatoGrosso=xpath://*[text()="Mato Grosso"]
...                         tituloMatoGrossoDoSul=xpath://*[text()="Mato Grosso Do Sul"]
...                         tituloMinasGerais=xpath://*[text()="Minas Gerais"]
...                         tituloParana=xpath://*[text()="Paraná"]
...                         tituloParaiba=xpath://*[text()="Paraíba"]
...                         tituloPara=xpath://*[text()="Pará"]
...                         tituloPernambuco=xpath://*[text()="Pernambuco"]
...                         tituloPiaui=xpath://*[text()="Piauí"]
...                         tituloRioGrandeDoNorte=xpath://*[text()="Rio Grande do Norte"]
...                         tituloRioGrandeDoSul=xpath://*[text()="Rio Grande do Sul"]
...                         tituloRioDeJaneiro=xpath://*[text()="Rio de Janeiro"]
...                         tituloRondonia=xpath://*[text()="Rondônia"]
...                         tituloRoraima=xpath://*[text()="Roraima"]
...                         tituloSantaCatarina=xpath://*[text()="Santa Catarina"]
...                         tituloSergipe=xpath://*[text()="Sergipe"]
...                         tituloSaoPaulo=xpath://*[text()="São Paulo"]
...                         tituloTocantins=xpath://*[text()="Tocantins"]