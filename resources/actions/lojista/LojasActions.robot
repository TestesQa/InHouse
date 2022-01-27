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

    Fill Text    id=name                                                                                                               ${DadosLojista}[nome]
    Fill Text    xpath=//*[@id="root"]/main/div/main/div/div/form/div[4]/div[2]/div/div/input                                          ${DadosLojista}[cep]
    Fill Text    id=address_number                                                                                                     ${DadosLojista}[numero]
    Click        text=Dados Opcionais
    Click        xpath=/html/body/div[1]/main/div/main/div/div/form/div[15]/div[1]/div[2]/div/div[1]/div[2]/div/div/div/div/span[2]
    Click        xpath=/html/body/div[2]/div/div/div/div[2]/div[1]/div/div/div[1]/div
    Fill Text    xpath=/html/body/div[1]/main/div/main/div/div/form/div[15]/div[1]/div[2]/div/div[2]/div[2]/div/div/input              ${DadosLojista}[telefone]
    Click        xpath=/html/body/div[1]/main/div/main/div/div/form/div[15]/div[1]/div[2]/div/div[3]/div[2]/div/div/div/div/span[2]
    Click        text=Loja com estoque físico
    Fill Text    id=description         ${DadosLojista}[descricao]
    
Adicionar Logo
    [Arguments]     ${DadosLojista}
    
    ${Logo}=Promise To Upload File  ${EXECDIR}/resources/fixtures/thumbnails/${DadosLojista}[logo]
    Click         xpath=/html/body/div[1]/main/div/main/div/div/form/div[13]/div[2]/div[1]/div/span/div/div/span
    Wait For        ${Logo}                                                                                                       
