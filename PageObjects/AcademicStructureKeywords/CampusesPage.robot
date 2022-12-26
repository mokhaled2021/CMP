*** Settings ***
Resource    ../commons/common.robot


*** Keywords ***
Navigate to Add Campuses
    Open the AcademicStructure page
    Open the Cumpuses page
    Click button Add new campuses

Fill out campuses Details
    Click on button Edit Full Form
    Fill field campus name
    Fill field campus code
    Fill field campus location

Submit Campus Form
    Wait Until Page Contains Element    ${Submit_Campus}
    Click Element    ${Submit_Campus}

Open the Cumpuses page
    Wait Until Page Contains Element    ${Campuses_Link}
    Click Element    ${Campuses_Link}

Fill field campus name
    ${json}=    Get file    ${EXECDIR}\\PageObjects\\TestData\\testdata.json
    ${object}=    Evaluate    json.loads('''${json}''')    json
    sleep    1
    Wait Until Page Contains Element    ${Campus_name_Locator}
    Input Text    ${Campus_name_Locator}    ${object["Campuses"]["Campus_name"]}

Fill field campus code
    ${json}=    Get file    ${EXECDIR}\\PageObjects\\TestData\\testdata.json
    ${object}=    Evaluate    json.loads('''${json}''')    json
    sleep    1
    Wait Until Page Contains Element    ${campus_code_Locator}
    Input Text    ${campus_code_Locator}    ${object["Campuses"]["Campus_code"]}

Fill field campus location
    Input Text    ${campus_location_Locator}    Helwan
    sleep    2
    Press Keys    ${campus_location_Locator}    ENTER
    sleep    1

Click button Add new campuses
    Wait Until Page Contains Element    ${Add_Campuses}    timeout=10
    Click Element    ${Add_Campuses}

Click on button Edit Full Form
    sleep    1
    Press Keys
    ...    //div[@class='modal fade show']//button[contains(@class,'btn btn-secondary btn-sm')][normalize-space()='Edit Full Form']
    ...    ENTER
    sleep    1
