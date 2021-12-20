*Settings*
Documentation    Ações de listagem

*Keywords*

Go To ListagemAdm
    Click       text=Usuários
    Click       text=Gerenciar Administradores
    Get Text    text=Administradores

Go To ListagemLojista
    Click       text=Usuários
    Click       text=Gerenciar Lojistas
    Get Text    text=Lojistas

Go To ListagemCliente
    Click       text=Usuários
    Click       text=Gerenciar Clientes
    Get Text    text=Clientes

List Null ADM
    ${nullList}    Set Variable    xpath=/html/body/div[1]/main/div/main/div/span
    ${null}        Set Variable    A pesquisa retornou 0 administradore(s)

    Wait For Elements State    ${nullList}    visible    5          Login error
    Get Text                   ${nullList}    equal      ${null}

List Null Lojista
    ${nullList}    Set Variable    xpath=/html/body/div[1]/main/div/main/div/span
    ${null}        Set Variable    A pesquisa retornou 0 lojista(s)

    Wait For Elements State    ${nullList}    visible    5          Login error
    Get Text                   ${nullList}    equal      ${null}

List Null Cliente
    ${nullList}    Set Variable    xpath=/html/body/div[1]/main/div/main/div/span
    ${null}        Set Variable    A pesquisa retornou 0 cliente(s)

    Wait For Elements State    ${nullList}    visible    5          Login error
    Get Text                   ${nullList}    equal      ${null}

Lista com Dados ADM
    ${nullList}    Set Variable    xpath=//*[@id="root"]/main/div/main/div/div/div[3]/div
    ${null}        Set Variable    A pesquisa retornou 0 administradore(s)

    Wait For Elements State    ${nullList}    visible    5          Login error
    Get Text                   ${nullList}    inequal    ${null}

Lista com Dados Lojista
    ${nullList}    Set Variable    xpath=//*[@id="root"]/main/div/main/div/div/div[4]/div/div/div/div/div
    ${null}        Set Variable    A pesquisa retornou 0 lojista(s)

    Wait For Elements State    ${nullList}    visible    5          Login error
    Get Text                   ${nullList}    inequal    ${null}

Lista com Dados Cliente
    ${nullList}    Set Variable    xpath=//*[@id="root"]/main/div/main/div/div/div[4]/div/div/div/div/div
    ${null}        Set Variable    A pesquisa retornou 0 cliente(s)

    Wait For Elements State    ${nullList}    visible    5          Login error
    Get Text                   ${nullList}    inequal    ${null}

Go to CadastroAdm
    Click       text=Cadastrar
    Get Text    text=Cadastrar Administrador

Go to CadastroLojista
    Click       text=Cadastrar
    Get Text    text=Cadastrar Lojista

Go to CadastroCli
    Click       text=Cadastrar
    Get Text    text=Cadastrar Cliente

Clear Filtro
    Click       text=Limpar
    Get Text    id=email       equal    ${EMPTY}


Fill FiltroADM
    [Arguments]    ${DadosCad}

    Fill Text    id=email    ${DadosCad}[email]

    Get Text    id=email    inequal    ${EMPTY}

Fill FiltroLojista
    [Arguments]    ${DadosCad}

    Fill Text    id=name     ${DadosCad}[name]
    Fill Text    id=email    ${DadosCad}[email]


    Get Text    id=name     inequal    ${EMPTY}
    Get Text    id=email    inequal    ${EMPTY}

Fill FiltroCliente
    [Arguments]    ${DadosCad}

    Fill Text    id=name                                                                                               ${DadosCad}[name]
    Fill Text    xpath=//*[@id="root"]/main/div/main/div/div/div[1]/div/form/div[1]/div[2]/div/div[2]/div/div/input    ${DadosCad}[CPF]
    Fill Text    id=email                                                                                              ${DadosCad}[email]


    Get Text    id=name                                                                                               inequal    ${EMPTY}
    Get Text    xpath=//*[@id="root"]/main/div/main/div/div/div[1]/div/form/div[1]/div[2]/div/div[2]/div/div/input    inequal    ${EMPTY}
    Get Text    id=email                                                                                              inequal    ${EMPTY}

Search Filtro
    [Arguments]    ${DadosCad}

    Click    text=Pesquisar

    ${compare}    Set Variable    ${DadosCad}[email]
    ${result}     Set Variable    xpath=//*[@id="root"]/main/div/main/div/div/div[4]/div/div/div/div/div

    Wait For Elements State    ${result}    visible     5
    Get Text                   ${result}    contains    ${compare}





