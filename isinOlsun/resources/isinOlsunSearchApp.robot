*** Settings ***
Library    SeleniumLibrary
Resource   ./po/isinOlsunSearch.robot



*** Keywords ***
Search on isinOlsun
  isinOlsunSearch.Go to isinOlsun ilanlar page
  isinOlsunSearch.Click Calisma turu
  isinOlsunSearch.Click Gunluk hizmet
  isinOlsunSearch.Get Text Gunluk hizmet
