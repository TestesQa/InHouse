*Settings*
Documentation    Ações para Fornecedor

*Keywords*
Ir Para Fornecedor
    Click       text=Fornecedor
    Click       text=Gerenciar Fornecedor
    Wait For Elements State     text=Fornecedores       visible     5

Cadastrar Fornecedor Sucesso
    [Arguments]     ${DadosLojista}

    Click       text=Cadastrar
    Wait For Elements State     text=Cadastrar Fornecedor

    Fill Text   id=corporateName        ${DadosLojista}[razaosocial]
    Fill Text   id=brandName            ${DadosLojista}[nomemarca]
    Fill Text   xpath=//*[@id="root"]/main/div/main/div/div/form/div[3]/div[2]/div[1]/div/input         ${DadosLojista}[cnpj]
    Click       xpath=/html/body/div[1]/main/div/main/div/div/form/div[4]/div[2]/div/div/div/div/span[2]        
    Click        css=div[title=Brasil]
    Fill Text   xpath=//*[@id="root"]/main/div/main/div/div/form/div[5]/div[2]/div/div/input            ${DadosLojista}[cep]
    Fill Text   id=address_number       ${DadosLojista}[numero]
# DADOS ADICIONAIS
    Click       text=Adicionar Dados Opcionais
    Fill Text   id=stateRegistration    ${DadosLojista}[estadual]
    Fill Text   id=email                ${DadosLojista}[email]
    Fill Text   xpath=//*[@id="root"]/main/div/main/div/div/form/div[12]/div/div[2]/div/div[3]/div[2]/div/div/input     ${DadosLojista}[telefone]
    
#   CLick       text=Salvar
    
       

    


