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

    Wait For Elements State    text=Por favor, insira Nome/Razão social    visible    10
    Wait For Elements State    text=Por favor, insira E-mail               visible    10
    Wait For Elements State    text=Por favor, insira Telefone             visible    10
    Wait For Elements State    text=CPF/CNPJ inválido                      visible    10
    Wait For Elements State    text=Por favor, insira Nome Fantasia        visible    10
    Wait For Elements State    text=Por favor, insira País                 visible    10
    Wait For Elements State    text=Por favor, insira CEP                  visible    10
    Wait For Elements State    text=Por favor, insira Logradouro           visible    10
    Wait For Elements State    text=Por favor, insira Número               visible    10
    Wait For Elements State    text=Por favor, insira bairro               visible    10
    Wait For Elements State    text=Por favor, insira Cidade               visible    10
    Wait For Elements State    text=Por favor, insira Estado               visible    10

Alert Erro
    ${element}                 Set Variable    css=.ant-message 
    Wait For Elements State    ${element}      visible              10 
    Get Text                   ${element}      contains             Ocorreu um erro


Alert CPF Incompleto

    Wait For Elements State    text=Por favor, informe um CPF válido    visible    10

Alert Telefone Incompleto

    Wait For Elements State    text=Por favor, informe um telefone válido    visible    10

Alert Email Shold Be

    Wait For Elements State    text=Por favor, insira E-mail    visible    10

Alert Permission Shold Be Required

    Wait For Elements State    text=Por favor, insira Permissão    visible    10

Alert Invalid Email Shold Be

    Wait For Elements State    text=E-mail não é um email válido   visible    10

Alert Phone Shold Be

    Wait For Elements State    text=Por favor, insira Telefone    visible    10

Alert Phone Invalid Shold Be

    Wait For Elements State    text=Telefone deve possuir 11 caracteres    visible    10

Alert Date Incomplet

    Wait For Elements State    text=Por favor, informe uma data válida    visible    10

Alert Atualizado com sucesso
    ${atualiza}    Set Variable    css=.ant-message

    Wait For Elements State    ${atualiza}    visible     5             Atualização falhou
    Get Text                   ${atualiza}    contains    atualizado

Alert Delete com sucesso
    ${Excluir}    Set Variable    css=.ant-message

    Wait For Elements State    ${Excluir}    visible     5             delecao falhou
    Get Text                   ${Excluir}    contains    deletado com sucesso

Alert Cadastro com sucesso
    ${Sucesso}    Set Variable    css=.ant-message

    Wait For Elements State    ${Sucesso}    visible     5          Cadastro error
    Get Text                   ${Sucesso}    contains    sucesso    

Alert Form Null Cliente

    Wait For Elements State    text=Por favor, insira Nome Completo          visible    10
    Wait For Elements State    text=Por favor, informe um CPF válido         visible    10
    Wait For Elements State    text=Por favor, insira E-mail                 visible    10
    Wait For Elements State    text=A Data de nascimento requer 8 digitos    visible    10
    Wait For Elements State    text=Por favor, informe um telefone válido    visible    10

Alert Link Enviado
    ${Link}    Set Variable    css=.ant-message

    Wait For Elements State    ${Link}    visible     5          Erro Envio Link
    Get Text                   ${Link}    contains    enviado com sucesso  
