*** Settings ***
Documentation       MedadCMP Admission

Resource            ../PageObjects/common.robot
Resource            ../PageObjects/Admission/AdmissionCalenderPage.robot

Test Teardown       closing Browser


*** Test Cases ***
TC1 : Add new Admission Calender
    Add new AdmissionCalender
