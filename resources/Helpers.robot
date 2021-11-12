*Settings*
Documentation    Carregamento de massa de teste

Library    OperatingSystem

*Keywords*
Get DadosCad
    [Arguments]    ${DadosCad}

    ${fixture}    Get File    ${EXECDIR}/resources/fixtures/DadosCad.json
    ${json}       Evaluate    json.loads($fixture)                           json

    ${select_DadosCad}    Set Variable    ${json}[${DadosCad}]

    [Return]    ${select_DadosCad}
