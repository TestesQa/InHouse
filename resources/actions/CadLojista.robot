*Settings*
Documentation    Ações para cadastro de lojista

*Keywords*

Go To CadLojista

    Click    text=Usuários
    Click    text=Gerenciar Lojistas
    Click    text=Cadastrar

    Get Text    text="Cadastrar Lojista"

Submit Form CadLojista
    [Arguments]    ${DadosCad}

    Fill Text    id=name     ${DadosCad}[nome]
    Fill Text    id=email    ${DadosCad}[email]
    Fill Text    xpath=//*[@id="root"]/main/div/main/div/div/form/div[3]/div[2]/div[1]/div/input    ${DadosCad}[phone]
    Fill Text    id=doc     ${DadosCad}[CPFCNPJ]
    Fill Text    id=tradingName  ${DadosCad}[fantasia]
    Fill Text      xpath=//*[@id="root"]/main/div/main/div/div/form/div[7]/div[2]/div[1]/div/input      ${DadosCad}[cep]
    Fill Text       id=address_street       ${DadosCad}[logradouro]
    Fill Text       id=address_number       ${DadosCad}[numero]
    Fill Text       id=address_city         ${DadosCad}[Cidade]



Dados Adicionais

    Click    css=div[tabindex="0"]

Submit Form CadLojistaCompleto
    [Arguments]    ${DadosCad}

    Fill Text    id=email          ${DadosCad}[email]
    Fill Text    id=phone          ${DadosCad}[phone]
    Fill Text    id=name           ${DadosCad}[name]
    Fill Text    id=doc            ${DadosCad}[doc]
    #Validar Lista Instituição Financeira
    Fill Text    id=bankAgency     ${DadosCad}[agencia]
    Fill Text    id=bankAccount    ${DadosCad}[conta]
    #Validar Lista TIPO PIX

