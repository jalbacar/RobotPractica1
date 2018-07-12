*** Settings ***

*** Variables ***

*** Keywords ***
usuario con credenciales correctas
    log  precondicion-credenciales ok
usuario introducde el username
    log  intro username
usuario introduce la clave
    log  intro clave
le aparece el profile de usuario
    log  pantalla user profile ok


*** Test Cases ***
Usuario accede al sistema con credenciales correctas
    [Tags]  gherkin
    Given usuario con credenciales correctas
    When usuario introducde el username
    And usuario introduce la clave
    Then le aparece el profile de usuario