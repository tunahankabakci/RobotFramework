*** Settings ***
Library    SeleniumLibrary
Library    DebugLibrary
Variables   ../../config/amazon.py
Resource    ./utils.robot
*** Keywords ***
Go to Login
    utils.Go to Login page

Enter mail text
    utils.Enter mail

Enter password text
    utils.Enter password

Search part
    utils.Search button  bilgisayar
#    utils.Search button  telefon
#    utils.Search button  kitap

Order Product
    utils.Add product
    utils.Order Control

