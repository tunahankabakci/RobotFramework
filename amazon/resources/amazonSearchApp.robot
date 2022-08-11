*** Settings ***
Library    SeleniumLibrary
Resource   ./po/amazonSearch.robot



*** Keywords ***
Search on Amazon
    amazonSearch.Go to Login
    amazonSearch.Enter mail text
    amazonSearch.Enter password text
    amazonSearch.Search part
    amazonSearch.Order Product




