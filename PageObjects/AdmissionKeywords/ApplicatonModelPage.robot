*** Settings ***
Resource    ../commons/common.robot


*** Keywords ***
Open the ApplicationModel page
    Wait Until Page Contains Element    ${ApplicationModel_Link}
    Click Element    ${ApplicationModel_Link}

Add new Application Model
    Open the Admission page
    Open the ApplicationModel page
    Click button Add new ApplicationModel
    Fill Form of Add ApplicationModel
    sleep    3

Click button Add new ApplicationModel
    sleep    2
    Wait Until Page Contains Element    ${Add_ApplicationModel_Button}
    Click Element    ${Add_ApplicationModel_Button}

Select the Admission Term
    Press Keys    ${AdmissionTerrm_Locator}    CTRL+a    BACKSPACE
    sleep    1
    Click Element    ${AdmissionTerrm_Locator}
    Wait Until Page Contains Element    ${AdmissionTerm_Option}
    Click Element    ${AdmissionTerm_Option}
    Sleep    1

Select the Application
    Click Element    ${Application_Locator}
    sleep    2
    Wait Until Page Contains Element    ${Appplication_Option}
    Click Element    ${Appplication_Option}
    Sleep    1

Select Application Start Date
    Click Element    ${Application_StartDate_Locator}
    sleep    1
    Input Text    ${Application_StartDate_Locator}    20-11-2022
    Press Keys    ${Application_StartDate_Locator}    ENTER
    sleep    0.5

Select Application End Date
    Click Element    ${Application_EndDate_Locator}
    sleep    1
    Input Text    ${Application_EndDate_Locator}    30-11-2022
    Press Keys    ${Application_EndDate_Locator}    ENTER
    Sleep    0.5

Select the Application Gender
    Click Element    ${Application_Gender}
    sleep    1
    Wait Until Page Contains Element    ${Application_Gender_Male}
    Click Element    ${Application_Gender_Male}
    sleep    1

Add the Offered Program
    Click Element    ${Open_OfferdProgram_collapse}
    sleep    2
    Wait Until Page Contains Element    ${Add_OfferedProgram_row}
    Click Element    ${Add_OfferedProgram_row}
    sleep    1
    Click Element    ${Application_AcademicProgram}
    Input Text    //input[@placeholder='Campus Name']    Helwan
    sleep    1
    Press Keys    //input[@placeholder='Campus Name']    ENTER

Fill Form of Add ApplicationModel
    Select the Admission Term
    Select the Application
    Select Application Start Date
    Select Application End Date
    Select the Application Gender

click submit ApplicationModel Button
    Wait Until Page Contains Element    ${Preference_Submit_button}
    Click Element    ${Preference_Submit_button}
