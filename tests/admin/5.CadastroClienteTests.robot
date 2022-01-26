*Settings*
Documentation    Cadastro Cliente Teste

Resource    ${EXECDIR}/resources/Base.robot

Suite Setup      Start Session
Test Teardown    Finish Test

*Test Cases*
Logar Adm
    Login Admin

Cadastro Cliente Sucesso

    [Tags]                 CadCliente
    ${DadosCad}            Get DadosCad    CadClienteCompleto
    
    #Login Admin
    Go To CadCliente
    Submit Form Cliente    ${DadosCad}
    Alert Cadastro com sucesso

Cadastro Cliente Campos em branco
    [Tags]    CadcliVazio

    #Login Admin
    Go To CadCliente
    Click               text=Salvar
    Alert Form Null Cliente

Cadastros Cliente CPF Incompleto
    [Tags]    CadCliCPFIncompleto

    ${DadosCad}    Get DadosCad    CadClienteCPFIncompleto

    #Login Admin
    Go To CadCliente
    Submit Form Cliente     ${DadosCad}
    Click                   text=Salvar
    Alert CPF Incompleto

Cadastro Cliente Email Invalido
    [Tags]    CadCliEmailInvalido

    ${DadosCad}    Get DadosCad    CadClienteEmailInvalido

    #Login Admin
    Go To CadCliente
    Submit Form Cliente             ${DadosCad}
    Click                           text=Salvar
    Alert Invalid Email Shold Be

Cadastro Cliente Data Incompleta
    [Tags]    CadcliDataNasc

    ${DadosCad}    Get DadosCad    CadClienteDataIncompleta

    #Login Admin
    Go To CadCliente
    Submit Form Cliente     ${DadosCad}
    Click                   text=Salvar
    Alert Date Incomplet

Cadastros Cliente Telefone Incompleta
    [Tags]    CadCliFoneIncompleto

    ${DadosCad}    Get DadosCad    CadClienteTelefoneIncompleto

    #Login Admin
    Go To CadCliente
    Submit Form Cliente          ${DadosCad}
    Click                        text=Salvar
    Alert Telefone Incompleto