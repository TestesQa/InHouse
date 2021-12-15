*Settings*
Documentation    Dados Cadastro Adm

*Keywords*

Login Admin

    Login With    admin@email.com    12345678

Go To CadAdmin Form

    Click    text=Usuários
    Click    text=Gerenciar Administradores
    Click    text=Cadastrar

    Get Text    text="Cadastrar Administrador"

Submit CadastroAdm Form
    [Arguments]    ${DadosCad}

    # ${promise} = Promise To Upload File ${EXECDIR}/resources/fixtures/thumbnails/${DadosCad}[IMAGEM]
    # Click           \ #ID_DA_CLASSE
    # Wait For    ${promise}

    Fill Text    id=email                                               ${DadosCad}[email]
    Click        xpath=//*[@id="root"]/main/div/main/div/div/form/div[2]/div[2]/div/div/div/div
    Click        text=Usuário Super Admin
    Click        text=Salvar


    #VALIDAR MENSAGEM DE CONFIRMAÇÃO;
Validar Cadastro
    [Arguments]    ${DadosCad}

    ${Valida}    Set Variable    xpath=//*[@id="root"]/main/div/main/div/div[2]/div[1]/div

    Get Text    ${Valida}    contains    ${DadosCad}[email]

Check Submit
    [Arguments]    ${DadosCad}
    ${Cadastro}     Set Variable        css=.ant-message

    Wait For Elements State    ${Cadastro}    visible     5
    Get Text                   ${Cadastro}      contains    ${DadosCad}[email]
