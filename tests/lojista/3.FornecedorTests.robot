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

Importar Fornecedores
    [Tags]  ImportaFornecedor
    ${DadosLojista}     Get DadosLojista  FornecedorImport

    Login Lojista
    Ir Para Fornecedor
    Importar Arquivo  ${DadosLojista}
    Alert Cadastro com sucesso

Alterar Fornecedor
    [Tags]  AlterarFornecedor
    ${DadosLojista}     Get DadosLojista  AlterarFornecedor

    Login Lojista
    Ir Para Fornecedor
    Alterar Fornecedor      ${DadosLojista}
    Alert Atualizado com sucesso

Deletar Fornecedor
    [Tags]  DeletarFornecedor

    Login Lojista
    Ir Para Fornecedor
    Deletar Fornecedor
    #Alert Delete com sucesso