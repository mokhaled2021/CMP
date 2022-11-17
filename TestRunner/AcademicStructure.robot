*** Settings ***
Documentation  MedadCMP LoginPage
Library  SeleniumLibrary
Resource  ../AcademicStructure/Login.robot
Resource  ../AcademicStructure/common.robot
Resource  ../AcademicStructure/Inistitutions.robot
Test Teardown   closing Browser


*** Test Cases ***
TC1 : Add new Inistitutions
    Add new Inistitutions
TC2 : Add new College
    Add new College
TC3 : Add new Campuses
    Add new Campuses


