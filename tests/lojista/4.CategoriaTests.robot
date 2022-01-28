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
    [Tags]  AlterarCategoria
    ${DadosLojista}     Get DadosLojista  AlterarCategoria

    Login Lojista
    Ir Para Categoria
    Alterar Categoria       ${DadosLojista}
    Alert Atualizado com sucesso

Excluir Categoria
    [Tags]  ExcluirCategoria

    Login Lojista
    Ir Para Categoria
    Deletar Categoria
    Alert Delete com sucesso
