*Settings*
Documentation    Testes Dados cadastrais Lojista

Resource    ${EXECDIR}/resources/Base.robot

Suite Setup      Start Session
Test Teardown    Finish Test

*Test Cases*
Cadastrar Loja
    [Tags]  CadastrarLoja

    Login With  shopmanager@email.com  12345678
    Ir Para Cadastro de Loja