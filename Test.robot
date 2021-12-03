*** Settings ***
Library           SeleniumLibrary
Library           String

*** Variables ***
${URL}            www.google.com

*** Test Cases ***
TestCase01
    Open Browser    ${URL}    headlesschrome
    Maximize Browser Window
    Wait Until Page Contains    React App

TestCase02
    Wait Until Element Is Visible    //*[@id="root"]/div/header/img    timeout=60s

TestCase03
    ${Page_Txt}    Get Text    //*[@id="root"]/div/header/p
    Capture Page Screenshot

TestCase04
    Close Browser
