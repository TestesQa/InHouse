*Settings*
Documentation       Ação de atualização exclusão e exclusão

*Keywords*

Go To Admin
    Click       xpath=/html/body/div[1]/main/div/main/div/div[2]/div[1]/div/div/div[2]/div[1]/div[4]/div/a/span
    Get Text       text=Atualizar Administrador

Go To Lojista
    Click       xpath=
    Get Text    text=Atualizar Lojista

Go To Cliente
    Click       xpath=
    Get Text    xpath=Atualizar Cliente

Edit Adm

    #atualiza
    Click       text=Salvar

Edit Lojista

    #atualiza
    Click       text=Salvar

Edit Cliente

    #atualiza
    Click       text=Salvar

Recupera Senha
    ${recover}    Set Variable    css=.ant-message

    Click       xpath=/html/body/div[1]/main/div/main/form/div/div/div[1]/button
    

    Wait For Elements State    ${recover}    visible    5                    Login error
    Get Text                   ${recover}    contains      Enviada com sucesso
