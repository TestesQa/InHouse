*Settings*
Documentation    Testes relacionados a função Produto

*Keywords*
Ir Para Produto
    Click                      text=Produto
    Click                      text=Gerenciar Produtos 
    Wait For Elements State    text=Produtos

Cadastrar Produto Completo
    [Arguments]    ${Produto}

    Click                      text=Cadastrar
    Wait For Elements State    text=Cadastrar Produto

    Fill Text         id=name                        ${Produto}[nome]
    Click             id=categoryId
    CLick             text=${Produto}[categoria]
    Click             text=Dados Opcionais
    Adicionar Logo    ${Produto}
    Fill Text         id=description                 ${Produto}[descricao]
    Fill Text         id=lastPriceInCents            ${Produto}[preco]
    Click             text=Adicionar
    Fill Text         id=barCodes_0                  ${Produto}[barras]
    Click             text=Dados Avançados
    Click             id=providerId
    Click             text=${Produto}[fornecedor]
    Fill Text         id=ncm                         ${Produto}[ncm]
    FIll Text         id=cest                        ${Produto}[cest]
    Fill Text         id=fiscal                      ${Produto}[fiscal]
    Fill Text         id=packageMultiplier           ${Produto}[multiplicador]

Cadastrar Produto Simples
    [Arguments]    ${Produto}

    Click                      text=Cadastrar
    Wait For Elements State    text=Cadastrar Produto

    Fill Text         id=name                        ${Produto}[nome]
    Click             id=categoryId
    CLick             text=${Produto}[categoria]

Editar Produto
    [Arguments]    ${Alterar}

    Click                      xpath=/html/body/div/main/div/main/div/div/div[5]/div/div/div/div/div/table/tbody/tr[1]/td[5]/div
    Wait For Elements State    text=Editar Produto

    Fill Text         id=name                        ${Alterar}[nome]
    Click             id=categoryId
    CLick             text=${Alterar}[categoria]
    Click             text=Dados Opcionais
    Adicionar Logo    ${Alterar}
    Fill Text         id=description                 ${Alterar}[descricao]
    Fill Text         id=lastPriceInCents            ${Alterar}[preco]
    Click             text=Adicionar
    Fill Text         id=barCodes_0                  ${Alterar}[barras]
    Click             text=Dados Avançados
    Click             xpath=//*[@id="root"]/main/div/main/div/div/form/div[3]/div[2]/div[2]/div/div[1]/div[2]/div/div/div/div
    Click             text=${Alterar}[fornecedor]
    Fill Text         id=ncm                         ${Alterar}[ncm]
    FIll Text         id=cest                        ${Alterar}[cest]
    Fill Text         id=fiscal                      ${Alterar}[fiscal]
    Fill Text         id=packageMultiplier           ${Alterar}[multiplicador]
 
Excluir Produto

    Click       xpath=//*[@id="root"]/main/div/main/div/div/div[5]/div/div/div/div/div/table/tbody/tr[1]/td[5]/div
    Wait For Elements State     text=Editar Produto

    CLick       text=Excluir
    Wait For Elements State     text=Excluir produto
    Click       text=Confirmar