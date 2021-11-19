*Settings*
Documentation      Cadastro Cliente Teste

Resource            ${EXECDIR}/resources/Base.robot

Suite Setup         Start Session
Test Teardown       Finish Test

*Test Cases*
Logar
    Login Admin

Lista Vazia
    [Tags]      ListavaziaCliente

    #Login Admin
    Go To ListagemCliente
    List Null

Lista com Dados
    [Tags]      ListaComDadosCliente

    #Login Admin
    Go To ListagemCliente
    Lista com Dados

Lista com Filtro
    [Tags]      ListaComFiltroCliente

    ${DadosCad}     Get DadosCad  PreencheFiltroCliente

    #Login Admin
    Go To ListagemCliente
    Fill FiltroCliente  ${DadosCad}
    Search Filtro

Redireciona Cadastro
    [Tags]      DirecionaCadastroCliente

    #Login Admin
    Go To ListagemCliente
    Go to Cadastro

Limpa Filtro
    [Tags]      LimpaFiltroCliente
    ${DadosCad}     Get DadosCad  PreencheFiltroCliente

    #Login Admin
    Go To ListagemCliente
    Fill FiltroCliente  ${DadosCad}
    Clear Filtro