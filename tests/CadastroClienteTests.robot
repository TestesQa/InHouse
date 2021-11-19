*Settings*
Documentation      Cadastro Cliente Teste

Resource            ${EXECDIR}/resources/Base.robot

Suite Setup         Start Session
Test Teardown       Finish Test

*Test Cases*
Logar Adm
    Login Admin

Cadastro Cliente Sucesso

    [Tags]      CadCliente
    ${DadosCad}     Get DadosCad  CadClienteCompleto
   # Login Admin
    Go To CadCliente
    Submit Form Cliente  ${DadosCad}
    #Validar Envio
    Click       xpath=/html/body/div[1]/main/div/main/form/footer/button[1]/span[2]

    
Cadastro Cliente Campos em branco
    [Tags]    CadcliVazio

   # Login Admin
    Go To CadCliente
    Click   xpath=/html/body/div[1]/main/div/main/form/footer/button[2]
    Alert Form Null
    Click       xpath=/html/body/div[1]/main/div/main/form/footer/button[1]/span[2]

Cadastros Cliente CPF Incompleto
    [Tags]      CadCliCPFIncompleto

    ${DadosCad}     Get DadosCad  CadClienteCPFIncompleto

   # Login Admin
    Go To CadCliente
    Submit Form Cliente  ${DadosCad}
    Click   xpath=/html/body/div[1]/main/div/main/form/footer/button[2]
    Alert CPF Incompleto
    Click       xpath=/html/body/div[1]/main/div/main/form/footer/button[1]/span[2]

Cadastro Cliente Email Invalido
    [Tags]      CadCliEmailInvalido

    ${DadosCad}     Get DadosCad  CadClienteEmailInvalido

    #Login Admin
    Go To CadCliente
    Submit Form Cliente  ${DadosCad}
    Click   xpath=/html/body/div[1]/main/div/main/form/footer/button[2]
    Alert Invalid Email Shold Be
    Click       xpath=/html/body/div[1]/main/div/main/form/footer/button[1]/span[2]

Cadastro Cliente Data Incompleta
    [Tags]      CadcliDataNasc

    ${DadosCad}     Get DadosCad  CadClienteDataIncompleta

    #Login Admin
    Go To CadCliente
    Submit Form Cliente  ${DadosCad}
    Click   xpath=/html/body/div[1]/main/div/main/form/footer/button[2]
    Alert Date Incomplet
    Click       xpath=/html/body/div[1]/main/div/main/form/footer/button[1]/span[2]

# Cadastro Cliente Data nascimento Invalido

Cadastros Cliente Telefone Incompleta
    [Tags]      CadCliFoneIncompleto

    ${DadosCad}     Get DadosCad  CadClienteTelefoneIncompleto

    #Login Admin
    Go To CadCliente
    Submit Form Cliente  ${DadosCad}
    Click   xpath=/html/body/div[1]/main/div/main/form/footer/button[2]
    Alert Phone Shold Be
    Click       xpath=/html/body/div[1]/main/div/main/form/footer/button[1]/span[2]

