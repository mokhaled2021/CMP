*** Settings ***
Documentation       MedadCMP Admission

Resource            ../../PageObjects/commons/common.robot
Resource            ../../PageObjects/AdmissionKeywords/AdmissionCalenderPage.robot

Test Setup          Login To The ControlPanel
Test Teardown       closing Browser


*** Test Cases ***
Create an Admission Calender
    Navigate to Add Admission calender
    Fill out Admission calender Details
    Submit Admission Calender Form
    Successfully Messages Appears After Submitting

#Delete the records at Admission Calender page
    #Delete the records at Admission Calender page
