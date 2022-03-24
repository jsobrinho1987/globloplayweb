*** Settings ***
Documentation       Elementos mapeados presentes na tela de login
Library             SeleniumLibrary




*** Variables ***
&{keyword_login_antigo}
...                 a=xpath://*[@id="root"]/div[2]/div[2]/div[2]/div/div[1]
...                 b=xpath://*[@id="root"]/div[2]/div[2]/div[2]/div/div[2]
...                 c=xpath://*[@id="root"]/div[2]/div[2]/div[2]/div/div[3]
...                 d=xpath://*[@id="root"]/div[2]/div[2]/div[2]/div/div[4]
...                 e=xpath://*[@id="root"]/div[2]/div[2]/div[2]/div/div[5]
...                 f=xpath://*[@id="root"]/div[2]/div[2]/div[2]/div/div[6]
...                 g=xpath://*[@id="root"]/div[2]/div[2]/div[2]/div/div[7]
...                 h=xpath://*[@id="root"]/div[2]/div[2]/div[2]/div/div[8]
...                 i=xpath://*[@id="root"]/div[2]/div[2]/div[2]/div/div[9]
...                 j=xpath://*[@id="root"]/div[2]/div[2]/div[2]/div/div[10]
...                 k=xpath://*[@id="root"]/div[2]/div[2]/div[2]/div/div[11]
...                 l=xpath://*[@id="root"]/div[2]/div[2]/div[2]/div/div[12]
...                 m=xpath://*[@id="root"]/div[2]/div[2]/div[2]/div/div[13]
...                 n=xpath://*[@id="root"]/div[2]/div[2]/div[2]/div/div[14]
...                 o=xpath://*[@id="root"]/div[2]/div[2]/div[2]/div/div[15]
...                 p=xpath://*[@id="root"]/div[2]/div[2]/div[2]/div/div[16]
...                 q=xpath://*[@id="root"]/div[2]/div[2]/div[2]/div/div[17]
...                 r=xpath://*[@id="root"]/div[2]/div[2]/div[2]/div/div[18]
...                 s=xpath://*[@id="root"]/div[2]/div[2]/div[2]/div/div[19]
...                 t=xpath://*[@id="root"]/div[2]/div[2]/div[2]/div/div[20]
...                 u=xpath://*[@id="root"]/div[2]/div[2]/div[2]/div/div[21]
...                 v=xpath://*[@id="root"]/div[2]/div[2]/div[2]/div/div[22]
...                 w=xpath://*[@id="root"]/div[2]/div[2]/div[2]/div/div[23]
...                 x=xpath://*[@id="root"]/div[2]/div[2]/div[2]/div/div[24]
...                 y=xpath://*[@id="root"]/div[2]/div[2]/div[2]/div/div[25]
...                 z=xpath://*[@id="root"]/div[2]/div[2]/div[2]/div/div[26]
...                 zero=xpath://*[@id="root"]/div[2]/div[2]/div[2]/div/div[27]
...                 um=xpath://*[@id="root"]/div[2]/div[2]/div[2]/div/div[28]
...                 dois=xpath://*[@id="root"]/div[2]/div[2]/div[2]/div/div[29]
...                 tres=xpath://*[@id="root"]/div[2]/div[2]/div[2]/div/div[30]
...                 quatro=xpath://*[@id="root"]/div[2]/div[2]/div[2]/div/div[31]
...                 cinco=xpath://*[@id="root"]/div[2]/div[2]/div[2]/div/div[32]
...                 seis=xpath://*[@id="root"]/div[2]/div[2]/div[2]/div/div[33]
...                 sete=xpath://*[@id="root"]/div[2]/div[2]/div[2]/div/div[34]
...                 oito=xpath://*[@id="root"]/div[2]/div[2]/div[2]/div/div[35]
...                 nove=xpath://*[@id="root"]/div[2]/div[2]/div[2]/div/div[36]
...                 ponto=xpath://*[@id="root"]/div[2]/div[2]/div[2]/div/div[37]
...                 underline=xpath://*[@id="root"]/div[2]/div[2]/div[2]/div/div[38]
...                 traco=xpath://*[@id="root"]/div[2]/div[2]/div[2]/div/div[39]
...                 arroba=xpath://*[@id="root"]/div[2]/div[2]/div[2]/div/div[40]
...                 ponto_com=xpath://*[@id="root"]/div[2]/div[2]/div[2]/div/div[41]
...                 ponto_br=xpath://*[@id="root"]/div[2]/div[2]/div[2]/div/div[42]
...                 arroba_globo_ponto_com=xpath://**[@id="root"]/div[2]/div[2]/div[3]/div/div[1]/div/span[2]
...                 apagar=xpath://*[@id="root"]/div[2]/div[2]/div[2]/div/div[44]
...                 maisculo=xpath://*[@id="root"]/div[2]/div[2]/div[1]/div/div[2]
...                 caracteres_especiais=xpath://*[@id="root"]/div[2]/div[2]/div[1]/div/div[3]


&{keyword_login_sdk}
...                 a=xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/div/div/div[1]
...                 b=xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/div/div/div[2]
...                 c=xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/div/div/div[3]
...                 d=xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/div/div/div[4]
...                 e=xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/div/div/div[5]
...                 f=xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/div/div/div[6]
...                 g=xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/div/div/div[7]
...                 h=xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/div/div/div[8]
...                 i=xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/div/div/div[9]
...                 j=xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/div/div/div[10]
...                 k=xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/div/div/div[11]
...                 l=xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/div/div/div[12]
...                 m=xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/div/div/div[13]
...                 n=xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/div/div/div[14]
...                 o=xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/div/div/div[15]
...                 p=xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/div/div/div[16]
...                 q=xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/div/div/div[17]
...                 r=xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/div/div/div[18]
...                 s=xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/div/div/div[19]
...                 t=xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/div/div/div[20]
...                 u=xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/div/div/div[21]
...                 v=xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/div/div/div[22]
...                 w=xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/div/div/div[23]
...                 x=xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/div/div/div[24]
...                 y=xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/div/div/div[25]
...                 z=xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/div/div/div[26]
...                 zero=xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/div/div/div[27]
...                 um=xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/div/div/div[28]
...                 dois=xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/div/div/div[29]
...                 tres=xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/div/div/div[30]
...                 quatro=xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/div/div/div[31]
...                 cinco=xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/div/div/div[32]
...                 seis=xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/div/div/div[33]
...                 sete=xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/div/div/div[34]
...                 oito=xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/div/div/div[35]
...                 nove=xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/div/div/div[36]
...                 ponto=xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/div/div/div[37]
...                 underline=xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/div/div/div[38]
...                 traco=xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/div/div/div[39]
...                 arroba=xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/div/div/div[40]
...                 ponto_com=xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/div/div/div[41]
...                 ponto_br=xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/div/div/div[42]
...                 arroba_globo_ponto_com=xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/ul[2]/div[1]
...                 apagar=xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/ul[2]/div[2]
...                 maisculo=xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/ul[1]/div[2]
...                 caracteres_especiais=xpath://*[@id="root"]/div/div[2]/div[1]/div[2]/div/ul[1]/div[3]


&{LoginApp_antigo}
...                 btnContinuar=class:login_action_button
...                 btnEntrar=class:login_action_button
...                 errorMessage=class:error-message


&{LoginApp_sdk}
...                 btnContinuar=class:login-email-password__bottom-bar__wrapper
...                 btnEntrar=class:login-email-password__bottom-bar__wrapper
