*** Settings ***
Documentation       MedadCMP Academic Structure

Resource            ../../PageObjects/commons/common.robot
Resource            ../../PageObjects/AcademicStructureKeywords/DepartmentPage.robot

Test Teardown       closing Browser


*** Test Cases ***
Create a Department
    Login To The ControlPanel
    Navigate to Add Department
    Fill out Department Details
    Submit Department Form
    Successfully Messages Appears After Submitting

Delete a Department
    Delete Doctype By API    Department    dep1
