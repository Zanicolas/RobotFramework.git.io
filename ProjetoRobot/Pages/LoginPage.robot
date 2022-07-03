*** Settings ***
Resource    ../Infra/base.robot
Resource    ./AccountPage.robot

*** Variables ***

${txtUsername}      //input[@placeholder="Email"]
${txtPassword}      //input[@placeholder="Password"]
${btnLogin}         //button[./span[text()="Login"]]
${lblFailed}=       //div[@class="alert alert-danger failed"]


*** Keywords ***
# Funçoes
Escrever login
    [Arguments]     ${username}     
    Input Text      ${txtUsername}      ${username}

Esrever senha
    [Arguments]     ${passoword}
    Input Text      ${txtPassword}      ${passoword}

Clicar botao login
    Click button    ${btnLogin}

Realize login
    [Arguments]     ${username}     ${passoword}

    Escrever login  ${username}
    Esrever senha  ${passoword}
    Clicar botao login

Verificar url erro
    Wait Until Page Contains Element    ${lblFailed}
    

# Passos

Acessar o site principal
    Log to console      Acessou a tela principal
    Ir Para     login

Logar com login e senha corretos
    Realize login       user@phptravels.com     demouser

Deve ser redirecionado para a tela de produtos
    Verificar Label Products

Acessar o site de principal
    Ir Para     login

Logar com login e senha incorreto
    Realize login      user@nicolasZanatta.com     demouser

Deve aparecer o erro de login
    Verificar url erro
