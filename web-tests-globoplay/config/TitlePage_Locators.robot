*** Settings ***
Documentation       Elementos mapeados presentes na página de título
#Library             SeleniumLibrary




*** Variables ***
&{pageTitle}
...                     page=class:about.catchup_about__2YMd7
...                     episodios_button=class:gicon-episodios
...                     minhalista_button=class:gicon-minha_lista
...                     minhalista_adicionado_button=class:gicon-minha_lista_adicionado
...                     voltar_button=class:gicon-back.back.with-border-radius
...                     title_name=tag:h1
...                     assistir=class:gicon-play

&{pageEpisodio}
...                     tag_assinante=class:subscriber-tag
...                     episodio=class:episode-card_title__jLpGg