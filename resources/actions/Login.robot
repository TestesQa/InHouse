*Settings*
Documentation    Login Actions


*Keywords*
Login With
    [Arguments]    ${email}    ${pass}

    Fill Text    id=email       ${email}    
    Fill Text    id=password    ${pass}
    Click        text=Entrar

Do logout
    Click    css=#root > main > div > main > header > div > span
    Click    text=Sair

User Shold Be Logged In
    Wait For Elements State    css=.anticon-home    visible    10

Alert Text Shold Be
    [Arguments]    ${expect_message}

    ${element}    Set Variable    css=.ant-message

    Wait For Elements State    ${element}    visible    5                    Login error
    Get Text                   ${element}    equal      ${expect_message}

Alert login Shold Be

    ${element}                 Set Variable    css=input[error="email must be a valid email"] 
    Wait For Elements State    ${element}      visible                                            10 

Alert login Shold Be Required

    ${element}                 Set Variable    css=input[error="email is a required field"] 
    Wait For Elements State    ${element}      visible                                          10 

Alert password Shold Be Required

    ${element}                 Set Variable    css=input[error="password is a required field"] 
    Wait For Elements State    ${element}      visible                                             10 