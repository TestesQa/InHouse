*Settings*
Documentation       Cadastro Tests

Resource            ${EXECDIR}/resources/Login.robot
#Resource            ${EXECDIR}/resources/Cadastro.robot

Suite Setup         Start Session
Test Teardown       Finish Test

*Test Cases*

Cadastro admin com sucesso

    [Tags]      Cadastro

        Login With  admin@email.com  12345678
        User Shold Be Logged In

        Click       text=Usuários
        Click       text=Criar

        Get Text    text="Cadastrar usuário"



        


# Campos em branco
# Campo invalido
