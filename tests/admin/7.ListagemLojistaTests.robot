*Settings*
Documentation    Cadastro Cliente Teste

Resource    ${EXECDIR}/resources/Base.robot

Suite Setup      Start Session
Test Teardown    Finish Test

*Test Cases*
Logar
    Login Admin

# Lista Vazia
#     [Tags]    ListavaziaLojista

#     #Login Admin
#     Go To ListagemLojista
#     List Null Lojista

Lista com Dados
    [Tags]    ListaComDadosLojista

    #Login Admin
    Go To ListagemLojista
    Lista com Dados Lojista

Lista com Filtro
    [Tags]    ListaComFiltroLojista

    ${DadosCad}    Get DadosCad    PreencheFiltroLojista

    #Login Admin
    Go To ListagemLojista
    Fill FiltroLojista       ${DadosCad}
    Search Filtro            ${DadosCad}
Redireciona Cadastro
    [Tags]    DirecionaCadastroLojista

    #Login Admin
    Go To ListagemLojista
    Go to CadastroLojista

Limpa Filtro
    [Tags]         LimpaFiltroLojista
    ${DadosCad}    Get DadosCad          PreencheFiltroLojista

    #Login Admin
    Go To ListagemLojista
    Fill FiltroLojista       ${DadosCad}
    Clear Filtro