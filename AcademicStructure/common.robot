*** Settings ***
Library     SeleniumLibrary  
Resource    ../AcademicStructure/Login.robot
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

Add new Inistitutions
    Open the AcademicStructure page
    Open the Institution page
    Click button Add new Inistitutions
    Fill Form of Add Inistitutions
    click submit Institution Button

Add new College
    Open the AcademicStructure page
    Open the Colleges page
    Click add colleges button
    Fill Form of Add Colleges
    Click submit college button

Add new Campuses
    Open the AcademicStructure page
    Open the Cumpuses page
    Click button Add new campuses
    Fill Form of Add campuses
    click submit Campus

closing Browser
    close Browser