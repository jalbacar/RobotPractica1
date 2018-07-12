*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/common.robot
Test Setup  Ir a Amazon.es
Test Teardown  close browser

*** Variables ***
${Browser}  chrome
${URL}  https://www.amazon.es

*** Keywords ***
Ir a Amazon.es
    Acceder a url en ventana maximizada  ${URL}


*** Test Cases ***
Comprobar q el titulo de la pagina principal de Amazon contiene "Amazon"
    ${titulo pagina}=  Get Title
    should start with  ${titulo pagina}  Amazon
    sleep  1

Acceder a login a partir del acceso superior de identificacion
    #${elemento singin}=  Get Webelement  id=nav-link-accountList
    #Click Link  id=nav-link-accountList
    Click Link  xpath://a[@data-nav-role = 'signin']
    sleep  2
    ${atributo boton}= Get Element Attribute  id=continue  type
    should be equal as strings  ${atributo boton}  submit




