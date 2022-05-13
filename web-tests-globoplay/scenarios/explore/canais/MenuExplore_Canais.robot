*** Settings ***
Documentation   Validação dos elementos de Canais

# Default Tags    Ajuda  Minha Conta

# IMPORT DE VARIÁVEIS DE OUTROS ARQUIVOS
Resource            ${EXECDIR}/../../../environment.robot

# O QUE FAZER ANTES DA EXECUÇÃO DOS TESTES
Suite Setup         Before Suite

# O QUE FAZER ANTES DE CADA UM DOS TESTES - ABRIR NAVEGADOR
Test Setup          Before Scenario

# O QUE FAZER APÓS CADA UM DOS TESTES - FECHAR NAVEGADOR
Test Teardown       After Scenario

*** Test Case ***
# Localizar o título "Assista ao vivo" em Canais
Acessar "Canais" pelo Menu Explore e localizar o título "Assista ao vivo" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  Então o título "Assista ao vivo" deve estar visível

# Localizar o título "Canais" em Canais
Acessar "Canais" pelo Menu Explore e localizar o título "Canais" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  Então o título "Canais" deve estar visível

# Redirecionar a página para "TV Globo" no "Agora na TV" através de Canais
Acessar a TV Globo no "Assista ao vivo" em "Canais" e ser redirecionado para o "Agora na TV" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "TV Globo" no "Assista ao vivo"
  Então devo ser redirecionado para a página "TV Globo" no "Agora na TV"

# Redirecionar a página para "Multishow" no "Agora na TV" através de Canais
Acessar o Multishow no "Assista ao vivo" em "Canais" e ser redirecionado para a página de assinatura com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Multishow" no "Assista ao vivo"
  Então devo ser redirecionado para a página de assinatura

# Redirecionar a página para "Globonews" no "Agora na TV" através de Canais
Acessar a Globonews no "Assista ao vivo" em "Canais" e ser redirecionado para a página de assinatura com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Globonews" no "Assista ao vivo"
  Então devo ser redirecionado para a página de assinatura

# Redirecionar a página para "SporTV" no "Agora na TV" através de Canais
Acessar o SporTV no "Assista ao vivo" em "Canais" e ser redirecionado para a página de assinatura com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "SporTV" no "Assista ao vivo"
  Então devo ser redirecionado para a página de assinatura

# Redirecionar a página para "GNT" no "Agora na TV" através de Canais
Acessar o GNT no "Assista ao vivo" em "Canais" e ser redirecionado para a página de assinatura com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "GNT" no "Assista ao vivo"
  Então devo ser redirecionado para a página de assinatura

# Redirecionar a página para "VIVA" no "Agora na TV" através de Canais
Acessar o VIVA no "Assista ao vivo" em "Canais" e ser redirecionado para a página de assinatura com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "VIVA" no "Assista ao vivo"
  Então devo ser redirecionado para a página de assinatura

# Redirecionar a página para "Gloob" no "Agora na TV" através de Canais
Acessar o Gloob no "Assista ao vivo" em "Canais" e ser redirecionado para a página de assinatura com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Gloob" no "Assista ao vivo"
  Então devo ser redirecionado para a página de assinatura

# Redirecionar a página para "Gloobinho" no "Agora na TV" através de Canais
Acessar o Gloobinho no "Assista ao vivo" em "Canais" e ser redirecionado para a página de assinatura com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Gloobinho" no "Assista ao vivo"
  Então devo ser redirecionado para a página de assinatura

# Redirecionar a página para "Megapix" no "Agora na TV" através de Canais
Acessar o Megapix no "Assista ao vivo" em "Canais" e ser redirecionado para a página de assinatura com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Megapix" no "Assista ao vivo"
  Então devo ser redirecionado para a página de assinatura

# Redirecionar a página para "Universal TV" no "Agora na TV" através de Canais
Acessar o Universal TV no "Assista ao vivo" em "Canais" e ser redirecionado para a página de assinatura com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Universal TV" no "Assista ao vivo"
  Então devo ser redirecionado para a página de assinatura

# Redirecionar a página para "Studio Universal" no "Agora na TV" através de Canais
Acessar o Studio Universal no "Assista ao vivo" em "Canais" e ser redirecionado para a página de assinatura com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Studio Universal" no "Assista ao vivo"
  Então devo ser redirecionado para a página de assinatura

# Redirecionar a página para "SYFY" no "Agora na TV" através de Canais
Acessar o SYFY no "Assista ao vivo" em "Canais" e ser redirecionado para a página de assinatura com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "SYFY" no "Assista ao vivo"
  Então devo ser redirecionado para a página de assinatura

# Redirecionar a página para "Canal Brasil" no "Agora na TV" através de Canais
Acessar o Canal Brasil no "Assista ao vivo" em "Canais" e ser redirecionado para a página de assinatura com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Canal Brasil" no "Assista ao vivo"
  Então devo ser redirecionado para a página de assinatura

# Redirecionar a página para "Canal Off" no "Agora na TV" através de Canais
Acessar o Canal Off no "Assista ao vivo" em "Canais" e ser redirecionado para a página de assinatura com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Canal Off" no "Assista ao vivo"
  Então devo ser redirecionado para a página de assinatura

# Redirecionar a página para "BIS" no "Agora na TV" através de Canais
Acessar o BIS no "Assista ao vivo" em "Canais" e ser redirecionado para a página de assinatura" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "BIS" no "Assista ao vivo"
  Então devo ser redirecionado para a página de assinatura

# Redirecionar a página para "Modo Viagem" no "Agora na TV" através de Canais
Acessar o Modo Viagem no "Assista ao vivo" em "Canais" e ser redirecionado para a página de assinatura com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Modo Viagem" no "Assista ao vivo"
  Então devo ser redirecionado para a página de assinatura

# Redirecionar a página para "Futura" no "Agora na TV" através de Canais
Acessar o Futura no "Assista ao vivo" em "Canais" e ser redirecionado para o "Agora na TV" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Futura" no "Assista ao vivo"
  Então devo ser redirecionado para a página "Futura" no "Agora na TV"

# Redirecionar a página para "Telecine Premium" no "Agora na TV" através de Canais
Acessar o Telecine Premium no "Assista ao vivo" em "Canais" e ser redirecionado para a página de assinatura com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Telecine Premium" no "Assista ao vivo"
  Então devo ser redirecionado para a página de assinatura do Telecine

# Redirecionar a página para "Telecine Action" no "Agora na TV" através de Canais
Acessar o Telecine Action no "Assista ao vivo" em "Canais" e ser redirecionado para a página de assinatura com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Telecine Action" no "Assista ao vivo"
  Então devo ser redirecionado para a página de assinatura do Telecine

# Redirecionar a página para "Telecine Touch" no "Agora na TV" através de Canais
Acessar o Telecine Touch no "Assista ao vivo" em "Canais" e ser redirecionado para a página de assinatura com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Telecine Touch" no "Assista ao vivo"
  Então devo ser redirecionado para a página de assinatura do Telecine

# Redirecionar a página para "Telecine Fun" no "Agora na TV" através de Canais
Acessar o Telecine Fun no "Assista ao vivo" em "Canais" e ser redirecionado para a página de assinatura com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Telecine Fun" no "Assista ao vivo"
  Então devo ser redirecionado para a página de assinatura do Telecine

# Redirecionar a página para "Telecine Pipoca" no "Agora na TV" através de Canais
Acessar o Telecine Pipoca no "Assista ao vivo" em "Canais" e ser redirecionado para a página de assinatura com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Telecine Pipoca" no "Assista ao vivo"
  Então devo ser redirecionado para a página de assinatura do Telecine

# Redirecionar a página para "Telecine Cult" no "Agora na TV" através de Canais
Acessar o Telecine Cult no "Assista ao vivo" em "Canais" e ser redirecionado para a página de assinatura com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Telecine Cult" no "Assista ao vivo"
  Então devo ser redirecionado para a página de assinatura do Telecine

# Redirecionar a página para "Premiere" no "Agora na TV" através de Canais
Acessar o Premiere no "Assista ao vivo" em "Canais" e ser redirecionado para a página de assinatura" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Premiere" no "Assista ao vivo"
  Então devo ser redirecionado para a página de assinatura do Premiere

# Redirecionar a página para "Combate" no "Agora na TV" através de Canais
Acessar o Combate no "Assista ao vivo" em "Canais" e ser redirecionado para a página de assinatura com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "Combate" no "Assista ao vivo"
  Então devo ser redirecionado para a página de assinatura do Combate

# Redirecionar a página para "CBN SP" no "Agora na TV" através de Canais
Acessar o CBN SP no "Assista ao vivo" em "Canais" e ser redirecionado para o "Agora na TV" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "CBN SP" no "Assista ao vivo"
  Então devo ser redirecionado para a página "CBN SP" no "Agora na TV"

# Redirecionar a página para "CBN RJ" no "Agora na TV" através de Canais
Acessar o CBN RJ no "Assista ao vivo" em "Canais" e ser redirecionado para o "Agora na TV" com um usuário anônimo
  Dado que sou um usuário anônimo
  E que estou na home
  Quando clicar no menu "Explore"
  E selecionar "Canais"
  E selecionar "CBN RJ" no "Assista ao vivo"
  Então devo ser redirecionado para a página "CBN RJ" no "Agora na TV"
