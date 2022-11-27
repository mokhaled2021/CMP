*** Settings ***
Resource    ../common.robot


*** Keywords ***
Open the Academic Program page
    Wait Until Page Contains Element    ${Academic_Program_Link}
    Click Element    ${Academic_Program_Link}

Add new Academic Program
    Open the AcademicStructure page
    Open the Academic Program page
    Click button Add new Academic Program
    Fill Form of Add Academic Program
    Click submit Academic Program Button

Click button Add new Academic Program
    sleep    1
    Wait Until Page Contains Element    ${Add_Academic_Program}
    Click Element    ${Add_Academic_Program}

Select field Status
    Click Element    ${Status_Locator}
    sleep    2
    Wait Until Page Contains Element    ${Status_Option_Locator}    timeout=10
    Click Element    ${Status_Option_Locator}

Select field Majaor
    Click Element    ${Major_Locator}
    sleep    2
    Wait Until Page Contains Element    ${Major_Option_Locator}    timeout=10
    Click Element    ${Major_Option_Locator}

Select field Education
    Click Element    ${Education_level_Locator}
    sleep    2
    Wait Until Page Contains Element    ${Education_level_Option_Locator}    timeout=10
    Click Element    ${Education_level_Option_Locator}

Select field Degree
    Click Element    ${Degree_Locator}
    sleep    2
    Wait Until Page Contains Element    ${Degree_Option_Locator}    timeout=10
    Click Element    ${Degree_Option_Locator}

Select field Scientific Certificate
    Click Element    ${Scientific_Certificate_Locator}
    sleep    2
    Wait Until Page Contains Element    ${Scientific_Certificate_Option_Locator}    timeout=10
    Click Element    ${Scientific_Certificate_Option_Locator}

Select field Ownership
    # click add row button
    Click Element    ${Add_Ownership_Button}
    # select campus
    Wait Until Page Contains Element    ${Ownership_Campus_Locator}
    Click Element    ${Ownership_Campus_Locator}
    sleep    2
    Wait Until Page Contains Element    ${Ownership_Campus__Option_Locator}    timeout=10
    Click Element    ${Ownership_Campus__Option_Locator}
    # select college
    Wait Until Page Contains Element    ${Ownership_College_Locator}    timeout=10
    Click Element    ${Ownership_College_Locator}
    sleep    2
    Wait Until Page Contains Element    ${Ownership_College_Option_Locator}    timeout=10
    Click Element    ${Ownership_College_Option_Locator}
    # select department
    Wait Until Page Contains Element    ${Ownership_Department_Locator}    timeout=10
    Click Element    ${Ownership_Department_Locator}
    sleep    2
    Wait Until Page Contains Element    ${Ownership_Department_Option_Locator}    timeout=10
    Click Element    ${Ownership_Department_Option_Locator}
    sleep    1

Select the Academic Program Gender
    Click Element    ${Student_Gender_Locator}
    sleep    2
    Wait Until Page Contains Element    ${Student_Gender_Male}    timeout=10
    Click Element    ${Student_Gender_Male}
    sleep    1

Fill Total Credit Hours
    Input Text    ${Total_Credit_Hours_Locator}    12
    sleep    1

Fill Current capacity
    Input Text    ${Current_capacity_Locator}    10
    sleep    1

Fill myField
    Input Text    ${Web_View_Section_MyField_Locator}    test

Select Camp
    Click Element    ${Web_View_Section_Camp_Locator}
    sleep    2
    Input Text    ${Web_View_Section_Camp_Locator}    Arar
    sleep    1
    Press Keys    ${Web_View_Section_Camp_Locator}    ENTER

Click submit Academic Program Button
    Wait Until Page Contains Element    ${Submit_Institution}
    Click Element    ${Submit_Institution}
    Wait Until Page Contains Element    ${Successfully_Saved}
    Sleep    1

Fill Form of Add Academic Program
    ${json} =    Get file    ${EXECDIR}\\PageObjects\\TestData\\testdata.json
    ${object} =    Evaluate    json.loads('''${json}''')    json
    Input Text    ${Program_Name_Locator}    ${object["AcademicProgram"]["Program_Name"]}
    sleep    1
    Input Text    ${Program_Code_Locator}    ${object["AcademicProgram"]["Program_Code"]}
    Select field Majaor
    Select field Education
    Select field Degree
    Select field Scientific Certificate
    Select field Ownership
    Select the Academic Program Gender
    Fill Total Credit Hours
    Fill Current capacity
    Fill myField
    Select Camp
