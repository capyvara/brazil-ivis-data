# brazil-ivis-data
Raw scrapings of IVIS (Plataforma Integrada de Vigilância em Saúde) from Ministry of Health of Brazil (Ministério da Saúde)

If you feel any data you need is missing, please open an issue here.

**Notice:** 
This repo is just a copy of the data available at the site and isn't responsible for it, please read their documentation.

Also, the site scrapping is a continuous and incremental process, and may introduce additional errors in the data, beware of that when analyzing it.

## Tables

### ivis_mortality_xxxxx.csv
Scrap of SIM deaths from the Excess Mortality Panel (Painel de Monitoramento de EXCESSO de Mortalidade) http://plataforma.saude.gov.br/coronavirus/mortalidade/

The portal provides the most up-to-date data on daily death count of SIM (Sistema de Informação de Mortalidade), this repo contain scrapped data from it.

Notice: 

These are only from natural causes, so to match data on SIM, filter: `CIRCOOBITO not empty and TIPOBITO is 2`

IVIS data is also has right censoring, altought to a less extent as it is more updated.

#### Comparison of SIM 2020 Partial vs SIM 2020 IVIS
SIM 2020-02-02 | IVIS 2020-05-03
![Comparison of Partial 2020 vs Ivis](https://i.imgur.com/RXXdnb7.png)

#### Other SIM sources

[Partial 2020 OpendataSUS](https://opendatasus.saude.gov.br/dataset/sistema-de-informacao-sobre-mortalidade) 

[Partial 2020 SVS](http://svs.aids.gov.br/dantps/centrais-de-conteudos/dados-abertos/sim/)

[2019 and before](http://tabnet.datasus.gov.br/cgi/deftohtm.exe?sim/cnv/obt10uf.def)

Daily entries, there are multiple sub-types, see below.

| name | type | notes |
|-----------------|---------|-----------------------------------------------------|
| date | date | yyyy-mm-dd |
| state | string | UF code |
| state_ibge_code | integer | state ibge code |
| city | string | [optional] city name |
| city_ibge_code | integer | [optional] city ibge code |
| deaths | integer | Number of deaths |
| created_at | datetime | yyyy-mm-dd hh:mm<br>approximated time the data was produced according to the server |

#### ivis_mortality_states.csv
Table for all the 27 brazilian states, from 2019-12-29

#### ivis_mortality_cities.csv
Table for all the brazilian cities over 100,000 population (2019), about 287 (no gender or age group), from 2019-12-29

## Changelog

## IBGE codes
https://www.ibge.gov.br/explica/codigos-dos-municipios.php

## Licensing
[Creative Commons Attribution ShareAlike](https://creativecommons.org/licenses/by-sa/4.0/)

Please mention the original source and this repo.

## More information, special thanks
- https://opendatasus.saude.gov.br/
- https://www.vitalstrategies.org/
- https://www.zenysis.com/ 

- Scrapping code is currently kept on a private repo to prevent abuse, but if you are a researcher and want access or more information, contact me at https://twitter.com/capyvara
