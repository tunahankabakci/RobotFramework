*** Settings ***
Library    SeleniumLibrary
Resource   ./po/amazonSearch.robot



*** Keywords ***
Search on Amazon
    amazonSearch.Go to Login
    amazonSearch.Search part
    amazonSearch.Order Product




