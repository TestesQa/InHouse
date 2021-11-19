*Settings*
Documentation    CADASTRO ADMIN TESTS

Resource     ${EXECDIR}/resources/Base.robot

Suite Setup      Start Session
Test Teardown    Finish Test

*Test Cases*

Login Admin

    Login Admin

Cadastro admin com sucesso

    [Tags]    Cadastro

    ${DadosCad}    Get DadosCad    Adm1

    Go To CadAdmin Form
    Submit CadastroAdm Form    ${DadosCad}
    #Should Be Cadastro Is Available
    Click                       xpath=/html/body/div[1]/main/div/main/form/footer/button[1]

Cadastro admin dados em branco

    [Tags]    CadBranco

    ${DadosCad}    Get DadosCad    Vazio

    Go To CadAdmin Form
    Submit CadastroAdm Form               ${DadosCad}
    Alert Email Shold Be
    Alert Permission Shold Be Required
    Click                       xpath=/html/body/div[1]/main/div/main/form/footer/button[1]

Cadastro admin email em branco

    [Tags]    MailBranco

    ${DadosCad}    Get DadosCad    EmailBranco

    Go To CadAdmin Form
    Submit CadastroAdm Form    ${DadosCad}
    Alert Email Shold Be
    Click                       xpath=/html/body/div[1]/main/div/main/form/footer/button[1]

Cadastro admin permissao em branco

    [Tags]    PermissionBranco

    ${DadosCad}    Get DadosCad    PermissaoBranco

    Go To CadAdmin Form
    Submit CadastroAdm Form               ${DadosCad}
    Alert Permission Shold Be Required
    Click                       xpath=/html/body/div[1]/main/div/main/form/footer/button[1]

Cadastro admin email invalido

    [Tags]    MailInvalid

    ${DadosCad}    Get DadosCad    EmailInvalido

    Go To CadAdmin Form
    Submit CadastroAdm Form         ${DadosCad}
    Alert Invalid Email Shold Be
    Click                       xpath=/html/body/div[1]/main/div/main/form/footer/button[1]