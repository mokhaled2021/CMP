*** Settings ***
Documentation       MedadCMP Academic Structure

Resource            ../../PageObjects/commons/common.robot
Resource            ../../PageObjects/AcademicStructureKeywords/InistitutionsPage.robot

Test Setup          Login To The ControlPanel
Test Teardown       closing Browser


*** Test Cases ***
TC1 : Add new Inistitutions
    Add new Inistitutions
    click submit Institution Button

TC2: Validate the duplication
    Add new Inistitutions
