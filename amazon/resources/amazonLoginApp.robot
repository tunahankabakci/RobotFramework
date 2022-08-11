*** Settings ***
Library    SeleniumLibrary
Resource   ./po/amazonLogin.robot



*** Keywords ***
Login Amazon
    amazonLogin.Go to Login
    amazonLogin.Enter mail text
    amazonLogin.Enter password text