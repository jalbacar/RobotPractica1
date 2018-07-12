*** Settings ***
Documentation  Pruebas de escenarios de Suite2
...            para verificar correcto acceso a
...            sistema
Resource  ../Resources/common.robot
Resource  ../InputData/data.robot
Test Setup  Inicio sistema
test teardown  Finalizacion sistema
Library  Remote  http://127.0.0.1:8270


*** Variables ***
${nombre_site}  Amazon

*** Keywords ***
Paso de ejecucion con parametro
    [Arguments]  ${parametro1}

    log  ${parametro1}
*** Test Cases ***
Test Case 1
    [Setup]  Inicio sistema  TCase
    log  Se ha iniciado el TC1 con el site ${nombre site}
    [Teardown]  Finalizacion sistema  TCase

Test Case 2
    log  Se ha iniciado el TC2  console=true

Test Case 3
    [Template]  Paso de ejecucion con parametro
    Juan
    Alberto
    Maria

Test Case 4
    abrir cuenta
    cerrar cuenta
    ${saldo_a_fin_de_mes}=  obtener saldo
    log  Mi saldo es ${saldo_a_fin_de_mes}
    log  ${nombre_site}
