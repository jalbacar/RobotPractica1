*** Settings ***
Library  Telnet
Library  Collections
Test Timeout  10

*** Variables ***
${ip}  64.13.139.230
${port}  80

*** Test Cases ***
Conectarse a sistema via telnet
    Open Connection  ${ip}  ${port}
    Set Prompt  user
    Set Newline  CRLF
    Read until  user

Obtener informacion del sistema conectado
    ${out}=  Execute Command  help
    ${item}=  Get From List  ${out}  0
    #should match regexp  ${item}  /^_3/
    log  ${out}

Desconectarse del sistema remoto
    Close All Connections