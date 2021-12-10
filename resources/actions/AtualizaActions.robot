*Settings*
Documentation    Ação de atualização exclusão e exclusão

*Keywords*

Go To Admin
    Click    text=Usuários
    Click    text=Gerenciar Administrador

    Get Text    text=Administradores

Go To Lojista
    Click    text=Usuários
    Click    text=Gerenciar Lojistas

    Get Text    text=Lojistas

Go To Cliente
    Click    text=Usuários
    Click    text=Gerenciar Clientes

    Get Text    text=Clientes    

Edit Adm

    Click    id=cell-4-3
    #Melhorar esse ponto
    Sleep    1 
    Click    text=Salvar


Edit Lojista

    Click    id=cell-4-1
    Click    text=Salvar

# Edit Cliente

#    Click    id=
#    Click    text=Salvar

Go To Recupera Senha Admin

    Click    id=cell-4-3

Go To Recupera Senha Lojista

    Click    id=cell-4-1

# Go To Recupera Senha Cliente

#    Click    id=

Recupera Senha


    ${recover}    Set Variable    css=.ant-message

    Click    text=Enviar Recuperação de Senha


    Wait For Elements State    ${recover}    visible     5                      
    Get Text                   ${recover}    contains    Enviada com sucesso

Delete Admin

    ${delete}    Set Variable    css=.ant-message

    Click                      id=cell-4-29
    Click                      text=Excluir
    Wait For Elements State    css=.ant-modal-content    visible    5
    Click                      text=Confirmar

    Wait For Elements State    ${delete}    visible     5
    Get Text                   ${delete}    contains    sucesso


Delete Lojista

    ${delete}    Set Variable    css=.ant-message

    Click                      id=cell-4-10
    Click                      text=Excluir
    Wait For Elements State    css=.ant-modal-content    visible    5
    Click                      text=Confirmar

    Wait For Elements State    ${delete}    visible     5
    Get Text                   ${delete}    contains    sucesso

# Delete Cliente

#    ${delete}    Set Variable    css=.ant-message

#    Click                      id=cell-4-9
#    Click                      text=Excluir
#    Wait For Elements State    css=.ant-modal-content    visible    5
#    Click                      text=Confirmar

#    Wait For Elements State    ${delete}    visible     5
#    Get Text                   ${delete}    contains    sucesso

Bloquear Lojista

    ${block}    Set Variable    css=.ant-message

    Click                      id=cell-4-1
    Click                      text=Bloquear
    Wait For Elements State    css=.ant-modal-content    visible    5
    Click                      text=Confirmar

    Wait For Elements State    ${block}    visible     5
    Get Text                   ${block}    contains    bloqueado

Desbloquear Lojista

    ${Dblock}    Set Variable    css=.ant-message

    Click                      id=cell-4-1
    Click                      text=Desbloquear
    Wait For Elements State    css=.ant-modal-content    visible    5
    Click                      text=Confirmar

    Wait For Elements State    ${Dblock}    visible     5
    Get Text                   ${Dblock}    contains    desbloqueado

Assumir Lojista

    ${visao}    Set Variable    css=.ant-message

    Click                      id=cell-5-1
    Wait For Elements State    css=.ant-modal-content    visible    5
    Click                      text=Confirmar

    Wait For Elements State    ${visao}    visible     5
    Get Text                   ${visao}    contains    assumida

Visao Admin

    ${visao}    Set Variable    css=.ant-message

    Wait For Elements State    xpath=//*[@id="root"]/main/div/div               visible    5    Erro carregar DIV
    Click                      xpath=/html/body/div[1]/main/div/div/div/span

    Wait For Elements State    ${visao}    visible     5
    Get Text                   ${visao}    contains    sua visão