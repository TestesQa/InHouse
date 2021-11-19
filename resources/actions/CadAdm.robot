*Settings*
Documentation    Dados Cadastro Adm

*Keywords*

Login Admin

    Login With    admin@email.com    12345678

Go To CadAdmin Form

    Click    text=Usuários
    Click    xpath=/html/body/div[1]/main/div/aside/div[1]/div[2]/ul/li/ul/ul/li/ul/li[1]/ul/li[1]/span

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

