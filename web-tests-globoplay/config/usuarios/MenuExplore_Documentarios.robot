*** Settings ***
Documentation       Elementos mapeados presentes no menu programas locais
Library             SeleniumLibrary
*** Variables ***

${url_explore}=         Get Location
${url_pod}=             Get Location

&{banner}
...                     acre=link:Acre
...                     alagoas=link:Alagoas
...                     bahia=link:Bahia
...                     amapa=link:Amapá
...                     amazonas=link:Amazonas
...                     ceara=link:Ceará


&{originais}
...                     acre=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     alagoas=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     amapa=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     amazonas=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     distrito_federal=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     maranhao=xpath://*[@id="root"]/div[4]/div/div/div[2]/div

&{podcasts}
...                     explore=CSS:nav.header__items>a:nth-last-of-type(1)
...                     pod=CSS:nav.categories-navigation>a:nth-last-of-type(2)
...                     originais=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     mais_ouvidos=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     novidades=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     jornalismo=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     esportes=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     sociedade_comportamento=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     jornalismo=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     cultura_pop=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     humor=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     negocios_finanças=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     ficção_historias=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     infantil=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     tecnologia=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     todos=xpath://*[@id="root"]/div[4]/div/div/div[2]/div


&{novidades}
...                     acre=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     alagoas=xpath://*[@id="root"]/div[4]/div/div/div[2]/div

&{filmes_mais_vistos}
...                     acre=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     alagoas=xpath://*[@id="root"]/div[4]/div/div/div[2]/div

&{biografias}
...                     acre=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     alagoas=xpath://*[@id="root"]/div[4]/div/div/div[2]/div

&{história}
...                     acre=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     alagoas=xpath://*[@id="root"]/div[4]/div/div/div[2]/div

&{ciencias}
...                     acre=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     alagoas=xpath://*[@id="root"]/div[4]/div/div/div[2]/div

&{crime}
...                     acre=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     alagoas=xpath://*[@id="root"]/div[4]/div/div/div[2]/div

&{cultura}
...                     acre=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     alagoas=xpath://*[@id="root"]/div[4]/div/div/div[2]/div

&{nacionais}
...                     acre=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     alagoas=xpath://*[@id="root"]/div[4]/div/div/div[2]/div

&{so_no_globoplay}
...                     acre=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     alagoas=xpath://*[@id="root"]/div[4]/div/div/div[2]/div

&{saude_bem_estar}
...                     acre=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     alagoas=xpath://*[@id="root"]/div[4]/div/div/div[2]/div

&{LGBTQIA+}
...                     acre=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     alagoas=xpath://*[@id="root"]/div[4]/div/div/div[2]/div

&{todos_documentarios}
...                     acre=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     alagoas=xpath://*[@id="root"]/div[4]/div/div/div[2]/div

&{premiados}
...                     acre=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     alagoas=xpath://*[@id="root"]/div[4]/div/div/div[2]/div

&{premiados}
...                     acre=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     alagoas=xpath://*[@id="root"]/div[4]/div/div/div[2]/div

&{documentarios_sobre_realeza}
...                     titulos=class:about

&{comportamento}
...                     titulos=class:about

&{musica}
...                     titulos=class:about

&{politica}
...                     titulos=class:about

&{artes}
...                     titulos=class:about
