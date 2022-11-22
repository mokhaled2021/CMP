*** Settings ***
Resource    ../KeywordDefinationFiles/common.robot

*** keywords***
Add new Campuses
    Open the AcademicStructure page
    Open the Cumpuses page
    Click button Add new campuses
    Fill Form of Add campuses
    click submit Campus

Open the Cumpuses page
    Wait Until Page Contains Element    ${Campuses_Link}
    Click Element    ${Campuses_Link}

Click button Add new campuses
    Wait Until Page Contains Element     ${Add_Campuses}     timeout=10
    Click Element  ${Add_Campuses}

Fill field Campus Name
    Wait Until Element Is Visible    /html/body/div[11]   timeout=10
    Wait Until Element Is Enabled    /html/body/div[11]   timeout=10
    Input Text   ${Campus_name_Locator}  ${Campus_name}
Fill field Campus Code
    Input Text Into Alert    ${campus_code_Locator}    ${Campus_code}
Fill field campus Location
    Input Text Into Alert    ${campus_location_Locator}    ${Campus_location}
click submit Campus
    Wait Until Page Contains Element    ${Submit_Campus}
    Click Element    ${Submit_Campus}
Fill Form of Add campuses
    Fill field Campus Name
    Fill field Campus Code
    Fill field campus Location
