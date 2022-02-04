*Settings*
Documentation    Testes relacionados a função Loja

*Keywords*
Ir Para Cadastro de Loja

    Click                      text=Loja
    Click                      text=Gerenciar Lojas
    Wait For Elements State    text=Loja               visible    5

Cadastrar Loja
    [Arguments]    ${DadosLojista}

    CLick                      text=Cadastrar
    Wait For Elements State    text=Cadastrar Loja

    Fill Text         id=name                                                                                                               ${DadosLojista}[nome]
    Fill Text         xpath=//*[@id="root"]/main/div/main/div/div/form/div[4]/div[2]/div/div/input                                          ${DadosLojista}[cep]
    Fill Text         id=address_number                                                                                                     ${DadosLojista}[numero]
    Click             text=Dados Opcionais
    Click             xpath=/html/body/div[1]/main/div/main/div/div/form/div[15]/div[1]/div[2]/div/div[1]/div[2]/div/div/div/div/span[2]
    Click             xpath=/html/body/div[2]/div/div/div/div[2]/div[1]/div/div/div[1]/div
    Fill Text         xpath=/html/body/div[1]/main/div/main/div/div/form/div[15]/div[1]/div[2]/div/div[2]/div[2]/div/div/input              ${DadosLojista}[telefone]
    Click             xpath=/html/body/div[1]/main/div/main/div/div/form/div[15]/div[1]/div[2]/div/div[3]/div[2]/div/div/div/div/span[2]
    Click             text=Loja com estoque físico
    Fill Text         id=description                                                                                                        ${DadosLojista}[descricao]
    Adicionar Logo    ${DadosLojista}

Gerenciar Loja

    Click                      text=Loja
    Click                      text=Gerenciar Lojas
    Wait For Elements State    text=Loja                                                                                            visible    5
    Click                      xpath=/html/body/div/main/div/main/div/div/div[4]/div/div/div/div/div/table/tbody/tr[1]/td[6]/div
    Wait For Elements State    text=Dados Cadastrais

Atualizar Dados Loja
    [Arguments]    ${DadosLojista}

    Click    text=Editar

    Fill Text         id=name                                                                                                                                     ${DadosLojista}[nome]
    Fill Text         xpath=/html/body/div/main/div/main/div/div/div/div[2]/div/div[1]/div/div/form/div[4]/div[2]/div/div/input                                   ${DadosLojista}[cep]
    Fill Text         id=address_number                                                                                                                           ${DadosLojista}[numero]
    Click             text=Dados Opcionais
    Click             xpath=/html/body/div[1]/main/div/main/div/div/div/div[2]/div/div[1]/div/div/form/div[15]/div[1]/div[2]/div/div[1]/div[2]/div/div/div
    Click             xpath=/html/body/div[3]/div/div/div/div[2]/div[1]/div/div/div[1]/div
    Fill Text         xpath=/html/body/div[1]/main/div/main/div/div/div/div[2]/div/div[1]/div/div/form/div[15]/div[1]/div[2]/div/div[2]/div[2]/div/div/input      ${DadosLojista}[telefone]
    Click             xpath=/html/body/div[1]/main/div/main/div/div/div/div[2]/div/div[1]/div/div/form/div[15]/div[1]/div[2]/div/div[3]/div[2]/div/div/div/div
    Click             text=Estoque virtual
    Fill Text         id=description                                                                                                                              ${DadosLojista}[descricao]
    Adicionar Logo    ${DadosLojista}

Adicionar Logo
    [Arguments]    ${logo}

    Upload File By Selector    css=input[type="file"]    ${EXECDIR}/resources/fixtures/thumbnails/${logo}[imagem]
    Wait For Elements State    text=Edição de imagem
    Click                      text=Escolher

Importar Arquivo
    [Arguments]    ${Arquivo}

    Click                      text=Importar
    Upload File By Selector    id=file          ${EXECDIR}/resources/fixtures/import/${Arquivo}[planilha]
    Click                      text=Próximo
    #Click       text=Importar

Criar Planograma
    [Arguments]    ${Planograma}

    CLick                      text=Planograma
    Click                      text=Editar
    Click                      xpath=/html/body/div[1]/main/div/main/div/div/div/div[2]/div/div[2]/div[3]/div/button
    Wait For Elements State    xpath=/html/body/div[1]/main/div/main/div/div/div/div[2]/div/div[2]/div[5]/div[2]/div/div[2]

    Fill Text                  id=product_name            ${Planograma}[nome]
    Wait For Elements State    text=Batata Frita          visible                      5
    Click                      text=Batata Frita
    Fill Text                  id=planogram_code          ${Planograma}[codigo]
    Fill Text                  id=standard_amount         ${Planograma}[quantidade]
    Fill Text                  id=alert_level             ${Planograma}[alerta]
    Fill Text                  id=price_list_in_cents     ${Planograma}[precolista]
    Fill Text                  id=price_final_in_cents    ${Planograma}[precofinal]
    Fill Text                  id=stock_amount            ${Planograma}[estoque]

    Click    xpath=//*[@id="rc-tabs-3-panel-planogram"]/div[5]/div[2]/div/div[2]/div[3]/button[2]
    #CLick        text=Salvar

Importar Planograma
    [Arguments]    ${Importar}

    CLick                         text=Planograma
    Click                         text=Editar
    Importar Arquivo              ${Importar}
    Alert Cadastro com sucesso

Editar Planograma
    [Arguments]    ${Editar}

    Click    text=Planograma
    Click    text=Editar
    Click    xpath=//*[@id="rc-tabs-3-panel-planogram"]/div[2]/div/div/div/div/div/table/tbody/tr[1]/td[10]/button[1]

    Fill Text    xpath=/html/body/div[1]/main/div/main/div/div/div/div[2]/div/div[2]/div[2]/div/div/div/div/div/table/tbody/tr[1]/td[5]/div/div/div/div/div/div[2]/input    ${Editar}[qtsPadrao]
    Fill Text    xpath=/html/body/div[1]/main/div/main/div/div/div/div[2]/div/div[2]/div[2]/div/div/div/div/div/table/tbody/tr[1]/td[6]/div/div/div/div/div/div[2]/input    ${Editar}[alerta]
    Fill Text    xpath=/html/body/div[1]/main/div/main/div/div/div/div[2]/div/div[2]/div[2]/div/div/div/div/div/table/tbody/tr[1]/td[8]/div/div/div/div/div/div[2]/input    ${Editar}[precofinal]

    Click    xpath=//*[@id="rc-tabs-3-panel-planogram"]/div[2]/div/div/div/div/div/table/tbody/tr[1]/td[10]/span/button[1]
    Click    xpath=/html/body/div[1]/main/div/main/div/div/div/div[2]/div/div[2]/div[4]/div[2]/button

Excluir Planograma

    Click    text=Planograma
    CLick    text=Editar
    Click    xpath=/html/body/div[1]/main/div/main/div/div/div/div[2]/div/div[2]/div[2]/div/div/div/div/div/table/tbody/tr[1]/td[10]/button[2]
    Ciclk    xpath=/html/body/div[1]/main/div/main/div/div/div/div[2]/div/div[2]/div[4]/div[2]/button

Ir Para Transferencia

    Click                      xpath=/html/body/div/main/div/main/div/div/div/div[1]/div[1]/div/div[3]/div
    Wait For Elements State    xpath=/html/body/div/main/div/main/div/div/div/div[2]/div/div[3]/div[1]/div[1]/button    visible    5

Criar Transferencia Manual
    [Arguments]    ${transfere}

    Click                      text=Criar Transferência
    Wait For Elements State    text=Criar Transferência

    IF                         "${transfere}[origem]" == "${EMPTY}"
        Fill Text               id=description   ${transfere}{descricao}
        Click       xpath=/html/body/div[1]/main/div/main/div/div/div/form/div[4]/div/button
        Fill Text   id=procut_name            agua
        Click       text=${transfere}[produto]
        Fill Text   id=amount_to_transfer       ${transfere}[qtsTransfere]
        Click       xpath=/html/body/div[2]/div/div[2]/div/div[2]/div[3]/button[2]
        Sleep   5

    ELSE
        Click                      xpath=/html/body/div[1]/main/div/main/div/div/div/form/div[1]/div/div[1]/div[2]/div/div/div/button
        Click                      text=OK
        Wait For Elements State    text=Adicionar Estoque de origem
        Fill Text                  id=storeDestination      Testes
        Click                      text=${transfere}[origem]
        Click                      xpath=/html/body/div[3]/div/div[2]/div/div[2]/div[3]/button[2]
        Fill Text   id=description   ${transfere}[descricao]
        Click       xpath=/html/body/div[1]/main/div/main/div/div/div/form/div[4]/div/button
        Fill Text   id=procut_name            Agua
        Click       text=${transfere}[produto]
        Fill Text   id=amount_to_transfer       ${transfere}[qtsTransfere]
        Click       css=.ant-modal-footer
        Click       xpath=/html/body/div[2]/div/div[2]/div/div[2]/div[3]/button[2]
        Sleep       5
    END

Importar Transferencia
    [Arguments]     ${Importar}

    Click                      text=Criar Transferência
    Wait For Elements State    text=Criar Transferência

    IF                         "${Importar}[origem]" == "${EMPTY}"
        Fill Text               id=description   ${Importar}[descricao]
        Importar Arquivo  ${Importar}
        Click   text=Próximo
        Click   xpath=/html/body/div[7]/div/div[2]/div/div[2]/div[3]/button[2]
        

    ELSE
        Click                      xpath=/html/body/div[1]/main/div/main/div/div/div/form/div[1]/div/div[1]/div[2]/div/div/div/button
        Click                      text=OK
        Wait For Elements State    text=Adicionar Estoque de origem
        Fill Text                  id=storeDestination      Testes
        Click                      text=${Importar}[origem]
        Click                      xpath=/html/body/div[3]/div/div[2]/div/div[2]/div[3]/button[2]
        Fill Text   id=description   ${Importar}[descricao]
        Importar Arquivo  ${Importar}
        Click   text=Próximo
        Click   xpath=/html/body/div[7]/div/div[2]/div/div[2]/div[3]/button[2]
    END