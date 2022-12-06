*** Settings ***
Documentation       MedadCMP Admission

Resource            ../../PageObjects/commons/common.robot
Resource            ../../PageObjects/AdmissionKeywords/ApplicatonModelPage.robot

Test Setup          Login To The ControlPanel
Test Teardown       closing Browser


*** Test Cases ***
TC: Add new Application Model
    Add new Application Model

#TC: Delete the records at Admission Calender page
    #Delete the records at Admission Calender page
