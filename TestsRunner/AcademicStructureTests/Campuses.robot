*** Settings ***
Documentation       MedadCMP Academic Structure

Resource            ../../PageObjects/commons/common.robot
Resource            ../../PageObjects/AcademicStructureKeywords/CampusesPage.robot

Test Setup          Login To The ControlPanel
Test Teardown       closing Browser


*** Test Cases ***
Create a Campus
    Navigate to Add Campuses
    Fill out campuses Details
    Submit Campus Form
    Successfully Messages Appears After Submitting
