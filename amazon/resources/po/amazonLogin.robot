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