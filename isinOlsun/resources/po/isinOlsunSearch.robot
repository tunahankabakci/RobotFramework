*** Settings ***
Library    SeleniumLibrary
Library    DebugLibrary
Variables   ../../config/isinOlsun.py
Resource    ./utils.robot

*** Keywords ***

Go to isinOlsun ilanlar page
  utils.Go to Is ilanlari

Click Calisma turu
  utils.click  ${calisma_turu}

Click Gunluk hizmet
  utils.click  ${gunluk_hizmet}

Get Text Gunluk hizmet
    ${TEXT}=  utils.Get Text Input  ${gunluk_hizmet}
    Should Be Equal   ${TEXT}  Günlük hizmet




