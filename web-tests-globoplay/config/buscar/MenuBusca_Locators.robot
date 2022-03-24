*** Settings ***
Documentation       Elementos mapeados presentes na tela de busca
Library             SeleniumLibrary




*** Variables ***
&{keyword_busca}
...                 a=xpath://*[@id="root"]/div/div[2]/div[2]/div/div[1]
...                 b=xpath://*[@id="root"]/div/div[2]/div[2]/div/div[2]
...                 c=xpath://*[@id="root"]/div/div[2]/div[2]/div/div[3]
...                 d=xpath://*[@id="root"]/div/div[2]/div[2]/div/div[4]
...                 e=xpath://*[@id="root"]/div/div[2]/div[2]/div/div[5]
...                 f=xpath://*[@id="root"]/div/div[2]/div[2]/div/div[6]
...                 g=xpath://*[@id="root"]/div/div[2]/div[2]/div/div[7]
...                 h=xpath://*[@id="root"]/div/div[2]/div[2]/div/div[8]
...                 i=xpath://*[@id="root"]/div/div[2]/div[2]/div/div[9]
...                 j=xpath://*[@id="root"]/div/div[2]/div[2]/div/div[10]
...                 k=xpath://*[@id="root"]/div/div[2]/div[2]/div/div[11]
...                 l=xpath://*[@id="root"]/div/div[2]/div[2]/div/div[12]
...                 m=xpath://*[@id="root"]/div/div[2]/div[2]/div/div[13]
...                 n=xpath://*[@id="root"]/div/div[2]/div[2]/div/div[14]
...                 o=xpath://*[@id="root"]/div/div[2]/div[2]/div/div[15]
...                 p=xpath://*[@id="root"]/div/div[2]/div[2]/div/div[16]
...                 q=xpath://*[@id="root"]/div/div[2]/div[2]/div/div[17]
...                 r=xpath://*[@id="root"]/div/div[2]/div[2]/div/div[18]
...                 s=xpath://*[@id="root"]/div/div[2]/div[2]/div/div[19]
...                 t=xpath://*[@id="root"]/div/div[2]/div[2]/div/div[20]
...                 u=xpath://*[@id="root"]/div/div[2]/div[2]/div/div[21]
...                 v=xpath://*[@id="root"]/div/div[2]/div[2]/div/div[22]
...                 w=xpath://*[@id="root"]/div/div[2]/div[2]/div/div[23]
...                 x=xpath://*[@id="root"]/div/div[2]/div[2]/div/div[24]
...                 y=xpath://*[@id="root"]/div/div[2]/div[2]/div/div[25]
...                 z=xpath://*[@id="root"]/div/div[2]/div[2]/div/div[26]
...                 zero=xpath://*[@id="root"]/div/div[2]/div[2]/div/div[27]
...                 um=xpath://*[@id="root"]/div/div[2]/div[2]/div/div[28]
...                 dois=xpath://*[@id="root"]/div/div[2]/div[2]/div/div[29]
...                 tres=xpath://*[@id="root"]/div/div[2]/div[2]/div/div[30]
...                 quatro=xpath://*[@id="root"]/div/div[2]/div[2]/div/div[31]
...                 cinco=xpath://*[@id="root"]/div/div[2]/div[2]/div/div[32]
...                 seis=xpath://*[@id="root"]/div/div[2]/div[2]/div/div[33]
...                 sete=xpath://*[@id="root"]/div/div[2]/div[2]/div/div[34]
...                 oito=xpath://*[@id="root"]/div/div[2]/div[2]/div/div[35]
...                 nove=xpath://*[@id="root"]/div/div[2]/div[2]/div/div[36]
...                 espaco=xpath://*[@id="root"]/div/div[2]/div[3]/div/div[1]

&{MenuBusca}
...                 resultado=class:search_rightSide__3MIT1
#...                 poster=xpath://*[@id="root"]/div/div[3]/div[1]/div/ul/li[1]/a/div/img
...                 poster=xpath://*[@id="root"]/div/div[3]/div/div/div[1]/div[3]/div/ul/li/a/div/img
...                 erro_busca=class:search_emptyWarning__2m8VW
#search_searchErrorSubtitle__1QkbD