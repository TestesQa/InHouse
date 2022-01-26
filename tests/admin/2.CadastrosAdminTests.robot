*Settings*
Documentation    CADASTRO ADMIN TESTS

Resource    ${EXECDIR}/resources/Base.robot

Suite Setup      Start Session
Test Teardown    Finish Test

*Test Cases*

Login Admin

    Login Admin

Cadastro admin com sucesso

    [Tags]    Cadastro

    ${DadosCad}    Get DadosCad    Adm1


    #Login Admin
    Go To CadAdmin Form
    Submit CadastroAdm Form    ${DadosCad}
    Check Submit               ${DadosCad}

Cadastro admin dados em branco

    [Tags]    CadBranco

    #Login Admin
    Go To CadAdmin Form
    Click       text=Salvar
    Alert Email Shold Be
    Alert Permission Shold Be Required


Cadastro admin email em branco

    [Tags]    MailBranco

    ${DadosCad}    Get DadosCad    EmailBranco

    #Login Admin
    Go To CadAdmin Form
    Submit CadastroAdm Form    ${DadosCad}
    Alert Email Shold Be

Cadastro admin permissao em branco

    [Tags]    PermissionBranco

    ${DadosCad}                           Get DadosCad    PermissaoBranco
    
    #Login Admin
    Go To CadAdmin Form
    Fill Text   id=email    testepermission@teste.com
    Click       text=Salvar
    Alert Permission Shold Be Required

Cadastro admin email invalido

    [Tags]    MailInvalid

    ${DadosCad}                     Get DadosCad    EmailInvalido
    #Login Admin
    Go To CadAdmin Form
    Submit CadastroAdm Form         ${DadosCad}
    Alert Invalid Email Shold Be