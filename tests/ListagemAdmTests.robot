*Settings*
Documentation    Cadastro Cliente Teste

Resource    ${EXECDIR}/resources/Base.robot

Suite Setup      Start Session
Test Teardown    Finish Test

*Test Cases*

Logar
    Login Admin

Lista Vazia
    [Tags]    ListavaziaADM

    #Login Admin
    Go To ListagemAdm
    List Null ADM

Lista com Dados
    [Tags]    ListaComDadosADM

    #Login Admin
    Go To ListagemAdm
    Lista com Dados ADM

Lista com Filtro
    [Tags]    ListaComFiltroADM

    ${DadosCad}    Get DadosCad    PreencheFiltroADM

    #Login Admin
    Go To ListagemAdm
    Fill FiltroADM       ${DadosCad}
    Search Filtro

Redireciona Cadastro
    [Tags]    DirecionaCadastroADM

    #Login Admin
    Go To ListagemAdm
    Go to CadastroAdm

Limpa Filtro
    [Tags]         LimpaFiltroADM
    ${DadosCad}    Get DadosCad      PreencheFiltroADM

    #Login Admin
    Go To ListagemAdm
    Fill FiltroADM       ${DadosCad}
    Clear Filtro

