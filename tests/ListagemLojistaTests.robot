*Settings*
Documentation      Cadastro Cliente Teste

Resource            ${EXECDIR}/resources/Base.robot

Suite Setup         Start Session
Test Teardown       Finish Test

*Test Cases*
Logar
    Login Admin

Lista Vazia
    [Tags]      ListavaziaLojista

    #Login Admin
    Go To ListagemLojista
    List Null

Lista com Dados
    [Tags]      ListaComDadosLojista

    #Login Admin
    Go To ListagemLojista
    Lista com Dados

Lista com Filtro
    [Tags]      ListaComFiltroLojista

    ${DadosCad}     Get DadosCad  PreencheFiltroLojista

    #Login Admin
    Go To ListagemLojista
    Fill FiltroLojista  ${DadosCad}
    Search Filtro
Redireciona Cadastro
    [Tags]      DirecionaCadastroLojista

    #Login Admin
    Go To ListagemLojista
    Go to Cadastro

Limpa Filtro
    [Tags]      LimpaFiltroLojista
    ${DadosCad}     Get DadosCad  PreencheFiltroLojista

    #Login Admin
    Go To ListagemLojista
    Fill FiltroLojista  ${DadosCad}
    Clear Filtro