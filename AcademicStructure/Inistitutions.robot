*** Settings ***
Library     SeleniumLibrary
Resource    ../AcademicStructure/Login.robot
Resource    ../AcademicStructure/common.robot
Variables    ../TestData/TestData.py
Variables   ../Locators/locators.py

*** keywords***
Open the Institution page
    Wait Until Page Contains Element    ${Institution_Link}
    Click Element    ${Institution_Link}

Click button Add new Inistitutions
    Wait Until Page Contains Element     ${Add_Inistitutions}
    Click Element  ${Add_Inistitutions}
Fill field Institution Code
    Input Text    ${Institution_Code_Field}    ${Institution_Code}
Fill field Institution Name
    Input Text    ${Institution_Name_Field}    ${Institution_Name}

Select field Institutional Type
    Click Element    ${Institutional_Type_Field}
    sleep  2
    Wait Until Page Contains Element    ${Institutional_Type_Selected}    timeout=10
    Click Element    ${Institutional_Type_Selected}
Fill field Website
    Input Text    ${Website_Field}    ${Website}
Fill field Email
    Input Text    ${Email_Field}    ${Email}
Select field Ownership
    Click Element    ${Ownership_Field}
    Wait Until Page Contains Element    ${Ownership_Selected}
    Click Element    ${Ownership_Selected}
Fill field Institution Location
    Input Text    ${Location_Field}    ${Location}
Fill field MOE Number
    Input Text    ${MOE_Number_Field}    ${MOE_Number}
Select field Time Zone
    Click Element    ${Time_Zone_Field}
    Wait Until Page Contains Element    ${Time_Zone_Selected}
    Click Element    ${Time_Zone_Selected}
Select field Date of establishment
    Click Element    ${Date_of_establishment_Field}
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