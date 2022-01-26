*Settings*
Documentation    Login Actions


*Keywords*
Login With
    [Arguments]    ${email}    ${pass}

    Fill Text    id=email       ${email}    
    Fill Text    id=password    ${pass}
    Click        text=Entrar

Do logout
    Click    xpath=//*[@id="root"]/main/div/main/header/div[2]/span
    Click    text=Sair

User Shold Be Logged In
    Wait For Elements State    css=.anticon-home    visible    10

Recupera Senha Link
    [Arguments]    ${email}

    Click                      text=Esqueceu a senha?
    Wait For Elements State    text=Recupere sua senha    visible     5
    Fill Text                  id=email                   ${email}
    Click                      text=Enviar

