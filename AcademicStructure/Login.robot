*** Settings ***
Library     SeleniumLibrary
Resource    ../AcademicStructure/common.robot
Resource    Inistitutions.robot
Variables   ../Locators/locators.py
Variables    ../TestData/TestData.py
   
*** Keywords ***
# =========================== Main User Login Function =======================
User Login 
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