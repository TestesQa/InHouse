*Settings*
Documentation    Testes Dados cadastrais Lojista

Resource    ${EXECDIR}/resources/Base.robot

Suite Setup      Start Session
Test Teardown    Finish Test

*Test Cases*
Cadastra Fornecedor
    [Tags]  CadastraFornecedor

    Login With  shopmanager@email.com  12345678

    Ir Para Fornecedor

