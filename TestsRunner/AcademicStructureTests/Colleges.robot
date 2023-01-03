*** Settings ***
Documentation       MedadCMP Academic Structure

Resource            ../../PageObjects/commons/common.robot
Resource            ../../PageObjects/AcademicStructureKeywords/CollegesPage.robot

Test Teardown       closing Browser


*** Test Cases ***
GUI - Create a College
    Login To The ControlPanel
    Navigate to Add College
    Fill out Colleges Details
    Submit College Form
    Successfully Messages Appears After Submitting
    [Teardown]    Delete Doctype By API    doctype=College    doctypevalue=col1

API - Delete a College By API
    [Setup]    Create College By API    doctype=College    collegeName=test20
    Status Should Be    200
    Delete Doctype By API    doctype=College    doctypevalue=test20
    Status Should Be    202

API - Create new College By API
    Create College By API    doctype=College    collegeName=test2
    Status Should Be    200
    [Teardown]    Delete Doctype By API    doctype=College    doctypevalue=test2
