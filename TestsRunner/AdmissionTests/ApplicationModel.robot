*** Settings ***
Documentation       MedadCMP Admission

Resource            ../../PageObjects/commons/common.robot
Resource            ../../PageObjects/AdmissionKeywords/ApplicatonModelPage.robot

Test Setup          Login To The ControlPanel
Test Teardown       closing Browser


*** Test Cases ***
Create an Application Model
    Navigate to Add Application Model
    Fill out Application Model Details
    Submit Application Model Form
    Successfully Messages Appears After Submitting
