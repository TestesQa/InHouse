*Settings*
Documentation    Ações para cadastro de lojista

*Keywords*

Go To CadLojista

    Click    text=Usuários
    Click    xpath=/html/body/div[1]/main/div/aside/div[1]/div[2]/ul/li/ul/ul/li/ul/li[2]/ul/li[1]/span

    Get Text    text="Cadastrar Lojista"

Submit Form CadLojista
    [Arguments]    ${DadosCad}

    Fill Text    id=email    ${DadosCad}[email]
    Fill Text    id=phone    ${DadosCad}[phone]

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

