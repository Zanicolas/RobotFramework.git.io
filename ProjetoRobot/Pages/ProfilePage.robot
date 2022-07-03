*** Settings ***
Resource    ../Infra/base.robot

*** Variables ***
${bntMyProfile}         xpath://*[@id="fadein"]/div[1]/div/div[3]/ul/li[4]/a/text()
${txtFirstname}         xpath://input[@name="firstname"]
${txtLastname}          xpath://input[@name="lastname"]
${btnUpdate}            xpath://button[@type="submit"]
${lblSucess}            xpath://div[@class="alert alert-success"]
${btnCookies}           xpath://button[@id="cookie_stop"]

*** Keywords ***
Escrever primeiroNome
    [Arguments]     ${firstname}
    input text      ${txtFirstname}     ${firstname}

Escrever ultimoNome
    [Arguments]     ${lastname}
    input text      ${txtLastname}      ${lastname}

Clicar botao update
    Wait until element is visible       ${btnUpdate} 
    Submit form

Realize alteracao
    [Arguments]     ${firstname}    ${lastname}
    Escrever primeiroNome       ${firstname}
    Escrever ultimoNome         ${lastname}
    Clicar botao update

Acessar tela de cadastro
    Ir Para  account/profile

Realizar alteracao no cadastro
    Click button    ${btnCookies}
    Realize alteracao       Nicolas  Zanatta

Validar se alteracao foi realizada
    Wait Until Page Contains Element    ${lblSucess}
    #Should End With     ${txtFirstname}     Nicolas