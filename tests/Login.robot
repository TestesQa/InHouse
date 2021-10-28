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

    # Wait For Elements State         css=li[role="menuitem"]     visible     10      Login error

    Get Text        text= Dashboard


        


Senha incorreta
    [Tags]          pass
 

    Fill Text       id=email               shopmanager@email.com   
    Fill Text       id=password            123
    Click           text=Entrar

    Get Text        text= Ocorreu um erro, verifique suas credenciais e tente novamente
    
   
Login em branco

    Fill Text       id=email                ${EMPTY}                
    Fill Text       id=password            123
    Click           text=Entrar

    Wait For Elements State         css=input[error="email is a required field"]     visible     10    

Ambos em branco

    Fill Text       id=email                ${EMPTY}                
    Fill Text       id=password             ${EMPTY}
    Click           text=Entrar

    Wait For Elements State         css=input[error="email is a required field"]        visible     10 
    Wait For Elements State         css=input[error="password is a required field"]        visible     10 


Email invalido

    Fill Text       id=email               test@akdjsk.                
    Fill Text       id=password            123
    Click           text=Entrar

    Wait For Elements State         css=input[error="email must be a valid email"]     visible     10 
# Limite    