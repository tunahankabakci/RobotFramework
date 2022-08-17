*** Settings ***
Library    SeleniumLibrary
Library    DebugLibrary
Resource    ../resources/amazonLoginApp.robot
Resource    ../resources/utilsApp.robot

Test Setup    utilsApp.create session
Test Teardown    utilsApp.close session


*** Test Cases ***

Verify amazon Login
    amazonLoginApp.Login Amazon