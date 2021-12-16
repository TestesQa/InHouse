*Settings*
Documentation    CADASTRO LOJISTA TESTS

Resource    ${EXECDIR}/resources/Base.robot

Suite Setup      Start Session
Test Teardown    Finish Test

*Test Cases*

Login admin

    Login Admin

Cadastro Lojista Sucesso Obrigatorio

    [Tags]         CadLojista
    ${DadosCad}    Get DadosCad    CadLojista

    #Login Admin
    Go To CadLojista
    Submit Form CadLojista    ${DadosCad}
    Alert Cadastro com sucesso

Cadastro Lojista Sucesso Completo

    [Tags]    CadLojistaCompleto

    ${DadosCad}    Get DadosCad    CadLojistaCompleto

    #Login Admin
    Go To CadLojista
    #Dados Adicionais
    Submit Form CadLojistaCompleto    ${DadosCad}
    Alert Cadastro com sucesso

Campos em branco
    [Tags]    CadLojistaBranco

    #Login Admin
    Go To CadLojista
    Click                     text=Salvar
    Alert Form Null

Email Invalid
    [Tags]    CadLojistaEmailInvalid

    ${DadosCad}    Get DadosCad    CadLogistaEmailInvalid

    #Login Admin
    Go To CadLojista
    Submit Form CadLojista    ${DadosCad}
    Click                     text=Salvar
    Alert Invalid Email Shold Be

Phone Invalid
    [Tags]    CadLojistaPhoneInvalid

    ${DadosCad}    Get DadosCad    CadLogistaPhoneInvalid

    #Login Admin
    Go To CadLojista
    Submit Form CadLojista    ${DadosCad}
    Click                     text=Salvar
    Alert Phone Invalid Shold Be
Email em branco
    [Tags]    CadLojistaEmailBranco

    ${DadosCad}    Get DadosCad    CadLogistaEmailBranco

    #Login Admin
    Go To CadLojista
    Submit Form CadLojista    ${DadosCad}
    Click                     text=Salvar
    Alert Email Shold Be

Phone em branco
    [Tags]    CadLojistaPhoneBranco

    ${DadosCad}    Get DadosCad    CadLogistaPhoneBranco

    #Login Admin
    Go To CadLojista
    Submit Form CadLojista    ${DadosCad}
    Click                     text=Salvar
    Alert Phone Shold Be