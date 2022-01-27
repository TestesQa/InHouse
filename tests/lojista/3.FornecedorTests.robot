*Settings*
Documentation    Testes Loja

Resource    ${EXECDIR}/resources/Base.robot

Suite Setup      Start Session
Test Teardown    Finish Test

*Test Cases*
Cadastra Fornecedor
    [Tags]  CadastraFornecedor
    ${DadosLojista}     Get DadosLojista    FornecedorCompleto

    Login Lojista
    Ir Para Fornecedor
    Cadastrar Fornecedor Sucesso  ${DadosLojista}
    Alert Cadastro com sucesso   


