*** Settings ***
Resource    ../commons/common.robot


*** Keywords ***
Add new Department
    Open the AcademicStructure page
    Open the Department page
    Click add Department button
    Fill Form of Add Department
    Select field College
    Click submit Department button

Fill Form of Add Department
    ${json} =    Get file    ${EXECDIR}\\PageObjects\\TestData\\testdata.json
    ${object} =    Evaluate    json.loads('''${json}''')    json
    Input Text    ${Department_Name_Locator}    ${object["Department"]["Department_name"]}
    Input Text    ${Department_Code_Locator}    ${object["Department"]["Department_code"]}
    Input Text    ${Department_External_Code}    ${object["Department"]["Department_external_code"]}

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

Click submit Department button
    Click Element    ${Submit_Department}
    sleep    2
    Wait Until Page Contains Element    ${Successfully_Saved}
