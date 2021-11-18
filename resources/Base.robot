*Settings*
Documentation    Arquivo principal do projeto de automação

Library     Browser
#Library    SeleniumLibrary


Resource    Helpers.robot
Resource    actions/AlertMessage.robot
Resource    actions/LoginActions.robot
Resource    actions/CadAdm.robot
Resource    actions/CadLojista.robot
Resource    actions/CadClienteActions.robot


*Keywords*
Start Session
    New Browser    chromium                              False
    New page       https://neer.stag.dev.luby.com.br/

Finish Test
    Take ScreenShot

Take ScreenShot And Logout
    Take ScreenShot
    Do logout
