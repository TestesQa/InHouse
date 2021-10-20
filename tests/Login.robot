*Settings*
Documentation       Login Tests

Resource            ${EXECDIR}/resources/Base.robot

Test Setup          Start Session
Test Teardown       Finish Session

*Test Cases*
Fazer login

    Fill Text       id=email               shopmanager@email.com   
    Fill Text       id=password            12345678
    Click           text=Entrar

    Wait For Elements State         css=li[role="menuitem"]     visible     10      Login error


        


Senha incorreta
    [Tags]          pass
 

    Fill Text       id=email               shopmanager@email.com   
    Fill Text       id=password            123
    Click           text=Entrar

    Get Text        text= Ocorreu um erro, verifique suas credenciais e tente novamente
    
    #Wait For Elements State                css=.ant-message-custom-content ant-message-error        visible     10

Login em branco
Senha em branco
Ambos em branco
Email invalido
Limite    