*** Settings ***
Resource    ../Infra/base.robot

** Variables ***
${account_type}         //span[@class="selection"]/span
${first_name}           xpath://input[@placeholder="First Name"]
${last_name}            xpath://input[@placeholder="Last Name"]
${phone}                xpath://input[@placeholder="Phone"]
${email}                xpath://input[@placeholder="Email"]
${password}             xpath://input[@placeholder="Password"]
${bntSignUp}            xpath://button[./span[text()="Signup"]]
${btnCookies}           xpath://button[@id="cookie_stop"]


*** KeyWords ***
#funcoes
Selecionar Tipo
    [Arguments]     ${type}
    ${account_types}=   Get WebElement      xpath://li[text()=${type}]     
    Click Element       ${account_types}

Acessar o site de registro
    Ir Para  signup

Escrever nome
    ${Sortearnome}=    Sortear Nome
    Input Text  ${first_name}   ${Sortearnome}

Escrever sobrenome
    ${Sortearultimo_nome}=   Sortear Sobrenome
    Input Text  ${last_name}    ${Sortearultimo_nome}

Escrever telefone
    ${SortearTelefone}=     Sortear Telefone
    Input Text  ${phone}    ${SortearTelefone}

Escrever email
    ${SortearEmail}=   Montar Email
    Input Text  ${email}    ${SortearEmail}

Escrever senha
    ${SortearSenha}=    Sortear Senha
    Input Password  ${password}     ${SortearSenha}

Clicar Signup
    Wait until element is visible       ${bntSignUp} 
    Submit form


#passos
Preencher as informações da tela
    ${nome}=    Sortear Nome
    Escrever nome
    Escrever sobrenome
    Escrever telefone
    Escrever email
    Escrever senha
    Click button    ${btnCookies}
    Click Element   ${account_type}     
    Selecionar Tipo     "Agent"
    Sleep   5s
    

Clicar em registrar
    Clicar Signup
    Log To Console      Clicou
