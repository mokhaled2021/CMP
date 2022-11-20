*** Settings ***
Resource    ../KeywordDefinationFiles/common.robot

*** keywords***
Open the Institution page
    Wait Until Page Contains Element    ${Institution_Link}
    Click Element    ${Institution_Link}

Add new Inistitutions
    Open the AcademicStructure page
    Open the Institution page
    Click button Add new Inistitutions
    Fill Form of Add Inistitutions
    click submit Institution Button

Click button Add new Inistitutions
    Wait Until Page Contains Element     ${Add_Inistitutions}
    Click Element  ${Add_Inistitutions}
Fill field Institution Code
    Input Text    ${Institution_Code_Locator}    ${Institution_Code}
Fill field Institution Name
    Input Text    ${Institution_Name_Locator}    ${Institution_Name}

Select field Institutional Type
    Click Element    ${Institutional_Type_Locator}
    sleep  2
    Wait Until Page Contains Element    ${Institutional_Type_Selected}    timeout=10
    Click Element    ${Institutional_Type_Selected}
Fill field Website
    Input Text    ${Website_Locator}    ${Website}
Fill field Email
    Input Text    ${Email_Locator}    ${Email}
Select field Ownership
    Click Element    ${Ownership_Locator}
    Wait Until Page Contains Element    ${Ownership_Selected}
    Click Element    ${Ownership_Selected}
Fill field Institution Location
    Input Text    ${Location_Locator}    ${Location}
Fill field MOE Number
    Input Text    ${MOE_Number_Locator}    ${MOE_Number}
Select field Time Zone
    Click Element    ${Time_Zone_Locator}
    Wait Until Page Contains Element    ${Time_Zone_Selected}
    Click Element    ${Time_Zone_Selected}
Select field Date of establishment
    Click Element    ${Date_of_establishment_Locator}
    Wait Until Page Contains Element    ${Date_of_establishment_date}
    Click Element    ${Date_of_establishment_date}

click submit Institution Button
    Wait Until Page Contains Element    ${Submit_Institution}
    Click Element    ${Submit_Institution}
    Wait Until Page Contains Element    ${Successfully_Saved}

Fill Form of Add Inistitutions
    Fill field Institution Code
    Fill field Institution Name
    Select field Institutional Type
    Fill field Website
    Fill field Email
    Select field Ownership
    Fill field Institution Location
    Fill field MOE Number
    Select field Time Zone