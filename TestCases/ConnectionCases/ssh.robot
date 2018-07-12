*** Settings ***
Library  SSHLibrary
Suite Setup  Open Connection And Log in
Suite Teardown  Close All Connections

*** Variables ***
${HOST}  localhost
${USERNAME}  test
${PASSWORD}  test

*** Test Cases ***
Ejecutar comando y comprobar resulado
    [Documentation]  fjdkjfdkjfdk
    ${out}=  Execute Command  echo Esta es una pruebna de RF y SSH
    should be equal  ${out}  Esta es una pruebna de RF y SSH

*** Keywords ***
Open Connection And Log in
    Open Connection  ${HOST}
    Login  ${USERNAME}  ${PASSWORD}