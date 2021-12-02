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
    #Validar Cadastro
    Click                     xpath=/html/body/div[1]/main/div/main/form/footer[2]/button[1]

Cadastro Lojista Sucesso Completo

    [Tags]    CadLojistaCompleto

    ${DadosCad}    Get DadosCad    CadLojistaCompleto

    #Login Admin
    Go To CadLojista
    Dados Adicionais
    Submit Form CadLojistaCompleto    ${DadosCad}
    Click                             xpath=/html/body/div[1]/main/div/main/form/footer[2]/button[1]

Campos em branco
    [Tags]    CadLojistaBranco

    ${DadosCad}    Get DadosCad    CadLogistaBranco

    #Login Admin
    Go To CadLojista
    Submit Form CadLojista    ${DadosCad}
    Click                     text=Salvar
    Alert Email Shold Be
    Alert Phone Shold Be

Email Invalid
    [Tags]    CadLojistaEmailInvalid

    ${DadosCad}    Get DadosCad    CadLogistaEmailInvalid

    #Login Admin
    Go To CadLojista
    Submit Form CadLojista    ${DadosCad}
    Click                     text=Salvar
    Alert Email Shold Be

Phone Invalid
    [Tags]    CadLojistaPhoneInvalid

    ${DadosCad}    Get DadosCad    CadLogistaPhoneBranco

     #Login Admin
    Go To CadLojista
    Submit Form CadLojista    ${DadosCad}
    Click                     text=Salvar
    Alert Phone Shold Be

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