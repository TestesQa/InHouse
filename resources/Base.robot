*Settings*
Documentation    Arquivo principal do projeto de automação

Library     Browser
#Library    SeleniumLibrary

############### Ações ADMIN ############################################
Resource    Helpers.robot
Resource    actions/admin/AlertMessage.robot
Resource    actions/admin/LoginActions.robot
Resource    actions/admin/CadAdm.robot
Resource    actions/admin/CadLojista.robot
Resource    actions/admin/CadClienteActions.robot
Resource    actions/admin/ListagemActions.robot
Resource    actions/admin/AtualizaActions.robot

############## Ações LOJISTA ########################################
Resource    actions/lojista/MinhaContaActions.robot
Resource    actions/lojista/LojasActions.robot
Resource    actions/lojista/FornecedorActions.robot
Resource    actions/lojista/CategoriaActions.robot
Resource    actions/lojista/ProdutoActions.robot
Resource    actions/lojista/AnuncioActions.robot
# Resource    actions/lojista/TransferenciaActions.robot
# Resource    actions/lojista/CompraActions.robot
# Resource    actions/lojista/EstoqueActions.robot
# Resource    actions/lojista/VendaActions.robot

*Keywords*
Start Session
    New Browser    chromium                              False
    New page       https://neer.stag.dev.luby.com.br/

Finish Test
    Take ScreenShot

Take ScreenShot And Logout
    Take ScreenShot
    Do logout
