*** Settings ***
Documentation       MedadCMP Academic Structure

Resource            ../../PageObjects/commons/common.robot
Resource            ../../PageObjects/AcademicStructureKeywords/InistitutionsPage.robot

Test Teardown       closing Browser


*** Test Cases ***
Create an Institutions
    Login To The ControlPanel
    Navigate to Add Institutions
    Fill out Institutions Details
    Submit Institution Form
    Successfully Messages Appears After Submitting

Delete an Institution
    Delete Doctype By Name    Institution    inst1
