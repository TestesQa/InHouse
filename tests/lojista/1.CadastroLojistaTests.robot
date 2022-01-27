*Settings*
Documentation    Testes Dados cadastrais Lojista

Resource    ${EXECDIR}/resources/Base.robot

Suite Setup      Start Session
Test Teardown    Finish Test

*Test Cases*
Atualizar dados Minha Conta
    [Tags]  AtualizarMinhaConta

    Login Lojista
    Sleep   2
    Ir para Minha Conta
    Atualizar Dados Lojista
    Alert Atualizado com sucesso