*** Settings ***
Library     SeleniumLibrary
Resource    ../AcademicStructure/Login.robot
Resource    ../AcademicStructure/common.robot
Variables    ../TestData/TestData.py
Variables   ../Locators/locators.py
Library    OperatingSystem

*** keywords***
Open the Cumpuses page
    Wait Until Page Contains Element    ${Campuses_Link}
    Click Element    ${Campuses_Link}

Click button Add new campuses
    Wait Until Page Contains Element     ${Add_Campuses}     timeout=10
    Click Element  ${Add_Campuses}

Fill field Campus Name
    Wait Until Element Is Visible    /html/body/div[11]   timeout=10
    Wait Until Element Is Enabled    /html/body/div[11]   timeout=10
    Input Text   ${Campus_name_field}  ${Campus_name}
Fill field Campus Code
    Input Text Into Alert    ${campus_code_field}    ${Campus_code}
Fill field campus Location
    Input Text Into Alert    ${campus_location_field}    ${Campus_location}
click submit Campus
    Wait Until Page Contains Element    ${Submit_Campus}
    Click Element    ${Submit_Campus}
Fill Form of Add campuses
    Fill field Campus Name
    Fill field Campus Code
    Fill field campus Location
