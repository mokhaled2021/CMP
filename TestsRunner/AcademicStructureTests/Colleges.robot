*** Settings ***
Documentation       MedadCMP Academic Structure

Resource            ../../PageObjects/commons/common.robot
Resource            ../../PageObjects/AcademicStructureKeywords/CollegesPage.robot

Test Teardown       closing Browser


*** Test Cases ***
Create a College
    Login To The ControlPanel
    Navigate to Add College
    Fill out Colleges Details
    Submit College Form
    Successfully Messages Appears After Submitting

Delete College
    Delete college By API
