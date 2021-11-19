*Settings*
Documentation      Cadastro Cliente Teste

Resource            ${EXECDIR}/resources/Base.robot

Suite Setup         Start Session
Test Teardown       Finish Test

*Test Cases*

Atualizar CadAdm
    [Tags]      AtualizaAdm

    Login Admin
    Go To ListagemAdm
    Edit Adm
    Alert Atualizado com sucesso

Atualizar CadLojista
    [Tags]      AtualizaLojista

    Login Admin
    Go To ListagemLojista
    Edit Lojista
    Alert Atualizado com sucesso

Atualizar CadCliente
    [Tags]      AtualizaCliente

    Login Admin
    Go To ListagemCliente
    Edit Cliente
    Alert Atualizado com sucesso

Recupera Senha Admin
    [Tags]      RecuperaSenhaAdmin

    Login Admin
    Go To ListagemAdm
    Edit Lojista
    Recupera Senha


Recupera Senha Lojista
    [Tags]      RecuperaSenhaLojista

    Login Admin
    Go To ListagemLojista
    Edit Lojista
    Recupera Senha

Recupera Senha Cliente
    [Tags]      RecuperaSenhaCliente

    Login Admin
    Go To ListagemCliente
    Edit Lojista
    Recupera Senha

#Visao Lojista


