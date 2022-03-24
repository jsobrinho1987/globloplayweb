*** Settings ***
Documentation       Elementos mapeados presentes no menu programas locais

*** Variables ***
&{AgoraTv}
...                     agora_na_tv=xpath://*[@id="root"]/div[2]/div/a[3]
...                     btn_assistir=xpath://*[@id="root"]/div[2]/div/div/div[1]/div/div[2]/div

&{tags}
...						todos=xpath://*[contains(text(),"Todos")]
...                     filmes=xpath://*[contains(text(),"Filmes e Séries")]
...                     esportes=xpath://*[contains(text(),"Esportes")]
...                     jornalismo=xpath://*[contains(text(),"Jornalismo")]
...                     infantil=xpath://*[contains(text(),"Infantil")]
...                     maiscanais=xpath://*[contains(text(),"+Canais")]
...                     gratuitos=xpath://*[contains(text(),"Gratuitos")]

&{canal}
... 					megapix=xpath://*[@id="playkit-channels-navigation"]/div[2]/div[1]/div[4]/div/div[1]
...                     sportv=xpath://*[@id="playkit-channels-navigation"]/div[2]/div[1]/div[4]/div/div[1]
...                     globo=xpath://*[@id="playkit-channels-navigation"]/div[2]/div[1]/div[4]/div/div[1]
...                     gloob=xpath://*[@id="playkit-channels-navigation"]/div[2]/ul/li[1]/div/div[1]
...                     maiscanais=xpath://*[@id="playkit-channels-navigation"]/div[2]/div[1]/div[4]/div/div[1]
...                     gratuitos=xpath://*[@id="playkit-channels-navigation"]/div[2]/ul/li[1]/div
...                     todos=xpath://*[@id="playkit-channels-navigation"]/div[2]/div[1]/div[4]
...                     jornalismo=xpath://*[@id="playkit-channels-navigation"]/div[2]/ul/li[1]/div

&{text}
...                     msg1=xpath://*[contains(text(),"Conteúdo exclusivo")]
...                     msg2=xpath://*[contains(text(),"Aproveite")]
...                     msg3=//*[@id="root"]/div[2]/div/div/div[1]/div/div[1]/h1

&{image}
...                     xpath://*[@id="playkit-channels-navigation"]/div[2]/div[1]/div[4]/div/div[1]/div[1]/img

&{troca_canal}
...                     programacao=xpath://*[@id="playkit-channels-navigation"]/div[2]/div[1]/div[4]/div/div[3]
...                     title_epg_agora=xpath://*[contains(text(),"Agora")]
...                     channel=xpath://*[@id="playkit-channels-navigation"]/div[2]/div[1]/div[4]/div/div[1]

