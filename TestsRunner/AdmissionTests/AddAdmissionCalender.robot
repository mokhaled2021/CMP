*** Settings ***
Documentation       MedadCMP Admission

Resource            ../../PageObjects/commons/common.robot
Resource            ../../PageObjects/AdmissionKeywords/AdmissionCalenderPage.robot

Test Setup          Login To The ControlPanel
Test Teardown       closing Browser


*** Test Cases ***
TC: Add new Admission Calender
    Add new AdmissionCalender

#TC: Delete the records at Admission Calender page
    #Delete the records at Admission Calender page
