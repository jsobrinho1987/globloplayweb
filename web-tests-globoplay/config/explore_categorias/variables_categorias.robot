*** Settings ***

Documentation    Elementos de Categorias
Library          SeleniumLibrary

*** Variables ***
# Variáveis estavam nomeadas como MenuExplore e foram alteradas; alterar no arquivo das keywords.
&{Categorias}
...                         tituloNovelas=xpath://h3[text()="Novelas"]
...                         tituloSeries=xpath://h3[text()="Séries"]
...                         tituloFilmes=xpath://h3[text()="Filmes"]
...                         tituloInfantil=xpath://h3[text()="Infantil"]
...                         tituloRealities=xpath://h3[text()="Realities"]
...                         tituloDocumentarios=xpath://h3[text()="Documentários"]
...                         tituloEsportes=xpath://h3[text()="Esportes"]
...                         footer=xpath://*[@class="footer-widget"]
...                         btnCategorias=xpath://a[text()="Categorias"]
...                         banner=xpath://*[@class="highlight__background__picture"]
...                         btnVejaMaisBanner=xpath://*[@class="playkit-buttons__button--upperCase"]
...                         btnAssineJaBanner=xpath://*[text()="Assine já"]
...                         btnVerTodos=xpath://h2[text()="Ver todos"]


&{Documentarios}
...                         btnDocumentarios=xpath://a[@title="Documentários"]
...                         btnTodosOsDocumentarios=xpath://h2[text()="Todos os documentários"]

&{Novelas}
...                         btnNovelas=xpath://a[@title="Novelas"]
...                         btnTodasAsNovelas=xpath://h2[text()="Todas as Novelas"]
...                         btnInfantil=xpath://a[@title="Infantil"]

&{Realities}
...                         btnRealities=xpath://a[@title="Realities"]

&{Filmes}
...                         btnFilmes=xpath://a[@title="Filmes"]
...                         btnTodosOsFilmes=xpath://h2[text()="Todos os filmes"]

&{Series}
...                         btnSeries=xpath://a[@title="Séries"]
...                         btnTodasAsSeries=xpath://h2[text()="Todas as séries"]

&{Variedades}
...                         btnVariedades=xpath://a[@title="Variedades"]
...                         tituloVariedades=xpath://h1[text()="Variedades"]
...                         Variedades_LadyNight=css:a[title="Lady Night"]
...                         Variedades_MaisVoce=css:a[title="Mais Você"]

&{Humor}
...                         btnHumor=xpath://a[@title="Humor"]
...                         tituloHumor=xpath://h1[text()="Humor"]
...                         Humor_MultiTom=css:a[title="Multi Tom"]
...                         Humor_ChoquedeCulturaShow=css:a[title="Choque de Cultura Show"]

&{Musica}
...                         btnMusica=xpath://a[@title="Música"]
...                         tituloMusica=xpath://h1[text()="Música"]
...                         Musica_PremioMultishow=css:a[title="Prêmio Multishow"]
...                         Musica_RobertoCarlosEspecial=css:a[title="Roberto Carlos Especial"]

&{Esportes}
...                         btnEsportes=xpath://a[@title="Esportes"]
...                         Esportes_EsporteEspetacular=css:a[title="Esporte Espetacular"]
...                         tituloEsportesTodosOsTitulos=xpath://h1[text()="Esportes - Todos os títulos"]

&{Jornalismo}
...                         btnJornalismo=xpath://a[@title="Jornalismo"]
...                         tituloJornalismo=xpath://h1[text()="Jornalismo"]
...                         Jornalismo_JornalDasDez=css:a[title="Jornal das Dez"]
...                         Jornalismo_JornalNacional=css:a[title="Jornal Nacional"]

&{ProgramasLocais}
...                         btnProgramasLocais=xpath://a[@title="Programas Locais"]
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
