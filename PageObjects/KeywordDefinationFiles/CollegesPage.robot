*** Settings ***
Resource    ../KeywordDefinationFiles/common.robot

*** keywords***
Add new College
    Open the AcademicStructure page
    Open the Colleges page
    Click add colleges button
    Fill Form of Add Colleges
    Click submit college button

Fill Form of Add Colleges
    Fill field College Name
    Fill field College Code
    Select field Establishment Date
    Add the related Campus
Open the Colleges page
    Wait Until Page Contains Element    ${College_Link}
    Click Element    ${College_Link}
Click add colleges button
    Wait Until Page Contains Element     ${Add_College}  timeout=10
    Click Element  ${Add_College}
Fill field College Name
    Input Text    ${College_Name_Locator}   ${College_Name}
Fill field College Code
    Input Text    ${College_Code_Locator}  ${College_Code}
Select field Establishment Date
    Click Element    ${Establishment_date_Locator}
    Wait Until Page Contains Element    ${Establishment_date}
    Click Element    ${Establishment_date}

Add the related Campus
    Click Element    ${Open_campus_collapse}
    Wait Until Page Contains Element   ${Add_capmus_row}
    Click Element    ${click_in_campus_row}
    Wait Until Page Contains Element  ${Select_campus}
    Click Element   ${Select_campus} 

Click submit college button
    Click Element    ${Submit_college}
    Wait Until Page Contains Element    ${Successfully_Saved}

