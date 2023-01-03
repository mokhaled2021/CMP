*** Settings ***
Resource    ../commons/common.robot


*** Keywords ***
Navigate to Add College
    Open the AcademicStructure page
    Open the Colleges page
    Click add colleges button

Fill out Colleges Details
    ${json}=    Get file    ${EXECDIR}\\PageObjects\\TestData\\testdata.json
    ${object}=    Evaluate    json.loads('''${json}''')    json
    sleep    1
    Input Text    ${College_Name_Locator}    ${object["Colleges"]["College_Name"]}
    Input Text    ${College_Code_Locator}    ${object["Colleges"]["College_Code"]}
    Select field Establishment Date
    Add the related Campus

Open the Colleges page
    Wait Until Page Contains Element    ${College_Link}
    Click Element    ${College_Link}

Click add colleges button
    sleep    2
    Wait Until Page Contains Element    ${Add_College}    timeout=10
    Click Element    ${Add_College}

Select field Establishment Date
    Click Element    ${Establishment_date_Locator}
    Wait Until Page Contains Element    ${Establishment_date}
    Click Element    ${Establishment_date}

Add the related Campus
    Click Element    ${Open_campus_collapse}
    sleep    2
    Wait Until Page Contains Element    ${Add_capmus_row}
    Click Element    ${click_in_campus_row}
    sleep    2
    Input Text    //input[@placeholder='Campus Name']    Helwan
    sleep    1
    Press Keys    //input[@placeholder='Campus Name']    ENTER

Create College By API
    [Arguments]    ${doctype}    ${collegeName}
    ${authorization}=    Create List    d969e59bcd0761b    30c81a805de0ef7
    ${campus}=    Create Dictionary    campus=Cairo_male
    ${array}=    Create List    ${campus}
    ${body}=    Create Dictionary    name=${collegeName}
...    college_name=${collegeName}
...    college_code=${collegeName}
...    college_external_code=test33
...    campuses=${array}
    Create Session    CreateDoctype    ${site_url}    auth=${authorization}
    POST On Session    CreateDoctype    /api/resource/${doctype}    json=${body}

Submit College Form
    Click Element    ${Submit_college}
    sleep    2
    Wait Until Page Contains Element    ${Successfully_Saved}
