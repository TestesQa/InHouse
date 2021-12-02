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
    ${nullList}    Set Variable    xpath=/html/body/div[1]/main/div/main/div/span
    ${null}        Set Variable    A pesquisa retornou 0 administradore(s)

    Wait For Elements State    ${nullList}    visible    5          Login error
    Get Text                   ${nullList}    inequal    ${null}

Lista com Dados Lojista
    ${nullList}    Set Variable    xpath=/html/body/div[1]/main/div/main/div/span
    ${null}        Set Variable    A pesquisa retornou 0 lojista(s)

    Wait For Elements State    ${nullList}    visible    5          Login error
    Get Text                   ${nullList}    inequal    ${null}

Lista com Dados Cliente
    ${nullList}    Set Variable    xpath=/html/body/div[1]/main/div/main/div/span
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
    Get Text    text=Cadastrar Clientes

Clear Filtro
    Click       text=Limpar
    Get Text    id=email       equal    ${EMPTY}


Fill FiltroADM
    [Arguments]    ${DadosCad}

    Fill Text    id=email    ${DadosCad}[email]
    #Fill Text       Permissão

    Get Text    id=email    inequal    ${EMPTY}

Fill FiltroLojista
    [Arguments]    ${DadosCad}

    Fill Text    id=name     ${DadosCad}[name]
    Fill Text    id=email    ${DadosCad}[email]
    #Fill Text       Permissão

    Get Text    id=name     inequal    ${EMPTY}
    Get Text    id=email    inequal    ${EMPTY}

Fill FiltroCliente
    [Arguments]    ${DadosCad}

    Fill Text    id=name    ${DadosCad}[name]
    Fill Text    id=cpf     ${DadosCad}[CPF]
    #Fill Text       Permissão

    Get Text    id=name    inequal    ${EMPTY}
    Get Text    id=cpf     inequal    ${EMPTY}
Search Filtro

    Click         text=Pesquisar
    #VERIFICAR A COMPARAÇÂO
    ${compare}    Set Variable      @
    ${result}     Set Variable      xpath=/html/body/div[1]/main/div/main/div/div[2]/div[1]/div/div

    Wait For Elements State    ${result}    visible     5
    Get Text                   ${result}    contains    ${compare}





