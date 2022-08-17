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

Product text control
    utils.Compare Product Text