*** Settings ***
Library    SeleniumLibrary
Library    DebugLibrary
Variables   ../../config/isinOlsun.py

*** Variables ***
${TIMEOUT}  10

*** Keywords ***
Go to Is ilanlari
    Go To   ${isin_olsun_ilanlar}

Click
    [Arguments]    ${LOCATOR}
    Wait Until Page Contains Element  ${LOCATOR}  ${TIMEOUT}
    Page Should Contain Element  ${LOCATOR}
    Click Element  ${LOCATOR}

Get Text Input
    [Arguments]    ${LOCATOR}
    Wait Until Page Contains Element  ${LOCATOR}  ${TIMEOUT}
    ${TEXT} =  Get Text  ${LOCATOR}
    [Return]   ${TEXT}
