*Settings*
Documentation    Ações de listagem

*Keywords*

Go To ListagemAdm
    Click       text=Usuários
    Click       xpath=/html/body/div[1]/main/div/aside/div[1]/div[2]/ul/li/ul/ul/li/ul/li[1]/ul/li[2]/span
    Get Text    text=Administradores

Go To ListagemLojista
    Click       text=Usuários
    Click       xpath=/html/body/div[1]/main/div/aside/div[1]/div[2]/ul/li/ul/ul/li/ul/li[2]/ul/li[2]/span
    Get Text    text=Lojistas

Go To ListagemCliente
    Click       text=Usuários
    Click       xpath=/html/body/div[1]/main/div/aside/div[1]/div[2]/ul/li/ul/ul/li/ul/li[3]/ul/li[2]/span
    Get Text    text=Clientes

List Null
    ${nullList}    Set Variable    xpath=/html/body/div[1]/main/div/main/div/span
    ${null}        Set Variable    text="A pesquisa retornou 0 administradores"

    Wait For Elements State    ${nullList}    visible    5          Login error
    Get Text                   ${nullList}    equal      ${null}

Lista com Dados
    ${nullList}    Set Variable    xpath=/html/body/div[1]/main/div/main/div/span
    ${null}        Set Variable    text="A pesquisa retornou 0 administradores"

    Wait For Elements State    ${nullList}    visible    5          Login error
    Get Text                   ${nullList}    inequal    ${null}

Go to Cadastro
    Click       text=Cadastrar
    Get Text    text=Cadastrar usuário

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





