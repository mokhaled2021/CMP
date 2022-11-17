*** Settings ***
Documentation  MedadCMP LoginPage
Library  SeleniumLibrary
Resource  ../Resources/MedadCMP/AcademicStructure/Login.robot
Resource  ../Resources/MedadCMP/AcademicStructure/common.robot
Resource  ../Resources/MedadCMP/AcademicStructure/Inistitutions.robot
Test Teardown   closing Browser


*** Test Cases ***
TC1 : Add new Inistitutions
    Add new Inistitutions
TC2 : Add new College
    Add new College
TC3 : Add new Campuses
    Add new Campuses


