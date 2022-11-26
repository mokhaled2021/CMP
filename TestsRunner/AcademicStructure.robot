*** Settings ***
Documentation       MedadCMP LoginPage

Resource            ../PageObjects/common.robot
Resource            ../PageObjects/AcademicStructure/CampusesPage.robot
Resource            ../PageObjects/AcademicStructure/CollegesPage.robot
Resource            ../PageObjects/AcademicStructure/InistitutionsPage.robot
Resource            ../PageObjects/AcademicStructure/AcademicProgramPage.robot

Test Teardown       closing Browser


*** Test Cases ***
TC1 : Add new Inistitutions
    Add new Inistitutions

TC2 : Add new College
    Add new College

TC3 : Add new Campuses
    Add new Campuses

TC4: Add new Academic Program
    Add new Academic Program
