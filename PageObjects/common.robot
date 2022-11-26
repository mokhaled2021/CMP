*** Settings ***
Library         SeleniumLibrary
Variables       ../PageObjects/Locators/locators.py
Resource        ../PageObjects/LoginPage.robot


*** Variables ***
${site_url}     https://sis.medadstg.com
${login}        /#login
${browser}      Chrome
#read from json file
${json} =       Get file    ${EXECDIR}\\PageObjects\\TestData\\testdata.json
${object} =     Evaluate    json.loads('''${json}''')    json


*** Keywords ***
Opening Browser
    [Arguments]    ${site_url}    ${browser}
    Open Browser    ${site_url}    ${browser}
    Wait Until Page Contains Element    ${Username_Locator}

Open the AcademicStructure page
    Login To The ControlPanel
    Click Element    ${Academic_Structure}

Open the Admission page
    Login To The ControlPanel
    Click Element    ${Admission}

closing Browser
    close Browser
