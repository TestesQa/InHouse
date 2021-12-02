*Settings*
Documentation    Login Actions


*Keywords*
Login With
    [Arguments]    ${email}    ${pass}

    Fill Text    id=email       ${email}    
    Fill Text    id=password    ${pass}
    Click        text=Entrar

Do logout
    Click    xpath=//*[@id="root"]/main/div/main/header/div
    Click    text=Sair

User Shold Be Logged In
    Wait For Elements State    css=.anticon-home    visible    10