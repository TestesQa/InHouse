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
    Alert Cadastro com sucesso    

Importar Planograma
    [Tags]  ImportarPlanograma
    ${DadosLojista}     Get DadosLojista  ImportarPlanograma

    Login Lojista
    Gerenciar Loja
    Importar Planograma     ${DadosLojista}


Editar Planograma
    [Tags]  EditarPlanograma
    ${DadosLojista}     Get DadosLojista  EditarPlanograma

    Login Lojista
    Gerenciar Loja
    Editar Planograma       ${DadosLojista}
    Alert Atualizado com sucesso

Excluir Produto Planograma
    [Tags]  ExcluirPlanograma

    Login Lojista
    Gerenciar Loja
    Excluir Planograma
    Alert Delete com sucesso

#Transfencia
Criar Transferencia Manual
    [Tags]  CriarTransferenciaManual
    ${DadosLojista}     Get DadosLojista  transferenciaManual

    Login Lojista
    Gerenciar Loja
    Ir Para Transferencia
    Criar Transferencia Manual  ${DadosLojista}
    
Importar Transferencia
    [Tags]  ImportarTransferencia
    ${DadosLojista}     Get DadosLojista  importarTransferencia

    Login Lojista
    Gerenciar Loja
    Ir Para Transferencia
    Importar Transferencia  ${DadosLojista}

Criar PickList
    [Tags]  CriarPickList

    Login Lojista
    Gerenciar Loja
    Ir Para Transferencia
    Criar PickList
    Alert Cadastro com sucesso

Excluir Transferencia
    [Tags]
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





