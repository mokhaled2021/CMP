*** Settings ***
Resource    ../commons/common.robot


*** Keywords ***
Open the Preferences page
    Wait Until Page Contains Element    ${admission_Calender_Link}
    Click Element    ${admission_Calender_Link}

Add new Preferences
    Open the Admission page
    Open the Preferences page
    Click button Add new Preferences
    Fill Form of Add Preferences
    click submit Preferences Button

Click button Add new Preferences
    sleep    2
    Wait Until Page Contains Element    ${Add_AdmissionCalender}
    Click Element    ${Add_AdmissionCalender}

Fill Form of Add Preferences
    ${json}=    Get file    ${EXECDIR}\\PageObjects\\TestData\\testdata.json
    ${object}=    Evaluate    json.loads('''${json}''')    json

click submit Preferences Button
    Wait Until Page Contains Element    ${Submit_AdmissionCalender}
    Click Element    ${Submit_AdmissionCalender}
    Wait Until Page Contains Element    ${Successfully_Saved}
    sleep    1
