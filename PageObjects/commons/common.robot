*** Settings ***
Library         SeleniumLibrary
Variables       ../Locators/locators.py
Resource        ../commons/LoginPage.robot
Library         RequestsLibrary
Library         Collections
Library         OperatingSystem
Resource        ../commons/excution.resource


*** Keywords ***
Opening Browser
    [Arguments]    ${site_url}    ${browser}
    Open Browser    ${site_url}    ${browser}
    Wait Until Page Contains Element    ${Username_Locator}

Open the AcademicStructure page
    Click Element    ${Academic_Structure}

Open the Admission page
    Click Element    ${Admission_Link}

Successfully Messages Appears After Submitting
    Sleep    2
    Wait Until Page Contains Element    ${Successfully_Saved}
    Sleep    1

Delete Doctype By API
    [Arguments]    ${doctype}    ${doctypevalue}
    ${authorization}=    Create List    d969e59bcd0761b    30c81a805de0ef7
    Create Session    DeleteDoctype    ${site_url}    auth=${authorization}
    DELETE On Session    DeleteDoctype    /api/resource/${doctype}/${doctypevalue}

closing Browser
    close Browser
