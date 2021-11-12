*Settings*
Documentation    Dados Cadastro Adm

*Keywords*

Login Admin

    Login With    admin@email.com    12345678

Go To CadAdmin Form

    Click    text=Usuários
    Click    text=Criar

    Get Text    text="Cadastrar usuário"

Submit CadastroAdm Form
    [Arguments]    ${DadosCad}



    # ${promise} = Promise To Upload File ${EXECDIR}/resources/fixtures/thumbnails/${DadosCad}[IMAGEM]
    # Click           \ #ID_DA_CLASSE
    # Wait For    ${promise}

    Fill Text    id=email                                                                  ${DadosCad}[email]
    Click        xpath=/html/body/div[1]/main/div/main/form/div/div/div[2]/span/div/div

    #VALIDAR LISTA SUSPENSA

    Click    text=Salvar

    #VALIDAR MENSAGEM DE CONFIRMAÇÃO;

Alert Email Shold Be

    ${element}                 Set Variable    css=input[error*="email válido"] 
    Wait For Elements State    ${element}      visible                              10 

Alert Permission Shold Be Required

    ${element}                 Set Variable    css=div[error*="opções"] 
    Wait For Elements State    ${element}      visible                              10 

Alert Invalid Email Shold Be

    ${element}                 Set Variable    css=input[error*="valid email"] 
    Wait For Elements State    ${element}      visible                              10 

Alert Phone Shold Be
    ${element}                  Set Variable    css=input[error*="telefone"]
    Wait For Elements State    ${element}      visible                             10

