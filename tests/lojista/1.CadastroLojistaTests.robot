*Settings*
Documentation    Testes Dados cadastrais Lojista

Resource    ${EXECDIR}/resources/Base.robot

Suite Setup      Start Session
Test Teardown    Finish Test

*Test Cases*
Atualizar dados Minha Conta
    [Tags]  AtualizarMinhaConta

    Login With  shopmanager@email.com  12345678
    Sleep   2
    Ir para Minha Conta
    Atualizar Dados Lojista
    Alert Atualizado com sucesso