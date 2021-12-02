*Settings*
Documentation    Login Tests

Resource    ${EXECDIR}/resources/Base.robot

Suite Setup      Start Session
Test Teardown    Finish Test

*Test Cases*

Fazer login
    [Tags]    loginsucesso
    Login With                 shopmanager@email.com         12345678
    User Shold Be Logged In
    [Teardown]                 Take ScreenShot And Logout

Ambos em branco
    [Tags]    CamposVazios

    Click                               text=Entrar
    Alert login Shold Be Required
    Alert password Shold Be Required

Login em branco
    [Tags]    LoginVazio

    Login With                       ${EMPTY}    123
    Alert login Shold Be Required    

Senha incorreta
    [Tags]    Senhaincorreta

    Login With             shopmanager@gmail.com                                            123
    Alert Text Shold Be    Ocorreu um erro, verifique suas credenciais e tente novamente

Email invalido
    [Tags]    EmailInvalido

    Login With              shomanager@ssl    123
    Alert login Shold Be

# Recuperar Senha
#Sem funcionalidade ainda

#    [Tags]    Recuparasenha

#    Login With    admin@email.com

