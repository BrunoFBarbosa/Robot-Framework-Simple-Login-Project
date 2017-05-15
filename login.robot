*** Settings ***
Library     Selenium2Library

Resource    login_keywords/keywords.robot


*** Variables ***
${valid_email}	thiagosouzalima@dayrep.com
${valid_password}	P4$$w0rd

*** Test Cases ***

Valid Login
    [Tags]  valid_login
    Initialize Browser
    Fill Info And Login  ${valid_email}     ${valid_password}
    Wait Until Page Contains    Não é você? Sair	15
    Location Should Contain    minhaconta.americanas
    Close Browser

Invalid Login Wrong Pass
    [Tags]  invalid_pass
    Initialize Browser
    Fill Info And Login  ${valid_email}     wrongpass
    Wait Until Page Contains    E-mail ou senha incorretos	15
    Close Browser

Invalid Login Wrong Email
    [Tags]  invalid_email
    Initialize Browser
    Fill Info And Login  wrongemail@giropops.com      ${valid_password}
    Wait Until Page Contains    E-mail ou senha incorretos	15
    Close Browser

