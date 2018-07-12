*** Settings ***
Library  SeleniumLibrary
Library  ../External/common.py

*** Variables ***
${Browser}  Firefox
${URL}  https://www.mercadona.es

*** Keywords ***
Accion que retorna un valor
    [Arguments]  ${parametro1}

    [Return]  Valor retornado ${parametro1}

KeywordA
    ${resultado}=  Conectarme al sistema remoto de creacion de helados
    log  KeyA${resultado}

KeywordB
    log  KeyB

KeywordC
    log  KeyC

Accion que recibe parametro y en funcion del mismo realiza accion A o B
    [Arguments]  ${edad}
    Run Keyword IF  ${edad} > 17  KeywordA
    ...          ELSE IF  ${edad} == 17  KeywordC
    ...          ELSE  KeywordB

*** Test Cases ***
Abrir y cerrar navegador
  [Tags]  wip
  Open Browser  ${URL}  ${Browser}
  Maximize Browser Window
  Lista productos de la web Z  o-info
  #Input Text  xpath://input[@id='lst-ib']  robotframework
  #Click Button  name=btnK
  sleep  3
  Close Browser

Abrir enlace que contiene "robot" en su descripcion
  [Tags]  enlaces  browser
  Open Browser  ${URL}  ${Browser}
  Maximize Browser Window
  Click Link  xpath://a[contains(text(),'Robot')]
  ${valor retornado}  Accion que retorna un valor  Ricardo
  log  Valor retornado por al keyword es ${valor retornado}
  Close Browser

Test Case para comprobar condicionales
    Accion que recibe parametro y en funcion del mismo realiza accion A o B  18




