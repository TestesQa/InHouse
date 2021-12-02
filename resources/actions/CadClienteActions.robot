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


    Fill Text    id=name         ${DadosCad}[Name]
    Fill Text    id=cpf          ${DadosCad}[CPF]
    Fill Text    id=email        ${DadosCad}[Email]
    Fill Text    id=dateBirth    ${DadosCad}[DataNasc]
    Fill Text    id=phone        ${DadosCad}[Telefone]



    # Click   xpath=/html/body/div[1]/main/div/main/form/footer/button[2]

    # Get Text    text="Cadastro realizado com sucesso"



