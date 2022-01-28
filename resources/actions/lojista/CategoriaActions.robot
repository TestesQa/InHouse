*Settings*
Documentation    Ações para Categoria

*Keywords*
Ir Para Categoria
    Click                      text=Categoria
    Click                      text=Gerenciar Categorias
    Wait For Elements State    text=Categorias              visible    5

Cadastrar Categoria Sucesso
    [Arguments]     ${DadosLojista}

    Click                      text=Cadastrar
    Wait For Elements State    text=Cadastrar Categoria

    Fill Text   id=name         ${DadosLojista}[nomecategoria]
    #Click      text=Salvar

Cadastrar Categoria 18+
    [Arguments]     ${DadosLojista}

    Click                      text=Cadastrar
    Wait For Elements State    text=Cadastrar Categoria

    Fill Text   id=name         ${DadosLojista}[nomecategoria]
    Click       id=isForLegalAge
    #Click      text=Salvar

Alterar Categoria
    [Arguments]     ${DadosLojista}

    Click       xpath=//*[@id="root"]/main/div/main/div/div/div[5]/div/div/div/div/div/table/tbody/tr[4]/td[3]
    Wait For Elements State     text=Editar Categoria

    Fill Text   id=name     ${DadosLojista}[nomecategoria]
    #Validar CheckBox

Deletar Categoria

    Click       xpath=//*[@id="root"]/main/div/main/div/div/div[5]/div/div/div/div/div/table/tbody/tr[4]/td[3]
    Wait For Elements State     text=Editar Categoria

    Click       text=Excluir
    Wait For Elements State     text=Excluir Categoria
    Click       text=Confirmar
    