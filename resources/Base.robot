*Settings*
Documentation   Arquivo principal do projeto de automação

Library         Browser

Resource        actions/Login.robot
    
*Keywords*
Start Session
    New Browser     chromium    False
    New page        https://neer.stag.dev.luby.com.br/

Finish Test
    Take ScreenShot

Take ScreenShot And Logout
    Take ScreenShot
    Do logout
