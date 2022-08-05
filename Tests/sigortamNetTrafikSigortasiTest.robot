*** Settings ***
Library    SeleniumLibrary
Library    DebugLibrary
Resource    ../resources/sigortamNetTrafikSigortasiApp.robot
Resource    ../resources/utilsApp.robot

Test Setup    utilsApp.create session
Test Teardown    utilsApp.close session


*** Test Cases ***
Verify Trafik Sigortasi Empty scenario
    sigortamNetTrafikSigortasiApp.Go to Trafik Sigortası Teklifi Al Page
    sigortamNetTrafikSigortasiApp.Check the empty Scenario
Verify Trafik Sigortasi Wrong scenario
    sigortamNetTrafikSigortasiApp.Go to Trafik Sigortası Teklifi Al Page
    sigortamNetTrafikSigortasiApp.Check the wrong Scenario
Verify Trafik Sigortasi incomplete scenario
    sigortamNetTrafikSigortasiApp.Go to Trafik Sigortası Teklifi Al Page
    sigortamNetTrafikSigortasiApp.Check the incomplete Scenario
Verify Trafik Sigortasi true scenario
    sigortamNetTrafikSigortasiApp.Go to Trafik Sigortası Teklifi Al Page
    sigortamNetTrafikSigortasiApp.Check the true Scenario



