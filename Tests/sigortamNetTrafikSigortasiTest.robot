*** Settings ***
Library    SeleniumLibrary
Library    DebugLibrary
Resource    ../resources/sigortamNetTrafikSigortasiApp.robot
Resource    ../resources/utilsApp.robot

Test Setup    utilsApp.create session
Test Teardown    utilsApp.close session


*** Test Cases ***
Verify Trafik Sigortasi
    sigortamNetTrafikSigortasiApp.Go to Trafik Sigortası Teklifi Al Page
    sigortamNetTrafikSigortasiApp.Check the all Scenario


