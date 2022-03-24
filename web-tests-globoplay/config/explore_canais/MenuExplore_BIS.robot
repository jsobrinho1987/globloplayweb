*** Settings ***
Documentation       Elementos mapeados presentes no menu programas locais

*** Variables ***
&{ProgramasLocais}
...                     acre=link:Acre
...                     alagoas=link:Alagoas
...                     bahia=link:Bahia
...                     amapa=link:Amapá
...                     amazonas=link:Amazonas
...                     ceara=link:Ceará
...                     distrito_federal=link:Distrito Federal
...                     espirito_santo=link:Espírito Santo
...                     maranhao=link:Maranhão
...                     mato_grosso=link:Mato Grosso
...                     mato_grosso_do_sul=link:Mato Grosso do Sul
...                     minas_gerais=link:Minas Gerais
...                     para=link:Pará
...                     paraiba=link:Paraíba
...                     parana=link:Paraná
...                     pernambuco=link:Pernambuco
...                     piaui=link:Piauí
...                     rio_de_janeiro=link:Rio de Janeiro
...                     rio_grande_do_norte=link:Rio Grande do Norte
...                     rio_grande_do_sul=link:Rio Grande do Sul
...                     rondonia=link:Rondônia
...                     roraima=link:Roraima
...                     santa_catarina=link:Santa Catarina
...                     sao_paulo=link:São Paulo
...                     sergipe=link:Sergipe
...                     tocantins=link:Tocantins

&{SubItem}
...                     acre=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     alagoas=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     amapa=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     amazonas=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     distrito_federal=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     maranhao=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     piaui=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     rio_grande_do_norte=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     rondonia=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     roraima=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     sergipe=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     tocantins=xpath://*[@id="root"]/div[4]/div/div/div[2]/div

#bahia
...                     feira_de_santana=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[1]
...                     itabuna=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[2]
...                     salvador=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[3]
...                     vitoria_da_conquista=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[4]

#Ceará
...                     fortaleza=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     juazeiro_do_norte=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[2]

#Espírito Santo
...                     grande_vitoria=xpath://*[@id="root"]/div[4]/div/div/div[2]/div

#Mato Grosso
...                     cuiaba=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     rondonopolis=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[2]
...                     sinop=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[3]
...                     tangara_da_serra=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[4]

#Mato Grosso do Sul
...                     campo_grande=xpath://*[@id="root"]/div[4]/div/div/div[2]/div
...                     corumba=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[2]
...                     ponta_pora=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[3]

#Minas Gerais
...                     bh_e_regiao=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[1]
...                     centro_oeste=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[2]
...                     grande_minas=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[3]
...                     sul_de_minas=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[4]
...                     uberaba=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[5]
...                     uberlandia_ituiutaba=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[6]
...                     vales_de_minas=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[7]
...                     zona_da_mata=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[8]

&{pará}
...                     belem_e_regiao=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[1]
...                     santarem_e_regiao=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[2]

#Paraíba
...                     campina_grande=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[1]
...                     joao_pessoa=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[2]

#Paraná
...                     cascavel=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[1]
...                     curitiba=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[2]
...                     foz_do_iguacu=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[3]
...                     guarapuava=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[4]
...                     londrina=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[5]
...                     maringa=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[6]
...                     paranavai=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[7]
...                     ponta_grossa=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[8]

#Pernambuco
...                     caruaru_e_regiao=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[1]
...                     petrolina_e_regiao=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[2]
...                     recife_e_regiao=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[3]

#Rio de Janeiro
...                     norte_fluminense=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[1]
...                     regiao_dos_lagos=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[2]
...                     rj_e_regiao=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[3]
...                     sul_e_costa_verde=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[4]

#Rio Grande do Sul
...                     bage=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[1]
...                     caxias_do_sul=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[2]
...                     cruz_alta=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[3]
...                     erechim=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[4]
...                     passo_fundo=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[5]
...                     pelotas=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[6]
...                     porto_alegre=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[7]
...                     rio_grande=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[8]
...                     santa_cruz=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[9]
...                     santa_maria=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[10]
...                     santa_rosa=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[11]
...                     uruguaiana=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[12]

#Santa Catarina
...                     blumenau=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[1]
...                     chapeco=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[2]
...                     crisciuma=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[3]
...                     florianopolis=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[4]
...                     joinville=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[5]

#São Paulo
...                     bauru_marilia=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[1]
...                     campinas_regiao=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[2]
...                     itapetininga_regiao=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[3]
...                     mogi_suzano=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[4]
...                     presidente_prudente_regiao=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[5]
...                     ribeirao_franca=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[6]
...                     rio_preto_aracatuba=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[7]
...                     santos_regiao=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[8]
...                     sao_carlos_araraquara=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[9]
...                     sao_paulo_regiao=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[10]
...                     sorocaba_jundiai=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[11]
...                     vale_paraiba_regiao=xpath://*[@id="root"]/div[4]/div/div/div[2]/div[12]

&{SubItem_Titulos}
...                     titulos=class:about
