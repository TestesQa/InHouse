*Settings*
Documentation    Ações para Fornecedor

*Keywords*
Ir Para Anuncio
    Click                      text=Anúncio
    Click                      text=Gerenciar Anúncios
    Wait For Elements State    text=Anúncios

Criar Anuncio
    [Arguments]    ${Anuncio}

    Click                      text=Cadastrar
    Wait For Elements State    text=Cadastrar Anúncio

    Fill Text    id=name           ${Anuncio}[nome]
    Fill Text    id=description    ${Anuncio}[descricao]

    Upload File By Selector    css=input[type="file"]    ${EXECDIR}/resources/fixtures/thumbnails/${Anuncio}[imagem]
    Wait For Elements State    text=Edição de imagem
    Click                      text=Escolher

Alterar Anuncio
    [Arguments]     ${Alterar}

    Click       xpath=//*[@id="root"]/main/div/main/div/div/div[4]/div/div/div/div/div/table/tbody/tr[2]/td[4]
    Wait For Elements State     text=Editar Anúncio

    Fill Text    id=name           ${Alterar}[nome]
    Fill Text    id=description    ${Alterar}[descricao]

    Upload File By Selector    css=input[type="file"]    ${EXECDIR}/resources/fixtures/thumbnails/${Alterar}[imagem]
    Wait For Elements State    text=Edição de imagem
    Click                      text=Escolher

Excluir Anuncio

    Click       xpath=//*[@id="root"]/main/div/main/div/div/div[4]/div/div/div/div/div/table/tbody/tr[2]/td[4]
    Wait For Elements State     text=Editar Anúncio

    CLick       text=Excluir
    Wait For Elements State     text=Excluir Anúncio
    Click       text=Confirmar
    