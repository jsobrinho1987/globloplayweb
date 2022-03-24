*** Settings ***
Documentation       Elementos mapeados presentes no menu minha conta
Library             SeleniumLibrary




*** Variables ***

&{MenuMinhaConta_Submenu}
...                     Perfil=link:Perfil
...                     MinhaLista=link:Minha lista
...                     MinhaConta=link:Minha conta
...                     Configuracoes=link:Configurações
...                     SobreSeuDispositivo=link:Sobre seu dispositivo
...                     Termos_e_politicas=link:Termos e políticas
...                     Ajuda=link:Ajuda


&{MenuMinhaConta_Perfil}
...                     foto_anonimo=class:gicon-conta
#...                     btnTrocarConta=xpath://*[@id="root"]/div/div[2]/div[2]/div/div[2]/a[1]
...                     btnTrocarConta=link:Trocar conta
...                     btnEntrar=link:Entrar
...                     btnOtherWayLogin=link:Outra forma de login
...                     btnLoginEmailNaTV=xpath://*[@id="root"]/div/div[2]/div[2]/div[2]
...                     loginCode=class:code
...                     urlAtivar=xpath://*[@id="root"]/div[2]/p[1]/span
...                     btnSair=link:Sair


&{MenuMinhaConta_Perfil_TrocarConta}
#...                     btnPular=xpath://*[@id="root"]/div/a/span
...                     btnPular=link:Pular
...                     btnSair=link:Sair
...                     user=xpath://*[@id="root"]/div/div/div/a[1]
...                     addUser=class:add-new-user-btn


&{MenuMinhaConta_Perfil_Logout}
...                     confirmar=link:Sim
...                     cancelar=link:Não