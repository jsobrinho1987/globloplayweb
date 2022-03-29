*** Settings ***
Documentation       Elementos mapeados presentes no menu programas locais
Library             SeleniumLibrary
*** Variables ***

${url_explore}=         Get Location
# ${url_pod}=           Get Location

&{pageExplore}
...                     aba_categoria=xpath://a[contains(.,'Categorias')]
...                     categorias_lista=CSS:nav[class="categories-list-view__offer"]
...                     novelas=CSS:a[title="Novelas"]
...                     series=CSS:a[title="Séries"]
...                     filmes=CSS:a[title="Filmes"]
...                     bbb=CSS:a[title="BBB"]
...                     infantil=CSS:a[title="Infantil"]
...                     realities=CSS:a[title="Realities"]
...                     documentarios=CSS:a[title="Documentários"]
...                     variedades=CSS:a[title="Variedades"]
...                     humor=CSS:a[title="Humor"]
...                     musica=CSS:a[title="Música"]
...                     esportes=CSS:a[title="Esportes"]
...                     jornalismo=CSS:a[title="Jornalismo"]
...                     programas_locais=CSS:a[title="Programas Locais"]

&{MenuExplore}
...                     btn=xpath://nav[text()="Explore"]
...                     textoConteudoExclusivo=xpath://*[text()="Conteúdo exclusivo "]
...                     textoAssinatura=xpath://*[text()="Os 19 canais + amados da TV por assinatura"]
...                     textoContaGlobo=xpath://*[text()="Uma só conta para o Globoplay e todos os produtos Globo"]
...                     btnAssista=xpath://*[@id="app"]/div/div/div[1]/div[2]/span/div/div/div[1]/div/div[2]/div/div[4]/span[1]/span/span[1]/a
...                     btnConhecaOPlano=xpath://*[@class="media-cover__button-large-screen"]
...                     btnEuQuero=xpath://*[text()="EU QUERO"]

&{Frame.ContaGlobo}               
...                     frame_contaglobo=xpath://*[@id="globoid-modal-container"]/div[1]/iframe
