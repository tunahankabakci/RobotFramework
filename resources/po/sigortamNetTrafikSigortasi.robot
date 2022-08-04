*** Settings ***
Library    SeleniumLibrary
Library    DebugLibrary
Variables   ../../config/trafiksigortasiprod.py

*** Keywords ***
Go to Homepage
    Go To   ${HOMEPAGE_TRAFIK}
    Wait Until Page Contains   Sigortada Güvenin Adresi


Click on Trafik Sigortasi
    Wait Until Page Contains Element    css=div:nth-of-type(1) > .branch-list__boxItem
    Click Element   css=div:nth-of-type(1) > .branch-list__boxItem

Check the Trafik Sigortasi Page
    Wait Until Page Contains    Zorunlu Trafik Sigortası Fiyatlarını Karşılaştır, Hemen Teklif Al
    Page Should Contain Element    css=.branch-page__hero.color-bg-21 .app-button.app-button--default.app-button--md.button
    Table Header Should Contain    css=.table-borderless    Tarife Basamak Kodu
    Page Should Contain Image    css=img[alt='Doğru Ürün']

Click on Trafik Sigortası Teklifi Al
    Wait Until Page Contains    Zorunlu Trafik Sigortası Fiyatlarını Karşılaştır, Hemen Teklif Al
    Click Element    css=.branch-page__hero.color-bg-21 .app-button.app-button--default.app-button--md.button

Check the Trafik Sigortası Teklifi Al Page
    Wait Until Page Contains Element    name=tc-or-tax-no-input
    Page Should Contain Button    css=button[type="submit"]


Check the Empty Input Areas Error
    Reload Page
    Wait Until Page Contains Element    name=tc-or-tax-no-input
    Wait Until Page Contains Element    name=phone
    Click Element   name=tc-or-tax-no-input
    Click Element   name=phone
    Click Element   name=tc-or-tax-no-input
    Wait Until Page Contains Element    css=.input.mb-4.tc-tax-input > .form__error > small
    Wait Until Page Contains Element    css=.input.phone-input > .form__error > small
    Element Should Contain  css=.input.mb-4.tc-tax-input > .form__error > small   TC Kimlik No alanı dolu olmalıdır.
    Element Should Contain  css=.input.phone-input > .form__error > small    Cep Telefonu alanını eksiksiz girmelisin.
    Element Should Be Disabled  css=button[type="submit"]

Check the Wrong Input Areas Error
    Reload Page
    Wait Until Page Contains Element    name=tc-or-tax-no-input
    Wait Until Page Contains Element    name=phone
    Input Text  name=tc-or-tax-no-input    ${F_TCKN}
    Input Text   name=phone  ${F_PHONE}
    Click Element   name=tc-or-tax-no-input
    Wait Until Page Contains Element    css=.input.mb-4.tc-tax-input > .form__error > small
    Wait Until Page Contains Element    css=.input.phone-input > .form__error > small
    Element Should Contain  css=.input.mb-4.tc-tax-input > .form__error > small   Eksik veya yanlış rakam girmiş olabilirsin, lütfen kontrol et.
    Element Should Contain  css=.input.phone-input > .form__error > small    Geçerli bir telefon numarası girmelisin.
    Element Should Be Disabled  css=button[type="submit"]

Check the Incomplete Input Areas Error
    Reload Page
    Wait Until Page Contains Element    name=tc-or-tax-no-input
    Wait Until Page Contains Element    name=phone
    Input Text  name=tc-or-tax-no-input    ${I_TCKN}
    Input Text   name=phone  ${I_PHONE}
    Click Element   name=tc-or-tax-no-input
    Wait Until Page Contains Element    css=.input.mb-4.tc-tax-input > .form__error > small
    Wait Until Page Contains Element    css=.input.phone-input > .form__error > small
    Element Should Contain  css=.input.mb-4.tc-tax-input > .form__error > small   TC Kimlik No alanını eksiksiz girmelisin.
    Element Should Contain  css=.input.phone-input > .form__error > small    Cep Telefonu alanını eksiksiz girmelisin.
    Element Should Be Disabled  css=button[type="submit"]

Check the True Input Areas
    Reload Page
    Wait Until Page Contains Element    name=tc-or-tax-no-input
    Wait Until Page Contains Element    name=phone
    Input Text  name=tc-or-tax-no-input    ${T_TCKN}
    Simulate Event  name=tc-or-tax-no-input  blur
    Page Should Not Contain Element    css=.input.mb-4.tc-tax-input > .form__error > small
    Wait Until Page Contains Element    css=div:nth-child(1)>.app-checkbox__label>.checkmark
    Page Should Contain Link  css=a[href="/kullanici-sozlesmesi"]
    Page Should Contain Link  css=a[href="/gizlilik-politikasi"]
    Page Should Not Contain Element    css=.input.phone-input > .form__error > small
    Wait Until Page Contains Element    css=div:nth-child(2)>.app-checkbox__label>.checkmark
    Page Should Contain Link  css=a[href="/kisisel-verilerin-korunmasi-kanunu-hakkinda-bilgilendirme"]
    Page Should Contain Link  css=a[href="/acik-riza-metni-son"]
    Input Text   name=phone  ${T_PHONE}
    Page Should Not Contain Element    css=.input.phone-input > .form__error > small
    Click Element  css=div:nth-child(1)>.app-checkbox__label>.checkmark
    Click Element  css=div:nth-child(2)>.app-checkbox__label>.checkmark
    Element Should Be Enabled  css=button[type="submit"]






