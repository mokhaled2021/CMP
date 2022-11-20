*** Settings ***
Resource    ../KeywordDefinationFiles/common.robot
   
*** Keywords ***
Login To The ControlPanel
    [Arguments]         ${username}            ${password}
    Opening Browser     ${site_url}${login}    ${browser}
    Maximize Browser Window
    Wait Until Page Contains Element  ${Username_field}
    Enter Username
    Enter Password
    Click on Login button 
    Home page is opened Successfully

# ===================== Details for Every Step =======================
Enter Username
    Input Text       ${Username_field}  ${username}
Enter Password
    Input Text       ${password_field}  ${password}
 Click on Login button
    Click Element    ${Login_Button}

Home page is opened Successfully
    Wait Until Page Contains Element   ${Success_Login}   timeout=10