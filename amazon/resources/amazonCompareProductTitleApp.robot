*** Settings ***
Library    SeleniumLibrary
Resource   ./po/amazonCompareProductTitle.robot



*** Keywords ***
Compare of Texts
    amazonCompareProductTitle.Go to Login
    amazonCompareProductTitle.Search part
    amazonCompareProductTitle.Product text control