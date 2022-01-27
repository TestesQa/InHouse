*Settings*
Documentation    Testes Categoria

Resource    ${EXECDIR}/resources/Base.robot

Suite Setup      Start Session
Test Teardown    Finish Test

*Test Cases*
Cadasto Categoria
    [Tags]  CadastroCategoria
    ${DadosLojista}     Get DadosLojista    Categoria 

    Login Lojista
    Ir Para Categoria
    Cadastrar Categoria Sucesso     ${DadosLojista}
    Alert Cadastro com sucesso    

Cadastro Categoria 18+
    [Tags]  CadastroCategoria18+
    ${DadosLojista}     Get DadosLojista  Categoria18+

    Login Lojista
    Ir Para Categoria
    Cadastrar Categoria 18+     ${DadosLojista}
    Alert Cadastro com sucesso

Alterar Categoria
Excluir Categoria
