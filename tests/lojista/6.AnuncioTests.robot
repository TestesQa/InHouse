*Settings*
Documentation    Testes Anuncio

Resource    ${EXECDIR}/resources/Base.robot

Suite Setup      Start Session
Test Teardown    Finish Test

*Test Cases*
Criar Anuncio
    [Tags]  CriarAnuncio
    ${DadosLojista}     Get DadosLojista  CriarAnuncio

    Login Lojista
    Ir Para Anuncio
    Criar Anuncio   ${DadosLojista}
    Alert Cadastro com sucesso

Alterar Anuncio
    [Tags]  AlterarAnuncio
    ${DadosLojista}     Get DadosLojista  AlterarAnuncio

    Login Lojista
    Ir Para Anuncio
    Alterar Anuncio  ${DadosLojista}
    Alert Atualizado com sucesso

Excluir Anuncio
    [Tags]  ExcluirAnuncio

    Login Lojista
    Ir Para Anuncio
    Excluir Anuncio
    Alert Delete com sucesso


