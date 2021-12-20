*Settings*
Documentation    Ações do cadastro de cliente

*Keywords*

Go To CadCliente

    Click    text=Usuários
    Click    text=Gerenciar Clientes
    Click    text=Cadastrar

    Get Text    text="Cadastrar Cliente"

Submit Form Cliente

    [Arguments]    ${DadosCad}


    Fill Text    id=name                                                                            ${DadosCad}[Name]
    Fill Text    xpath=//*[@id="root"]/main/div/main/div/div/form/div[2]/div[2]/div[1]/div/input    ${DadosCad}[CPF]
    Fill Text    id=email                                                                           ${DadosCad}[Email]
    Fill Text    xpath=//*[@id="root"]/main/div/main/div/div/form/div[4]/div[2]/div[1]/div/input    ${DadosCad}[DataNasc]
    Fill Text    xpath=//*[@id="root"]/main/div/main/div/div/form/div[5]/div[2]/div[1]/div/input    ${DadosCad}[Telefone]

    Click       text=Salvar

    





