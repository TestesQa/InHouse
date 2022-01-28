*Settings*
Documentation    Testes Dados cadastrais Lojista

Resource    ${EXECDIR}/resources/Base.robot

Suite Setup      Start Session
Test Teardown    Finish Test

*Test Cases*
Cadastrar Loja
    [Tags]  CadastrarLoja
    ${DadosLojista}     Get DadosLojista  LojaCompleta

    Login Lojista
    Ir Para Cadastro de Loja
    Cadastrar Loja  ${DadosLojista}  
    Adicionar Logo  ${DadosLojista}
    sleep       5


   # Alert Cadastro com sucesso