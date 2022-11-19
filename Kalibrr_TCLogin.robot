*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library   SeleniumLibrary
Library    XML

*** Variables ***
${url}    https://www.kalibrr.com
${Masuk}    xpath=/html/body/kb-root/kb-home-page/kb-public-view/kb-navbar/div[1]/nav/span[2]/a/span
${Masuk3}    id=menu-item-21
${userName}    id=login-email
${password}      id=login-password
${Masuk2}        xpath=/html/body/kb-root/kb-login-page/kb-public-view/div/div/div/form/div[2]/div/button[1]/div
${InputJob}    xpath=//*[@id="job-board-kalibrr"]/div/kb-job-search/div/div[1]/div[1]/input
${BtnSearchJob}    xpath=/html/body/div[1]/div[2]/div/div/div/div/div/kb-job-search/div/div[1]/div[2]/button

*** Keywords ***
Open Kalibr
    Open Browser    ${url}   chrome
    Maximize Browser Window
    Click Element    ${Masuk3}
    Input Text    ${userName}    Alcatraziot@gmail.com
    Input Password    ${password}    Automation123
    Click Element    ${Masuk2}

*** Test Cases ***  
Login Success
    Open Kalibr
Search Jobs
    Open Kalibr
    Set Element Text    ${InputJob}    Automation
    Click Button    ${BtnSearchJob}