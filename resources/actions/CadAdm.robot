*Settings*
Documentation    Dados Cadastro Adm

*Keywords*

Login Admin

    Login With    admin@email.com    12345678

Go To CadAdmin Form

    Click    text=Usuários
    Click    text=Gerenciar Administradores
    Click    xpath=/html/body/div/main/div/main/div/div[1]/a/button

    Get Text    text="Cadastrar Administrador"

Submit CadastroAdm Form
    [Arguments]    ${DadosCad}
    ${Cadastro}     Set Variable        css=.ant-message

    # ${promise} = Promise To Upload File ${EXECDIR}/resources/fixtures/thumbnails/${DadosCad}[IMAGEM]
    # Click           \ #ID_DA_CLASSE
    # Wait For    ${promise}

    Fill Text    id=email                                               ${DadosCad}[email]
    Click        xpath=//*[@id="root"]/main/div/main/form/div/div/div[2]/span/div/div/span[2]
    Click        text=Usuário Super Admin
    Click        text=Salvar

    Wait For Elements State    ${Cadastro}    visible     5
    Get Text                   ${Cadastro}      contains    ${DadosCad}[email]



    #VALIDAR MENSAGEM DE CONFIRMAÇÃO;
Validar Cadastro
    [Arguments]    ${DadosCad}

    ${Valida}    Set Variable    xpath=//*[@id="root"]/main/div/main/div/div[2]/div[1]/div

    Get Text    ${Valida}    contains    ${DadosCad}[email]
