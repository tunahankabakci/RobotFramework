*** Settings ***
Library    SeleniumLibrary
Library    DebugLibrary
Resource    ../resources/amazonSearchApp.robot
Resource    ../resources/utilsApp.robot

Test Setup    utilsApp.create session
Test Teardown    utilsApp.close session


*** Test Cases ***

Verify amazon Search
    amazonSearchApp.Search on Amazon