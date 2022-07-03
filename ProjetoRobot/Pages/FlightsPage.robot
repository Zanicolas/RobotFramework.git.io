*** Settings ***
Resource    ../Infra/base.robot

*** Variables ***
${txtFlyingFrom}            xpath://input[@id="autocomplete"]
${txtToDestination}         xpath://input[@id="autocomplete2"]
${btnSelect}                xpath://div[@data-index="0"]/div
${txtDate}                  xpath://input[@class="depart form-control"]
${btnPassengers}            xpath://a[@class="dropdown-toggle dropdown-btn waves-effect"]
${btnPlusAdults}            xpath://div[@class="dropdown-item adult_qty"]/div/div/div[@class="qtyInc"]
${btnPlusChilds}            xpath://div[@class="dropdown-item child_qty"]/div/div/div/i[@class="la la-plus"]
${btnSearchFly}             xpath://button[@id="flights-search"]
${BtnOnPageSearch}          xpath://button[@class="btn btn-primary btn-block theme-search-results-item-price-btn ladda waves-effect"]

*** KeyWords ***

Acessar a tela de busca
    Ir para     flights

Escolher passageiros
    Click Element           ${btnPassengers}
    Click Element           ${btnPlusAdults}
    Click Element           ${btnPlusChilds}

Selecionar os itens
    Input text          ${txtFlyingFrom}        GRU
    Click Element       ${btnSelect}
    Input text          ${txtToDestination}     JPA
    Click Element       ${btnSelect}
    Input text          ${txtDate}              15-07-2022
    Escolher passageiros

Realizar busca
    Click button    ${btnSearchFly}

Validar se busca foi realizada
    Sleep       5s
    Page Should Contain button   ${BtnOnPageSearch}

