*** Settings ***
Documentation       Elementos mapeados presentes no menu programas locais
Library             SeleniumLibrary
*** Variables ***

${url_explore}=         Get Location
# ${url_pod}=             Get Location

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
