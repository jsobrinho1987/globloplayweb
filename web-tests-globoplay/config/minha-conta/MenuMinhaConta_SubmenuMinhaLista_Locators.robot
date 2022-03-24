*** Settings ***
Documentation       Elementos mapeados presentes no submenu minha lista do menu minha conta
Library             SeleniumLibrary




*** Variables ***
&{SubmenuMinhaLista}
...                     page=class:page-categories_titulo
...                     last_title_add=xpath://*[@id="row_0"]/div[1]/div
...                     empty_list=class:empty-list
