*** Settings ***
Documentation       MedadCMP Academic Structure

Resource            ../PageObjects/commons/common.robot
Resource            ../PageObjects/AcademicStructureKeywords/CampusesPage.robot
Resource            ../PageObjects/AcademicStructureKeywords/CollegesPage.robot
Resource            ../PageObjects/AcademicStructureKeywords/InistitutionsPage.robot
Resource            ../PageObjects/AcademicStructureKeywords/AcademicProgramPage.robot

Test Setup          Login To The ControlPanel
Test Teardown       closing Browser


*** Test Cases ***
TC2 : Add new College
    Add new College
