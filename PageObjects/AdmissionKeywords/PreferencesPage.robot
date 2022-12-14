*** Settings ***
Resource    ../commons/common.robot


*** Keywords ***
Navigate to Add Preferences
    Open the Admission page
    Open the Preferences page
    Click button Add new Preferences

Fill out Preferences Details
    ${json}=    Get file    ${EXECDIR}\\PageObjects\\TestData\\testdata.json
    ${object}=    Evaluate    json.loads('''${json}''')    json
    Select the Academic Term
    Input Text    ${Preference_Discription_Locator}    123dswd
    Select the Academic Program
    Select the campus
    sleep    3
    Wait Until Page Contains Element    ${Preference_Capacity_Locator}
    ##Input Text    ${Preference_Capacity_Locator}    123
    #Select Active Preference
    #Select Published Preference

Submit Preferences Form
    Wait Until Page Contains Element    ${Preference_Submit_button}
    Click Element    ${Preference_Submit_button}

Open the Preferences page
    Wait Until Page Contains Element    ${Preferences_Link}
    Click Element    ${Preferences_Link}

Click button Add new Preferences
    sleep    2
    Wait Until Page Contains Element    ${Add_Preferences_Button}
    Click Element    ${Add_Preferences_Button}

Select the Academic Term
    Press Keys    ${Preference_Academic_Term_Locator}    CTRL+a    BACKSPACE
    sleep    1
    Click Element    ${Preference_Academic_Term_Locator}
    Wait Until Page Contains Element    ${Preference_Academic_Term_Option}
    Click Element    ${Preference_Academic_Term_Option}
    Sleep    1

Select the Academic Program
    Click Element    ${Preference_AcademicProgram_Locator}
    Wait Until Page Contains Element    ${Preference_AcademicProgram_Option}
    Click Element    ${Preference_AcademicProgram_Option}
    Sleep    1

Select the campus
    Click Element    ${Preference_campus_Locator}
    sleep    2
    Wait Until Page Contains Element    ${Preference_campus_Option}
    Click Element    ${Preference_campus_Option}

Select Active Preference
    Sleep    1
    Select Checkbox    ${Preference_Active_checkBox}
    sleep    1

Select Published Preference
    Sleep    1
    Select Checkbox    ${Preference_Published_checkBox}
    sleep    1
