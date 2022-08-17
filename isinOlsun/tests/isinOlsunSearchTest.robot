*** Settings ***
Library    SeleniumLibrary
Library    DebugLibrary
Resource    ../resources/isinOlsunSearchApp.robot
Resource    ../resources/utilsApp.robot

Test Setup    utilsApp.create session
Test Teardown    utilsApp.close session


*** Test Cases ***

Verify isinOlsun Search
  isinOlsunSearchApp.Search on isinOlsun