*Settings*
Documentation    Testes Produto

Resource    ${EXECDIR}/resources/Base.robot

Suite Setup      Start Session
Test Teardown    Finish Test

*Test Cases*
Cadastrar Produto Completo
    [Tags]  CadastrarProduto
    ${DadosLojista}     Get DadosLojista  ProdutoCompleto

    Login Lojista
    Ir Para Produto
    Cadastrar Produto Completo      ${DadosLojista}
    Alert Cadastro com sucesso

Cadastrar Produto Simples
    [Tags]  CadastroProdutoSimples
    ${DadosLojista}     Get DadosLojista  ProdutoSimples

    Login Lojista
    Ir Para Produto
    Cadastrar Produto Simples       ${DadosLojista}
    Alert Cadastro com sucesso

Editar Produto
    [Tags]  EditarProduto
    ${DadosLojista}     Get DadosLojista  EditarProduto

    Login Lojista
    Ir Para Produto
    Editar Produto      ${DadosLojista}
    Alert Atualizado com sucesso

Deletar Produto
    [Tags]  ExcluirProduto

    Login Lojista
    Ir Para Produto
    Excluir Produto
    Alert Delete com sucesso
