*** Settings ***
Library    SeleniumLibrary
Library    DebugLibrary
Variables   ../../config/amazon.py
Resource    ./utils.robot
Resource    ../amazonLoginApp.robot
*** Keywords ***
Go to Login
    amazonLoginApp.Login Amazon

Search part
    utils.Search button  bilgisayar
#    utils.Search button  telefon
#    utils.Search button  kitap

Order Product
    utils.Add product
    utils.Order Control

