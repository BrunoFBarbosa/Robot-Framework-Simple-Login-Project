*** Settings ***
Library     Selenium2Library

*** Variables ***

${login_button_locator}     submit_button
${email_locator}    email
${pass_locator}     password

*** Keywords ***
Fill Info And Login
    [Arguments]     ${anemail}      ${apass}
    Input Text      ${email_locator}     ${anemail}
    Input Text      ${pass_locator}     ${apass}
    Click Element   ${login_button_locator}


Initialize Browser
    Open Browser    https://cliente.americanas.com.br/    gc    chrome      http://172.17.0.1:4444/wd/hub
    Maximize Browser Window







