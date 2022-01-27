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