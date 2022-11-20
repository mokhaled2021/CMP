*** Settings ***
Library     SeleniumLibrary  
Variables   ../TestData/Testdata.py
Variables   ../Locators/locators.py
Resource    ../KeywordDefinationFiles/LoginPage.robot
Resource    ../KeywordDefinationFiles/CampusesPage.robot
Resource    ../KeywordDefinationFiles/CollegesPage.robot
Resource    ../KeywordDefinationFiles/InistitutionsPage.robot


*** Variables ***
${site_url}       https://sis.medadstg.com
${login}          /#login
${browser}      Chrome

*** Keywords ***
Opening Browser
    [Arguments]   ${site_url}  ${browser}
    Open Browser  ${site_url}  ${browser}
    Wait Until Page Contains Element  ${Username_Locator}

Open the AcademicStructure page
    Login To The ControlPanel   ${username}  ${password}
    Click Element    ${Academic_Structure}

closing Browser
    close Browser