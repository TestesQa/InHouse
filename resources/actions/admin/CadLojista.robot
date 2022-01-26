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

    Fill Text    id=name                                                                            ${DadosCad}[nome]
    Fill Text    id=email                                                                           ${DadosCad}[email]
    Fill Text    xpath=//*[@id="root"]/main/div/main/div/div/form/div[3]/div[2]/div[1]/div/input    ${DadosCad}[phone]
    Fill Text    id=doc                                                                             ${DadosCad}[CPFCNPJ]
    Fill Text    id=tradingName                                                                     ${DadosCad}[fantasia]
    Fill Text    xpath=//*[@id="root"]/main/div/main/div/div/form/div[7]/div[2]/div[1]/div/input    ${DadosCad}[cep]
    Fill Text    id=address_street                                                                  ${DadosCad}[logradouro]
    Fill Text    id=address_number                                                                  ${DadosCad}[numero]
    Fill Text    id=address_district                                                                ${DadosCad}[bairro]
    #Fill Text       id=address_city         ${DadosCad}[cidade]
    Click        id=address_country
    Click        css=div[title=Brasil]
    #Click           id=address_city
    #Click           css=div[title=DF]
    Click        text=Salvar

Submit Form CadLojistaCompleto
    [Arguments]    ${DadosCad}

    Fill Text    id=name                                                                                                ${DadosCad}[nome]
    Fill Text    id=email                                                                                               ${DadosCad}[email]
    Fill Text    xpath=//*[@id="root"]/main/div/main/div/div/form/div[3]/div[2]/div[1]/div/input                        ${DadosCad}[phone]
    Fill Text    id=doc                                                                                                 ${DadosCad}[CPFCNPJ]
    Fill Text    id=tradingName                                                                                         ${DadosCad}[fantasia]
    Fill Text    xpath=//*[@id="root"]/main/div/main/div/div/form/div[7]/div[2]/div[1]/div/input                        ${DadosCad}[cep]
    Fill Text    id=address_street                                                                                      ${DadosCad}[logradouro]
    Fill Text    id=address_number                                                                                      ${DadosCad}[numero]
    Fill Text    id=address_district                                                                                    ${DadosCad}[bairro]
    #Fill Text       id=address_city         ${DadosCad}[cidade]
    Click        id=address_country
    Click        css=div[title=Brasil]
    #Click           id=address_city
    #Click           css=div[title=DF]
    #Dados Bancarios
    Click        xpath=//*[@id="root"]/main/div/main/div/div/form/div[14]/div/div[1]
    Click        id=typePix
    Click        css=div[title=CPF]
    Fill Text    xpath=//*[@id="root"]/main/div/main/div/div/form/div[14]/div/div[2]/div/div[2]/div[2]/div/div/input    ${DadosCad}[pix]
    Click        id=financialInstitution
    Click        css=div[title=Santander]
    Fill Text    id=bankAgency                                                                                          ${DadosCad}[agencia]
    FIll Text    id=bankAccount                                                                                         ${DadosCad}[conta]
    Fill Text    id=municipalInscription                                                                                ${DadosCad}[estadual]
    Fill Text    id=stateInscription                                                                                    ${DadosCad}[municipal]
    Click        id=taxRegime
    Click        css=div[title=MEI]

    Click        text=Salvar
