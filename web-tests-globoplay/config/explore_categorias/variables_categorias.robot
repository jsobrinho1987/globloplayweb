*** Settings ***

Documentation    Elementos de Categorias
Library          SeleniumLibrary

*** Variables ***
&{Categorias}
...                         tituloNovelas=xpath://h3[text()="Novelas"]
...                         tituloSeries=xpath://h3[text()="Séries"]
...                         tituloFilmes=xpath://h3[text()="Filmes"]
...                         tituloInfantil=xpath://h3[text()="Infantil"]
...                         tituloRealities=xpath://h3[text()="Realities"]
...                         tituloDocumentarios=xpath://h3[text()="Documentários"]
...                         tituloEsportes=xpath://h3[text()="Esportes"]
...                         btn=xpath://a[text()="Categorias"]
...                         banner=xpath://*/[@class="highlight__background__picture"]
...                         btnVejaMaisBanner=xpath://*[@class="playkit-buttons__button--upperCase"]
...                         btnAssineJaBanner=xpath://*[text()="Assine já"]
...                         btnVerTodos=xpath://h2[text()="Ver todos"]
...                         btnAssista=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div[1]/div/div[2]/div/div[4]/span[1]/span/span[1]/a


&{Documentarios}
...                         btn=xpath://a[@title="Documentários"]
...                         btnTodosOsDocumentarios=xpath://h2[text()="Todos os documentários"]

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

&{categoriasTrilho}
# dentro de novelas
...                         lancamentosmaisrecentes=xpath://h2[text()="Lançamentos mais recentes"]
...                         noarnatvglobo=xpath://h2[text()="No ar na TV Globo"]
...                         noarnoVIVA=xpath://h2[text()="No ar no VIVA"]
...                         novelasestrangeiras=xpath://h2[text()="Novelas Estrangeiras"]
...                         anos2020=xpath://h2[text()="Anos 2020"]
...                         anos2015-2019=xpath://h2[text()="Anos 2015-2019"]
...                         anos2010-2014=xpath://h2[text()="Anos 2010-2014"]
...                         anos2000=xpath://h2[text()="Anos 2000"]
...                         anos90=xpath://h2[text()="Anos 90"]
...                         anos70-80=xpath://h2[text()="Anos 70 e 80"]
...                         malhacao=xpath://h2[text()="Malhação"]
...                         memoriasdatv=xpath://h2[text()="Memória da TV"]
...                         todasasnovelas=xpath://h2[text()="Todas as Novelas"]
# dentro de séries
...                         escolhapelogenero=xpath://h2[text()="Escolha pelo gênero"]
...                         novidades=xpath://h2[text()="Novidades"]
...                         originaisgloboplay=xpath://h2[text()="Originais Globoplay"]
...                         comedia=xpath://h2[text()="Comédia"]
...                         acao=xpath://h2[text()="Ação"]
...                         seriesbrasileiras=xpath://h2[text()="Séries brasileiras"]
...                         exclusivogloboplay=xpath://h2[text()="Exclusivo Globoplay"]
...                         seriesmedicas=xpath://h2[text()="Séries médicas"]
...                         seriesdeepoca=xpath://h2[text()="Séries de época"]
...                         premiadas=xpath://h2[text()="Premiadas"]
...                         sessaonostalgia=xpath://h2[text()="Sessão nostalgia"]
...                         paraverrapidinho=xpath://h2[text()="Para ver rapidinho"]
...                         sucessosnogloboplay=xpath://h2[text()="Sucessos no Globoplay"]
...                         seriescompletas=xpath://h2[text()="Séries completas"]
...                         franquiasespin-offs=xpath://h2[text()="Franquias e spin-offs"]
...                         misterio=xpath://h2[text()="Mistério"]
...                         seriesdaglobo=xpath://h2[text()="Séries da Globo"]
...                         novastemporadas=xpath://h2[text()="Novas temporadas"]
...                         paraverdegraca=xpath://h2[text()="Para ver de graça"]
...                         faroeste=xpath://h2[text()="Faroeste"]
...                         podcasts=xpath://h2[text()="Podcasts"]
...                         todasasseries=xpath://h2[text()="Todas as séries"]
# dentro de filmes
...                         grandessucessos=xpath://h2[text()="Grandes sucessos"]
...                         maisassistidos=xpath://h2[text()="Mais assistidos"]
...                         assistafilmesaovivo=xpath://h2[text()="Assista Filmes Ao Vivo"]
...                         romance=xpath://h2[text()="Romance"]
...                         filmesexclusivos=xpath://h2[text()="Filmes exclusivos"]
...                         premiados=xpath://h2[text()="Premiados"]
...                         animes=xpath://h2[text()="Animes"]
...                         tesourosparacinefilos=xpath://h2[text()="Tesouros para cinéfilos"]
...                         cinelistdotelecine=xpath://h2[text()="Cinelists do Telecine"]
...                         novosclassicosbrasileiros=xpath://h2[text()="Novos clássicos brasileiros"]
...                         filmesnacionais=xpath://h2[text()="Filmes nacionais"]
...                         jasaoclassicos= xpath://h2[text()="Já são clássicos"]
...                         classicosdocinemabrasileiro=xpath://h2[text()="Clássicos do cinema brasileiro"]
...                         infantil=xpath://h2[text()="Infantil"]
...                         todososfilmes=xpath://h2[text()="Todos os filmes"]
# dentro de infantil
...                         sonogloboplay=xpath://h2[text()="Só no Globoplay"]
...                         acabaramdechegar=xpath://h2[text()="Acabaram de chegar"]
...                         osmaisvistospelagalera!=xpath://h2[text()="Os mais vistos pela galera!"]
...                         personagens=xpath://h2[text()="Personagens"]
...                         filmes=xpath://h2[text()="Filmes"]
...                         paracriancasmaisnovas=xpath://h2[text()="Para crianças mais novas"]
...                         mundodabarbie=xpath://h2[text()="Mundo da Barbie"]
...                         pokemon=xpath://h2[text()="Pokémon"]
...                         assistaaovivo=xpath://h2[text()="Assista ao Vivo"]
...                         heroisdolego=xpath://h2[text()="Heróis de Lego"]
...                         paracriancasmaisvelhas=xpath://h2[text()="Para crianças mais velhas"]
...                         superpoderosos=xpath://h2[text()="Superpoderosos"]
...                         trabalhoemequipe=xpath://h2[text()="Trabalho em equipe"]
...                         episodioscurtos=xpath://h2[text()="Episódios curtos"]
...                         personagensclassicos=xpath://h2[text()="Personagens clássicos"]
...                         animaisfalantes=xpath://h2[text()="Animais falantes"]
...                         meninasnocomando=xpath://h2[text()="Meninas no comando"]
...                         paraassistiremfamilia=xpath://h2[text()="Para assistir em família"]
...                         vertodos=xpath://h2[text()="Ver todos"]
# dentro de documentários
...                         filmesmaisvistos=xpath://h2[text()="Filmes mais vistos"]
...                         biografias=xpath://h2[text()="Biografias"]
...                         nacionais=xpath://h2[text()="Nacionais"]
...                         crimeeinvestigacao=xpath://h2[text()="Crime e Investigação"]
...                         historia=xpath://h2[text()="História"]
...                         lgbtqia+=xpath://h2[text()="LGBTQIA+"]
...                         cienciaetecnologia=xpath://h2[text()="Ciência e Tecnologia"]
...                         artes=xpath://h2[text()="Artes"]
...                         estilodevida=xpath://h2[text()="Estilo de Vida"]
...                         familiareal=xpath://h2[text()="Família Real"]
...                         questoessociais=xpath://h2[text()="Questões Sociais"]
...                         saude=xpath://h2[text()="Saúde"]
...                         diversidadeeidentidade=xpath://h2[text()="Diversidade e Identidade"]
...                         retratosdeumavida=xpath://h2[text()="Retratos de Uma Vida"]
...                         dirigidospormulheres=xpath://h2[text()="Dirigidos por Mulheres"]
...                         politica=xpath://h2[text()="Política"]
...                         cinema=xpath://h2[text()="Cinema"]
...                         meioambiente=xpath://h2[text()="Meio ambiente"]
...                         eduardocoutinho=xpath://h2[text()="Eduardo Coutinho"]
...                         musica=xpath://h2[text()="Música"]
...                         esportesradicais=xpath://h2[text()="Esportes Radicais"]
...                         esportes=xpath://h2[text()="Esportes"]

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