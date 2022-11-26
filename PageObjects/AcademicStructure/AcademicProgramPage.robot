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

Click submit Academic Program Button
    Wait Until Page Contains Element    ${Submit_Institution}
    Click Element    ${Submit_Institution}
    Wait Until Page Contains Element    ${Successfully_Saved}

Fill Form of Add Academic Program
    sleep    1
    Input Text    ${Program_Name_Locator}    ${object[Academic_Program]["Program_Name"]}
    sleep    1
    Input Text    ${Program_Code_Locator}    ${object["Academic_Program"]["Program_Code"]}
    Select field Majaor
    Select field Education
    Select field Degree
    Select field Scientific Certificate
    Select field Ownership
