*Settings*
Documentation       Login Tests

Resource            ${EXECDIR}/resources/Base.robot

Test Setup          Star Session
Test Teardown       Finish Session

*Test Cases*
User Login Logista

    Fill Text       id=email               shopmanager@email.com   
    Fill Text       id=password            12345678
    Click           text=Entrar

    Wait For Elements State         css=li[role="menuitem"]     visible     10      Login error    
