*** Settings ***
Suite Setup  Init suite
Suite Teardown  Fin suite

*** Keywords ***
Init suite
    log  Suite...INIT

Fin suite
    log  Suite...FIN
