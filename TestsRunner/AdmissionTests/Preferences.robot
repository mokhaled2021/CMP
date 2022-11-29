*** Settings ***
Documentation       MedadCMP Admission

Resource            ../../PageObjects/commons/common.robot
Resource            ../../PageObjects/AdmissionKeywords/AdmissionCalenderPage.robot
Resource            ../../PageObjects/AdmissionKeywords/PreferencesPage.robot

Test Setup          Login To The ControlPanel
Test Teardown       closing Browser


*** Test Cases ***
TC: Add new Preferences
    Add new Preferences
