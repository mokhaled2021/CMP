*** Settings ***
Documentation       MedadCMP Academic Structure

Resource            ../../PageObjects/commons/common.robot
Resource            ../../PageObjects/AcademicStructureKeywords/CampusesPage.robot

Test Teardown       closing Browser


*** Test Cases ***
GUI - Create a Campus
    Login To The ControlPanel
    Navigate to Add Campuses
    Fill out campuses Details
    Submit Campus Form
    Successfully Messages Appears After Submitting

API - Delete a Campus
    Delete Doctype By Name    Campus    camp1
    Status Should Be    202
