*** Settings ***
Resource    ../PageObjects/common.robot
Library     OperatingSystem


*** Keywords ***
Login To The ControlPanel
    Opening Browser    ${site_url}${login}    ${browser}
    Maximize Browser Window
    Wait Until Page Contains Element    ${Username_Locator}
    Fill username & password
    Click on Login button
    Home page is opened Successfully

# ===================== Details for Every Step =======================

Fill username & password
    Input Text    ${Username_Locator}    ${object["Login"]["username"]}
    Input Text    ${password_Locator}    ${object["Login"]["password"]}

Click on Login button
    Click Element    ${Login_Button}

Home page is opened Successfully
    Wait Until Page Contains Element    ${Success_Login}    timeout=10
