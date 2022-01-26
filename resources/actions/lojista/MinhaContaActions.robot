*Settings*
Documentation    Ação de Minha Conta Lojista

*Keywords*

Ir para Minha Conta

    Click       xpath=//*[@id="root"]/main/div/main/header/div[2]/span/img
    Click       text=Minha Conta

Atualizar Dados Lojista

    Wait For Elements State     text=Minha Conta    visible     5
    Click       text=Editar
    Fill Text   id=address_complement       Atualizado
    Click       text=Salvar