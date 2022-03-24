*** Settings ***
Documentation       Elementos mapeados presentes nas telas referentes ao login externo
Library             SeleniumLibrary




*** Variables ***

&{LoginExterno_ContaGlobo}
...                     login=id:login
...                     password=id:password
...                     btnEnter=class:button.ng-scope
#...                     btnEnter=xpath://*[@id="login-form"]/div[6]/button
...                     btnCaptcha=id:vrecaptcha
...                     btnGoogle=class:social-network-button.google-button.ng-binding.ng-isolate-scope
...                     btnFacebook=class:social-network-button.facebook-button


#    TOKEN = (By.ID, 'user_code')
#    ATIVAR = (By.XPATH, '//*[@id="ng-app"]/main/div[2]/div/div[3]/div/form/button')

&{LoginExterno_ContaGoogle}
...                     login=id:identifierId
...                     password=name:password
...                     btnNext=id:identifierNext
...                     btnEnter=id:passwordNext


&{LoginExterno_ContaFacebook}
...                     login=id:email
...                     password=id:pass
...                     btnEnter=id:loginbutton


&{LoginExterno_AtivarDispositivo}
...                 UserCode=id:user_code
...                 btnAtivar=xpath://*[@id="ng-app"]/main/div[2]/div/div[3]/div/form/button
...                 DispositivoAtivado=class:cross-auth-container--logo
...                 btnSair=class:logout