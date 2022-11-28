*** Settings ***
Resource    ../commons/common.robot


*** Variables ***
${json}=        Get file    ${EXECDIR}\\PageObjects\\TestData\\testdata.json
${object}=      Evaluate    json.loads('''${json}''')    json


*** Keywords ***
Add new Campuses
    Open the AcademicStructure page
    Open the Cumpuses page
    Click button Add new campuses
    Fill Form of Add campuses
    click submit Campus

Open the Cumpuses page
    Wait Until Page Contains Element    ${Campuses_Link}
    Click Element    ${Campuses_Link}

Fill field campus name
    ${element1} =    Get Webelement
    ...    //div[@data-fieldname='campus_name']//div[@class='form-group']//input[@type='text']
    Execute Javascript    arguments[0]click();    ARGUMENTS    ${element1}
    Input Text    ${Campus_name_Locator}    ${object["campuses"]["Campus_name"]}

Fill field campus code
    Input Text Into Alert    ${campus_code_Locator}    ${object["campuses"]["Campus_code"]}

Fill field campus location
    Input Text Into Alert    ${campus_location_Locator}    ${object["campuses"]["Campus_location"]}

Click button Add new campuses
    Wait Until Page Contains Element    ${Add_Campuses}    timeout=10
    Click Element    ${Add_Campuses}

click submit Campus
    Wait Until Page Contains Element    ${Submit_Campus}
    Click Element    ${Submit_Campus}

Fill Form of Add campuses
    Fill field campus name
    Fill field campus code
    Fill field campus location
