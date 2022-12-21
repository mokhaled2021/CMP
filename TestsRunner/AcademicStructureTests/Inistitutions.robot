*** Settings ***
Documentation       MedadCMP Academic Structure

Resource            ../../PageObjects/commons/common.robot
Resource            ../../PageObjects/AcademicStructureKeywords/InistitutionsPage.robot

Test Setup          Login To The ControlPanel
Test Teardown       closing Browser


*** Test Cases ***
Create an Inistitutions
    Navigate to Add Inistitutions
    Fill out Inistitutions Details
    Submit Inistitution Form
    Successfully Messages Appears After Submitting
