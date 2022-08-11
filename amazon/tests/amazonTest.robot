*** Settings ***
Library    SeleniumLibrary
Library    DebugLibrary
Resource    ../resources/amazonLoginApp.robot
Resource    ../resources/amazonSearchApp.robot
Resource    ../resources/amazonCompareProductTitleApp.robot
Resource    ../resources/utilsApp.robot

Test Setup    utilsApp.create session
Test Teardown    utilsApp.close session


*** Test Cases ***
Verify amazon Login
    amazonLoginApp.Login Amazon
Verify amazon Search
    amazonSearchApp.Search on Amazon
Verify product texts
    amazonCompareProductTitleApp.Compare of Texts
