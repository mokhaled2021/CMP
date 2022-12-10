*** Settings ***
Documentation       MedadCMP Admission

Resource            ../../PageObjects/commons/common.robot
Resource            ../../PageObjects/AdmissionKeywords/PreferencesPage.robot

Test Setup          Login To The ControlPanel
Test Teardown       closing Browser


*** Test Cases ***
Create a Preferences
    Navigate to Add Preferences
    Fill out Preferences Details
    Submit Preferences Form
    Successfully Messages Appears After Submitting
