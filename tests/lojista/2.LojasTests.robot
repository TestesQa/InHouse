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
    sleep       5
    Alert Cadastro com sucesso

#GERENCIAR LOJA
Atualizar Dados Loja
    [Tags]  AtualizarLoja
    ${DadosLojista}     Get DadosLojista  AtualizarLoja

    Login Lojista
    Gerenciar Loja
    Atualizar Dados Loja    ${DadosLojista}
    Alert Atualizado com sucesso


#Planograma
Criar Planograma
    [Tags]  CriarPlanograma
    ${DadosLojista}     Get DadosLojista  Planograma

    Login Lojista
    Gerenciar Loja
    Criar Planograma        ${DadosLojista}
    

Importar Planograma
Editar Planograma

#Transfencia
Criar Transferencia
Criar PickList
Excluir Transferencia
Atualizar Transferencia
Executar Transferencia

#Estoque
Atualizar Estoque

#Compras
Cadastrar Compra
Importar Compra
Importar Compra XML
Alterar Compra
Excluir Compra

#Vendas





