*** Settings ***
Resource    ../commons/common.robot


*** Keywords ***
Open the Admission Calender page
    Wait Until Page Contains Element    ${admission_Calender_Link}
    Click Element    ${admission_Calender_Link}

Add new AdmissionCalender
    Open the Admission page
    Open the AdmissionCalender page
    Click button Add new AdmissionCalender
    Fill Form of Add AdmissionCalender
    click submit AdmissionCalender Button

Click button Add new AdmissionCalender
    sleep    2
    Wait Until Page Contains Element    ${Add_AdmissionCalender}
    Click Element    ${Add_AdmissionCalender}

Select field Academic Term for Admission Calender
    Press Keys    ${Academic_Term_Locator}    CTRL+a    BACKSPACE
    sleep    2
    Click Element    ${Academic_Term_Locator}
    Wait Until Page Contains Element    ${Academic_Term}
    Click Element    ${Academic_Term}

Select active Admission Calender
    Select Checkbox    ${AdmissionCalender_status}

Select Active & Published Start Date
    click Element    ${Preference_Start_Date_Locator}
    sleep    1
    Input Text    ${Preference_Start_Date_Locator}    20-11-2022
    Press Keys    ${Preference_Start_Date_Locator}    ENTER
    sleep    1

Select Active & Published End Date
    click Element    ${Preference_End_Date_Locator}
    sleep    1
    Input Text    ${Preference_End_Date_Locator}    30-11-2022
    Press Keys    ${Preference_End_Date_Locator}    ENTER
    sleep    1

click submit AdmissionCalender Button
    Wait Until Page Contains Element    ${Submit_AdmissionCalender}
    Click Element    ${Submit_AdmissionCalender}
    Wait Until Page Contains Element    ${Successfully_Saved}
    sleep    1

Delete the records at Admission Calender page
    Open the Admission page
    Open the AdmissionCalender page
    sleep    2
    Wait Until Page Contains Element    ${SelectAllRecords}
    Select Checkbox    ${SelectAllRecords}
    Wait Until Element Is Visible    ${ActionsButton}
    Click Element    ${ActionsButton}
    sleep    2
    Wait Until Page Contains Element    ${DeleteAction}
    Click Element    ${DeleteAction}
    sleep    2
    Press Keys    ${DeleteActionYes}    ENTER

Fill Form of Add AdmissionCalender
    ${json}=    Get file    ${EXECDIR}\\PageObjects\\TestData\\testdata.json
    ${object}=    Evaluate    json.loads('''${json}''')    json
    Select field Academic Term for Admission Calender
    Select active Admission Calender
    Select Active & Published Start Date
    Select Active & Published End Date
