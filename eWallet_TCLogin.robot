*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library   SeleniumLibrary
Library    XML

*** Variables ***
${url}    https://10.243.133.213:1191/sign-in
${FieldUserName}    id = mat-input-0
${FieldPassword}    id = mat-input-1
${bypass1}    id=details-button
${bypass2}    id=proceed-link
${btn_login}    class = mat-button-wrapper

*** Test Cases ***
Buka wallet
    Open Browser    ${url}   chrome
    Maximize Browser Window
    Click Element    ${bypass1}
    Click Element    ${bypass2}
Login
    Input Text    ${FieldUserName}    fikri
    Input Text    ${FieldPassword}    P@ssword1!
    Click Button    ${btn_login}