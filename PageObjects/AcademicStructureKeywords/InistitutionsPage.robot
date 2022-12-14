*** Settings ***
Resource    ../commons/common.robot


*** Keywords ***
Navigate to Add Institutions
    Open the AcademicStructure page
    Open the Institution page
    Click button Add new Institutions

Fill out Institutions Details
    ${json}=    Get file    ${EXECDIR}\\PageObjects\\TestData\\testdata.json
    ${object}=    Evaluate    json.loads('''${json}''')    json
    Input Text    ${Institution_Code_Locator}    ${object["Inistitutions"]["Institution_Code"]}
    Input Text    ${Institution_Name_Locator}    ${object["Inistitutions"]["Institution_Name"]}
    Select field Institutional Type
    Input Text    ${Website_Locator}    ${object["Inistitutions"]["Website"]}
    Input Text    ${Email_Locator}    ${object["Inistitutions"]["Email"]}
    Select field Ownership for Institutions
    Input Text    ${Location_Locator}    ${object["Inistitutions"]["Location"]}
    Input Text    ${Moe_Number_Locator}    ${object["Inistitutions"]["MOE_Number"]}
    Select field Time Zone

Submit Institution Form
    Wait Until Page Contains Element    ${Submit_Institution}
    Click Element    ${Submit_Institution}

Click button Add new Institutions
    Wait Until Page Contains Element    ${Add_Inistitutions}
    Click Element    ${Add_Inistitutions}
    sleep    2

Open the Institution page
    Wait Until Page Contains Element    ${Institution_Link}
    Click Element    ${Institution_Link}

Select field Institutional Type
    Click Element    ${Institutional_Type_Locator}
    sleep    2
    Wait Until Page Contains Element    ${Institutional_Type_Selected}    timeout=10
    Click Element    ${Institutional_Type_Selected}

Select field Ownership for Institutions
    Click Element    ${Ownership_Locator}
    Wait Until Page Contains Element    ${Ownership_Selected}
    Click Element    ${Ownership_Selected}

Select field Time Zone
    Click Element    ${Time_Zone_Locator}
    Wait Until Page Contains Element    ${Time_Zone_Selected}
    Click Element    ${Time_Zone_Selected}

Select field Date of establishment
    Click Element    ${Date_of_establishment_Locator}
    Wait Until Page Contains Element    ${Date_of_establishment_date}
    Click Element    ${Date_of_establishment_date}
