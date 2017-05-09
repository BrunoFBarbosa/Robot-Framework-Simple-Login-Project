*** Settings ***
Library     Selenium2Library

Resource    login_keywords/keywords.robot


*** Variables ***
${valid_email}	thiagosouzalima@dayrep.com
${valid_password}	P4$$w0rd

*** Test Cases ***

Valid Login
    Initialize Browser
    Fill Info And Login  ${valid_email}     ${valid_password}
    Wait Until Page Contains    Não é você? Sair	15
    Location Should Contain    minhaconta.americanas
    Close Browser

Invalid Login Wrong Pass
    Initialize Browser
    Fill Info And Login  ${valid_email}     wrongpass
    Wait Until Page Contains    E-mail ou senha incorretos	10
    Close Browser

Invalid Login Wrong Email
    Initialize Browser
    Fill Info And Login  wrongemail@giropops.com      ${valid_password}
    Wait Until Page Contains    E-mail ou senha incorretos	10
    Close Browser


