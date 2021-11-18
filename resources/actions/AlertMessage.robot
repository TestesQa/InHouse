*Settings*
Documentation    MESSAGE ALERTS TEXT

*Keywords*

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

Alert Form Null
    ${Name}        Set Variable    css=input[error*="informe o nome"]
    ${CPF}         Set Variable    css=input[error*="CPF válido"]
    ${Email}       Set Variable    css=input[error*="email válido"]
    ${DataNasc}    Set Variable    css=input[error*="informe a data de nascimento"]
    ${Telefone}    Set Variable    css=input[error*="informe um telefone"]

    Wait For Elements State    ${Name}        visible    10
    Wait For Elements State    ${CPF}         visible    10
    Wait For Elements State    ${Email}       visible    10
    Wait For Elements State    ${DataNasc}    visible    10
    Wait For Elements State    ${Telefone}    visible    10

Alert CPF Incompleto
    ${CPF}    Set Variable    css=input[error*="CPF válido"]

    Wait For Elements State    ${CPF}    visible    10

Alert Email Shold Be

    ${element}                 Set Variable    css=input[error*="email válido"] 
    Wait For Elements State    ${element}      visible                              10 

Alert Permission Shold Be Required

    ${element}                 Set Variable    css=div[error*="opções"] 
    Wait For Elements State    ${element}      visible                      10 

Alert Invalid Email Shold Be

    ${element}                 Set Variable    css=input[error*="email válido"] 
    Wait For Elements State    ${element}      visible                              10 

Alert Phone Shold Be
    ${element}                 Set Variable    css=input[error*="telefone"]
    Wait For Elements State    ${element}      visible                         10

Alert Date Incomplet
    ${Date}                    Set Variable    css=input[error*="8 digitos"]
    Wait For Elements State    ${Date}         visible                               10
