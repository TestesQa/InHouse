*Settings*
Documentation    MESSAGE ALERTS TEXT

*Keywords*

Alert Text Shold Be
    [Arguments]    ${expect_message}

    ${element}    Set Variable    css=.ant-message

    Wait For Elements State    ${element}    visible    5                    Login error
    Get Text                   ${element}    equal      ${expect_message}

Alert login Shold Be

    ${element}                 Set Variable    css=.ant-form-item-explain-error
    Wait For Elements State    ${element}      visible                             10 

Alert login Shold Be Required

    Wait For Elements State    text=Erro email na validação de campo    visible    10

Alert password Shold Be Required

    Wait For Elements State    text=Por favor, insira a senha!    visible    10

Alert Form Null

    Wait For Elements State    text=Por favor, insira Nome/Razão social    visible       10
    Wait For Elements State    text=Por favor, insira E-mail               visible       10
    Wait For Elements State    text=Por favor, insira Telefone             visible       10
    Wait For Elements State    text=CPF/CNPJ inválido                      visible       10
    Wait For Elements State    text=Por favor, insira Nome Fantasia        visible       10
    Wait For Elements State    text=Por favor, insira País                 visible       10
    Wait For Elements State    text=Por favor, insira CEP                  visible       10
    Wait For Elements State    text=Por favor, insira Logradouro           visible       10
    Wait For Elements State    text=Por favor, insira Número               visible       10
    Wait For Elements State    text=Por favor, insira bairro               visible       10
    Wait For Elements State    text=Por favor, insira Cidade               visible       10
    Wait For Elements State    text=Por favor, insira Estado               visible       10

Alert Erro
    ${element}                 Set Variable    css=.ant-message 
    Wait For Elements State    ${element}      visible              10 
    Get Text                   ${element}      contains             Ocorreu um erro


Alert CPF Incompleto
    ${CPF}    Set Variable    css=input[error*="11 digitos"]

    Wait For Elements State    ${CPF}    visible    10

Alert Telefone Incompleto
    ${CPF}    Set Variable    css=input[error*="11 digitos"]

    Wait For Elements State    ${CPF}    visible    10

Alert Email Shold Be

    Wait For Elements State    text=Por favor, insira E-mail    visible    10

Alert Permission Shold Be Required

    Wait For Elements State    text=Por favor, insira Permissão    visible    10

Alert Invalid Email Shold Be

    Wait For Elements State    text=E-mail não é um email válido    visible    10

Alert Phone Shold Be
   
    Wait For Elements State    text=Por favor, insira Telefone   visible    10

Alert Phone Invalid Shold Be
   
    Wait For Elements State    text=Telefone deve possuir 11 caracteres    visible    10

Alert Date Incomplet
    ${Date}                    Set Variable    css=input[error*="8 digitos"]
    Wait For Elements State    ${Date}         visible                          10

Alert Atualizado com sucesso
    ${atualiza}    Set Variable    css=.ant-message

    Wait For Elements State    ${atualiza}    visible     5             Login error
    Get Text                   ${atualiza}    contains    atualizado

Alert Cadastro com sucesso
    ${Sucesso}    Set Variable    css=.ant-message

    Wait For Elements State    ${Sucesso}    visible     5           Login error
    Get Text                   ${Sucesso}    contains    sucesso!    