*** Settings ***
Library     SeleniumLibrary  
Variables   ../TestData/TestData.py
Variables   ../Locators/locators.py
Resource    ../KeywordDefinationFiles/Login.robot
Resource    ../KeywordDefinationFiles/campuses.robot
Resource    ../KeywordDefinationFiles/Colleges.robot
Resource    ../KeywordDefinationFiles/Inistitutions.robot
Resource    Inistitutions.robot
Resource    Colleges.robot
Resource    campuses.robot

*** Variables ***
${site_url}     https://sis.medadstg.com
${login}        /#login
${browser}      Chrome

*** Keywords ***
Opening Browser
    [Arguments]   ${site_url}  ${browser}
    Open Browser  ${site_url}  ${browser}
    Wait Until Page Contains Element  ${Username_field}

Open the AcademicStructure page
    User Login  ${username}  ${password}
    Click Element    ${Academic_Structure}

closing Browser
    close Browser