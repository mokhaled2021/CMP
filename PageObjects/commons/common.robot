*** Settings ***
Library         SeleniumLibrary
Variables       ../Locators/locators.py
Resource        ../commons/LoginPage.robot
Library         RequestsLibrary
Library         Collections
Library         OperatingSystem


*** Variables ***
${site_url}     https://cmp-test.medadstg.com
${login}        /#login
${browser}      Chrome
#read from json file
${json}=        Get file    ${EXECDIR}\\PageObjects\\TestData\\testdata.json
${object}=      Evaluate    json.loads('''${json}''')    json


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

closing Browser
    close Browser
