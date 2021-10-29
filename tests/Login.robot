*Settings*
Documentation    Login Tests

Resource    ${EXECDIR}/resources/Base.robot

Suite Setup      Start Session
Test Teardown    Finish Test

*Test Cases*

Fazer login
    [Tags]                     login
    Login With                 shopmanager@email.com         12345678
    User Shold Be Logged In
    [Teardown]                 Take ScreenShot And Logout

Senha incorreta
    [Tags]    pass

    Login With             shopmanager@gmail.com                                            123
    Alert Text Shold Be    Ocorreu um erro, verifique suas credenciais e tente novamente



Email invalido

    Login With              shomanager@ssl    123
    Alert login Shold Be

Login em branco

    Login With                       ${EMPTY}    123
    Alert login Shold Be Required    

Ambos em branco

    Login With                          ${EMPTY}    ${EMPTY}    
    Alert login Shold Be Required
    Alert password Shold Be Required

# Limite