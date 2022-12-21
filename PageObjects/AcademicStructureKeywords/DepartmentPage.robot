*** Settings ***
Resource    ../commons/common.robot


*** Variables ***
${base_URL}     https://cmp-test.medadstg.com/


*** Keywords ***
Navigate to Add Department
    Open the AcademicStructure page
    Open the Department page
    Click add Department button

Fill out Department Details
    ${json}=    Get file    ${EXECDIR}\\PageObjects\\TestData\\testdata.json
    ${object}=    Evaluate    json.loads('''${json}''')    json
    Input Text    ${Department_Name_Locator}    ${object["Department"]["Department_name"]}
    Input Text    ${Department_Code_Locator}    ${object["Department"]["Department_code"]}
    Input Text    ${Department_External_Code}    ${object["Department"]["Department_external_code"]}
    Select field College

Open the Department page
    Wait Until Page Contains Element    ${Department_Link}
    Click Element    ${Department_Link}

Click add Department button
    sleep    2
    Wait Until Page Contains Element    ${Add_Department}    timeout=10
    Click Element    ${Add_Department}

Select field College
    # select college
    Wait Until Page Contains Element    ${Colleges_College_Name_Locator}
    Click Element    ${Colleges_College_Name_Locator}
    sleep    2
    Wait Until Page Contains Element    ${Colleges_College_Name_Option}    timeout=10
    Click Element    ${Colleges_College_Name_Option}
    # select campus
    Wait Until Page Contains Element    ${Colleges_Campus_Name_Locator}    timeout=10
    Input Text    ${Colleges_Campus_Name_Locator}    Arar
    sleep    2
    Press Keys    ${Colleges_Campus_Name_Locator}    ENTER
    sleep    1

Submit Department Form
    Click Element    ${Submit_Department}

Delete Department By API
    ${authorization}=    Create List    d969e59bcd0761b    30c81a805de0ef7
    Create Session    DeleteDepartmnet    ${base_URL}    auth=${authorization}
    ${headers}=    Create Dictionary    Content-Type=application/json
    ${response}=    DELETE On Session    DeleteDepartmnet    /api/resource/Department/dep1    headers=${headers}
    ${status}=    Convert To String    ${response.status_code}
    Should Be Equal    ${status}    202
