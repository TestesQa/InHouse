*Settings*
Documentation    Cadastro Tests

Resource     ${EXECDIR}/resources/Base.robot
#Resource    ${EXECDIR}/resources/Cadastro.robot

Suite Setup      Start Session
Test Teardown    Finish Test

*Test Cases*

Cadastro admin com sucesso

    [Tags]    Cadastro

    Login With                 admin@email.com    12345678
    User Shold Be Logged In

    Click    text=Usuários
    Click    text=Criar

    Get Text    text="Cadastrar usuário"

    Fill Text   id=email    emailteste@teste.com

    Click       css=.ant-select-selection-item
    

    Click       text=Admin
    Click       text=Salvar

    Get Text    text="O administrador emailteste@teste.com foi criado com sucesso"



    








# Campos em branco
# Campo invalido
