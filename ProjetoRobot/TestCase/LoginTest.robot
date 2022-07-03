*** Settings ***
Resource    ../Pages/LoginPage.robot
Resource    ../Pages/SignUpPage.robot
Resource    ../Pages/ProfilePage.robot
Resource    ../Pages/FlightsPage.robot

Test Setup      Open Session
Test Teardown   Close Session

*** Test Cases ***
Realizar login com sucesso
    [Tags]      producao   loginSucesso
    Acessar o site principal
    Logar com login e senha corretos
    Deve ser redirecionado para a tela de produtos

Realizar registro de usuario
    [Tags]      homologacao   registro
    Acessar o site de registro
    Preencher as informações da tela
    Clicar em registrar

Realizar login com email inexistente
    [tags]      login   loginErro
    Acessar o site de principal
    Logar com login e senha incorreto
    Deve aparecer o erro de login

Alterar informacoes de usuario
    [tags]      atualizar   atualizacaoCadastral
    Acessar o site principal
    Logar com login e senha corretos
    Acessar tela de cadastro
    Realizar alteracao no cadastro
    Validar se alteracao foi realizada

Fazer busca de voo
    [tags]      busca   buscaVoo
    Acessar o site principal
    Logar com login e senha corretos
    Acessar a tela de busca
    Selecionar os itens
    Realizar busca
    Validar se busca foi realizada