*** Settings ***
Library    SeleniumLibrary
Resource   ./po/amazonCompareProductTitle.robot



*** Keywords ***
Compare of Texts
    amazonCompareProductTitle.Go to Login
    amazonCompareProductTitle.Enter mail text
    amazonCompareProductTitle.Enter password text
    amazonCompareProductTitle.Search part
    amazonCompareProductTitle.Product text control