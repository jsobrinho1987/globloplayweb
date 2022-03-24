*** Settings ***
Documentation       Elementos mapeados presentes no menu explore
#Library             SeleniumLibrary




*** Variables ***
&{MenuExplore}
...                     btnExplore=link:Explore
...                     btnCategorias= xpath://*[@id="root"]/div[2]/div[1]/button[1]
...                     btnCanais= xpath://*[@id="root"]/div[2]/div[1]/button[2]

&{MenuExplore_Categorias}
...                     novelas= xpath://*[@id="grid-categories"]/div[1]/div/p
...                     series= xpath://*[@id="grid-categories"]/div[2]/div/p
...                     filmes= xpath://*[@id="grid-categories"]/div[3]/div/p
...                     infantil= xpath://*[@id="grid-categories"]/div[4]/div/p
...                     humor= xpath://*[@id="grid-categories"]/div[5]/div/p
...                     variedades= xpath://*[@id="grid-categories"]/div[6]/div/p
...                     realities= xpath://*[@id="grid-categories"]/div[7]/div/p
...                     musica= xpath://*[@id="grid-categories"]/div[8]/div/p
...                     documentarios= xpath://*[@id="grid-categories"]/div[9]/div/p
...                     jornalismo= xpath://*[@id="grid-categories"]/div[10]/div/p
...                     esportes= xpath://*[@id="grid-categories"]/div[11]/div/p
...                     programas_locais= xpath://*[@id="grid-categories"]/div[12]/div/p
