*** Settings ***
Documentation       MedadCMP Academic Structure

Resource            ../../PageObjects/commons/common.robot
Resource            ../../PageObjects/AcademicStructureKeywords/DepartmentPage.robot

Test Setup          Login To The ControlPanel
Test Teardown       closing Browser


*** Test Cases ***
Create a Department
    Navigate to Add Department
    Fill out Department Details
    Submit Department Form
    Successfully Messages Appears After Submitting
