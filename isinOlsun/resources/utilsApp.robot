*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}  chrome

*** Keywords ***
create session
    Set Selenium Speed  0.5 seconds
    Open Browser    https://www.google.com  ${BROWSER}
    Maximize Browser Window

close session
    Close Browser
