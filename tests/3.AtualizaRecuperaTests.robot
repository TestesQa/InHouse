*Settings*
Documentation    Cadastro Cliente Teste

Resource    ${EXECDIR}/resources/Base.robot

Suite Setup      Start Session
Test Teardown    Finish Test

*Test Cases*

Login
    Login Admin

Atualizar CadAdm
    [Tags]    AtualizaAdm

    #Login Admin
    Go To ListagemAdm
    Edit Adm
    Alert Atualizado com sucesso

Atualizar CadLojista
    [Tags]    AtualizaLojista

    #Login Admin
    Go To ListagemLojista
    Edit Lojista
    Alert Atualizado com sucesso

Atualizar CadCliente
    [Tags]    AtualizaCliente

    #Login Admin
    Go To ListagemCliente
    Edit Cliente
    Alert Atualizado com sucesso

Recupera Senha Admin
    [Tags]    RecuperaSenhaAdmin

    #Login Admin
    Go To ListagemAdm
    Go To Recupera Senha Admin
    Recupera Senha


Recupera Senha Lojista
    [Tags]    RecuperaSenhaLojista

    #Login Admin
    Go To ListagemLojista
    Go To Recupera Senha Lojista
    Recupera Senha

Recupera Senha Cliente
    [Tags]    RecuperaSenhaCliente

    #Login Admin
    Go To ListagemCliente
    Go To Recupera Senha Cliente
    Recupera Senha

Delete Admin
    [Tags]    deleteadmin

    #Login Admin
    Go To Admin
    Delete Admin

Delete Lojista
    [Tags]    deletelojista

    #Login Admin
    Go To Lojista
    Delete Lojista


Excluir Cliente
    [Tags]      deletecliente

    #Login Admin
    Go to Cliente
    Delete Cliente

Bloquear Lojista
    [Tags]    bloquearlojista

    #Login Admin
    Go To Lojista
    Bloquear Lojista

Desbloquear Lojista
    [Tags]    desbloquearlojista

    #Login Admin
    Go To Lojista
    Desbloquear Lojista

Assumir Lojista
    [Tags]    visaoLojista

    #Login Admin
    Go To Lojista
    Assumir Lojista

Voltar Visao Adm
    [Tags]    visaoadm

    #Login Admin
    Go To Lojista
    Assumir Lojista
    Visao Admin

Bloquear Cliente
    [Tags]  BloquearCLiente

    #Login Admin
    Go To Cliente
    Bloquear Cliente

Desbloquear Cliente
    [Tags]  DesbloquearCliente

    #Login Admin
    Go To Cliente
    Desbloquear Cliente



