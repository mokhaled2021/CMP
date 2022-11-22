*** Settings ***
Resource    ../KeywordDefinationFiles/common.robot

*** keywords***
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
    Wait Until Page Contains Element     ${Add_Academic_Program}
    Click Element  ${Add_Academic_Program}
Fill field Program Name 
    Input Text    ${Program_Name_Locator}     ${Program_Name}
Fill field Program Code
    Wait Until Page Contains Element     ${Program_Code_Locator}
    Input Text    ${Program_Code_Locator}    ${Program_Code}

Select field Status 
    Click Element    ${Status_Locator}
    sleep  2
    Wait Until Page Contains Element    ${Status_Option_Locator}    timeout=10
    Click Element    ${Status_Option_Locator}

Select field Majaor 
    Click Element    ${Major_Locator}
    sleep  2
    Wait Until Page Contains Element    ${Major_Option_Locator}    timeout=10
    Click Element    ${Major_Option_Locator} 

Select field Education 
    Click Element    ${Education_level_Locator}
    sleep  2
    Wait Until Page Contains Element    ${Education_level_Option_Locator}    timeout=10
    Click Element    ${Education_level_Option_Locator} 

Select field Degree 
    Click Element    ${Degree_Locator}
    sleep  2
    Wait Until Page Contains Element    ${Degree_Option_Locator}    timeout=10
    Click Element    ${Degree_Option_Locator} 

Select field Scientific Certificate 
    Click Element    ${Scientific_Certificate_Locator}
    sleep  2
    Wait Until Page Contains Element    ${Scientific_Certificate_Option_Locator}    timeout=10
    Click Element    ${Scientific_Certificate_Option_Locator} 

Select field Ownership
    # click add row button
    Click Element    ${Add_Ownership_Button}
    # select campus
    Wait Until Page Contains Element    ${Ownership_Campus_Locator}
    Click Element    ${Ownership_Campus_Locator}
    sleep  2
    Wait Until Page Contains Element    ${Ownership_Campus__Option_Locator}    timeout=10
    Click Element    ${Ownership_Campus__Option_Locator} 
    # select college
    Wait Until Page Contains Element    ${Ownership_College_Locator}    timeout=10
    Click Element    ${Ownership_College_Locator}
    sleep  2
    Wait Until Page Contains Element    ${Ownership_College_Option_Locator}    timeout=10
    Click Element    ${Ownership_College_Option_Locator} 
    # select department
    Wait Until Page Contains Element    ${Ownership_Department_Locator}    timeout=10
    Click Element    ${Ownership_Department_Locator}
    sleep  2
    Wait Until Page Contains Element    ${Ownership_Department_Option_Locator}    timeout=10
    Click Element    ${Ownership_Department_Option_Locator}  

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

Click submit Academic Program Button
    Wait Until Page Contains Element    ${Submit_Institution}
    Click Element    ${Submit_Institution}
    Wait Until Page Contains Element    ${Successfully_Saved}

Fill Form of Add Academic Program
    Fill field Program Name
    Fill field Program Code
    Select field Institutional Type
    Fill field Website
    Fill field Email
    Select field Ownership
    Fill field Institution Location
    Fill field MOE Number
    Select field Time Zone