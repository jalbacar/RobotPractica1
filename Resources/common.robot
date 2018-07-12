*** Keywords ***
Inicio sistema
    [Arguments]  ${parametro}=TSuite
    log  Inicio sistema pruebas suite 2 con param ${parametro}

Finalizacion sistema
    [Arguments]  ${parametro}=TSuite
    log  Finalizacion sistema pruebas suite 2 con param ${parametro}

Acceder a url en ventana maximizada
    [Arguments]  ${url}
    open browser  ${url}  chrome
    maximize browser window