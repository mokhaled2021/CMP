*** Settings ***
Documentation       MedadCMP Academic Structure

Resource            ../../PageObjects/commons/common.robot
Resource            ../../PageObjects/AcademicStructureKeywords/AcademicProgramPage.robot

Test Teardown       closing Browser

*** Test Cases ***
Create an Academic Program
    Login To The ControlPanel
    Navigate to Add Academic Program
    Fill out Academic Program Details
    Submit Academic Program Form
    Successfully Messages Appears After Submitting
