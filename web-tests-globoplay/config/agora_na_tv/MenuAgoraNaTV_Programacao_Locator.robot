*** Settings ***
Documentation       Elementos mapeados presentes na tela de programação (EPG) no menu Agora na TV
Library             SeleniumLibrary




*** Variables ***
&{EPG}
...             epg_info=class:epg-detail
