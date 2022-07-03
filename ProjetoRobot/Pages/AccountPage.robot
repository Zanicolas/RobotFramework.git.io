*** Settings ***
Resource    ../Infra/base.robot

*** Variables ***
${lblProducts}      xpath://h2[contains(text(),"Hi")]

*** Keywords ***
Verificar Label Products
    Wait Until Page Contains Element    ${lblProducts}
