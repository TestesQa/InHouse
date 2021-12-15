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

    Click    xpath=//*[@id="root"]/main/div/main/div/div/div[4]/div/div/div/div/div/table/tbody/tr[1]/td[4]/div
    #Melhorar esse ponto
    Sleep    1 
    Click    text=Salvar


Edit Lojista

    Click    xpath=//*[@id="root"]/main/div/main/div/div/div[4]/div/div/div/div/div/table/tbody/tr[1]/td[4]/div
    Click    text=Salvar

Edit Cliente

   Click    xpath=//*[@id="root"]/main/div/main/div/div/div[4]/div/div/div/div/div/table/tbody/tr[2]/td[7]/div
   Click    text=Salvar

Go To Recupera Senha Admin

    Click    xpath=//*[@id="root"]/main/div/main/div/div/div[4]/div/div/div/div/div/table/tbody/tr[1]/td[4]/div

Go To Recupera Senha Lojista

    Click    xpath=//*[@id="root"]/main/div/main/div/div/div[4]/div/div/div/div/div/table/tbody/tr[1]/td[4]/div

Go To Recupera Senha Cliente

    Click    xpath=//*[@id="root"]/main/div/main/div/div/div[4]/div/div/div/div/div/table/tbody/tr[2]/td[7]/div

Recupera Senha


    ${recover}    Set Variable    css=.ant-message

    Click    text=Enviar Recuperação de Senha


    Wait For Elements State    ${recover}    visible     5                      
    Get Text                   ${recover}    contains    recuperação de senha

Delete Admin

    ${delete}    Set Variable    css=.ant-message

    Click                      xpath=//*[@id="root"]/main/div/main/div/div/div[4]/div/div/div/div/div/table/tbody/tr[2]/td[4]/div
    Click                      text=Excluir
    Wait For Elements State    css=.ant-modal-content    visible    5
    Click                      text=Confirmar

    Wait For Elements State    ${delete}    visible     5
    Get Text                   ${delete}    contains    sucesso


Delete Lojista

    ${delete}    Set Variable    css=.ant-message

    Click                      xpath=//*[@id="root"]/main/div/main/div/div/div[4]/div/div/div/div/div/table/tbody/tr[4]/td[4]/div
    Click                      text=Excluir
    Wait For Elements State    css=.ant-modal-content    visible    5
    Click                      text=Confirmar

    Wait For Elements State    ${delete}    visible     5
    Get Text                   ${delete}    contains    sucesso

Delete Cliente

    ${delete}    Set Variable    css=.ant-message

    Click                      xpath=//*[@id="root"]/main/div/main/div/div/div[4]/div/div/div/div/div/table/tbody/tr[2]/td[7]/div
    Click                      text=Excluir
    Wait For Elements State    css=.ant-modal-content    visible    5
    Click                      text=Confirmar

    Wait For Elements State    ${delete}    visible     5
    Get Text                   ${delete}    contains    sucesso

Bloquear Lojista

    ${block}    Set Variable    css=.ant-message

    Click                      xpath=//*[@id="root"]/main/div/main/div/div/div[4]/div/div/div/div/div/table/tbody/tr[3]/td[4]/div
    Click                      text=Bloquear
    Wait For Elements State    css=.ant-modal-content    visible    5
    Click                      text=Confirmar

    Wait For Elements State    ${block}    visible     5
    Get Text                   ${block}    contains    bloqueado

Desbloquear Lojista

    ${Dblock}    Set Variable    css=.ant-message

    Click                      xpath=//*[@id="root"]/main/div/main/div/div/div[4]/div/div/div/div/div/table/tbody/tr[3]/td[4]/div
    Click                      text=Desbloquear
    Wait For Elements State    css=.ant-modal-content    visible    5
    Click                      text=Confirmar

    Wait For Elements State    ${Dblock}    visible     5
    Get Text                   ${Dblock}    contains    desbloqueado

Assumir Lojista

    ${visao}    Set Variable    css=.ant-message

    Click                      xpath=//*[@id="root"]/main/div/main/div/div/div[4]/div/div/div/div/div/table/tbody/tr[3]/td[5]/div
    Wait For Elements State    css=.ant-modal-content    visible    5
    Click                      text=Confirmar

    Wait For Elements State    ${visao}    visible     5
    Get Text                   ${visao}    contains    assumida

Visao Admin

    Click       xpath=//*[@id="root"]/main/div/main/header/div[2]
    ${visao}    Set Variable    xpath=/html/body/div[3]/div/div
    Get Text    ${visao}        contains        Lojista

    Click       xpath=//*[@id="root"]/main/div/main/header/div[1]/div/button

    Click       xpath=//*[@id="root"]/main/div/main/header/div[2]
    ${adm}      Set Variable        xpath=/html/body/div[3]/div/div/ul
    Get Text                   ${adm}    contains     Admin    

Bloquear Cliente

    ${block}    Set Variable    css=.ant-message

    Click                      xpath=//*[@id="root"]/main/div/main/div/div/div[4]/div/div/div/div/div/table/tbody/tr[2]/td[7]/div
    Click                      text=Bloquear
    Wait For Elements State    css=.ant-modal-content    visible    5
    Click                      text=Confirmar

    Wait For Elements State    ${block}    visible     5
    Get Text                   ${block}    contains    bloqueado

Desbloquear Cliente

    ${block}    Set Variable    css=.ant-message

    Click                      xpath=//*[@id="root"]/main/div/main/div/div/div[4]/div/div/div/div/div/table/tbody/tr[2]/td[7]/div
    Click                      text=Desbloquear
    Wait For Elements State    css=.ant-modal-content    visible    5
    Click                      text=Confirmar

    Wait For Elements State    ${block}    visible     5
    Get Text                   ${block}    contains    desbloqueado