*** Settings ***
Library    SeleniumLibrary
Library    DebugLibrary
Variables   ../../config/amazon.py

*** Keywords ***
Go to Login page
    Go To   ${login_url}

Enter mail
    Page Should Contain  ${sign_in_mail_text}
    Wait Until Page Contains Element  ${btn_continue}
    Input Text  ${txt_mail}  ${mail}
    Click Element  ${btn_continue}

Enter password
    Page Should Contain  ${mail}
    Wait Until Page Contains Element  ${btn_sign_in}
    Input Text  ${txt_password}  ${password}
    Click Element  ${btn_sign_in}

Go to Homepage
    Go to   ${amazon_homapage}
    Page Should Contain Element  ${login_page_element1}
    Wait Until Page Contains Element  ${login_page_button}

Search button
    [Arguments]  ${SEARCH}
    Page Should Contain Element  ${login_page_element1}
    Wait Until Page Contains Element  ${login_page_button}
    Input Text  ${search_element}  ${SEARCH}
    Click Element  ${search_button}

Add product
    Click Element  ${product}
    Page Should Contain Element  ${order_button}
    Wait Until Page Contains Element  ${order_page_control}
    Click Element  ${order_button}

Order Control
    Page Should Contain  ${order_text}
    ${AMOUNT}  Get Text  ${product_amount}
    Should Be Equal  ${AMOUNT}  ${order_amount_info}

Compare Product Text
    ${Title}  Get Text  ${product_compare_title}
    Click Element  ${product}
    ${DetailTitle}  Get Text  ${product_compare_detail_title}
    Should Be Equal  ${Title}  ${DetailTitle}
