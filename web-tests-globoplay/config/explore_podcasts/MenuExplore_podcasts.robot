*** Settings ***
Documentation       Elementos mapeados presentes no menu programas locais
Library             SeleniumLibrary

*** Variables ***

${url_pod}=             Get Location
${url_originais}=       Get Location
${url_mao_armada}=      Get Location

&{podcasts}
...                     explore=CSS:nav.header__items>a:nth-last-of-type(1)
...                     pod=CSS:nav.categories-navigation>a:nth-last-of-type(2)
...                     lista=CSS:nav.header__items>a:nth-last-of-type(1)
...                     originais_globoplay=CSS:a[title="Originais Globoplay"]
...                     mais_ouvidos=CSS:a[title="Mais Ouvidos"]
...                     lançamentos_imperdiveis=CSS:a[title="Lançamentos Imperdíveis"]
...                     jornalismo=CSS:a[title="Jornalismo"]
...                     esportes=CSS:a[title="Esportes"]
...                     sociedade_comportamento=CSS:a[title="Sociedade e Comportamento"]
...                     cultura_pop_entretenimento=CSS:a[title="Cultura Pop e Entretenimento"]
...                     humor=CSS:a[title="Humor"]
...                     negocios_finanças=CSS:a[title="Negócios e Finanças"]
...                     ficção_historias=CSS:a[title="Ficção e Histórias"]
...                     infantil=CSS:a[title="Infantil"]
...                     tecnologia=CSS:a[title="Tecnologia"]
...                     todos_podcasts=CSS:a[title="Todos os Podcasts"]
...                     termos_politicas=CSS:div[class='footer-widget--long grid']

&{originais}
...                     lista=CSS:div[class="podcasts-grid"]
...                     mao_armada=CSS:a[title="À Mão Armada"]
...                     papo_parente=CSS:a[title="Papo de Parente"]
...                     republica_milicias=CSS:a[title="A República das Milícias"]
...                     abuso=CSS:a[title="Abuso"]
...                     pistoleiros=CSS:a[title="Pistoleiros"]

&{pod_mao_armada}
...                     grid=CSS:div[class="podcast-view__header"]
...                     grid_episodios=CSS:section[class="podcast-view__episodes"]
...                     play=CSS:article[class="episode-card"]
...                     aba_detalhes=CSS:button[aria-label="Aba: Detalhes"]
...                     aba_episodios=CSS:button[aria-label="Aba: Episódios"]
...                     conteudo_detalhes=CSS:section[class="podcast-details"]
...                     player=CSS:div[class="episode-card__player-container"]