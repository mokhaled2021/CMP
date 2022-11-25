*** Settings ***
Documentation  MedadCMP LoginPage
Resource  ../PageObjects/KeywordDefinationFiles/common.robot
Resource    ../PageObjects/KeywordDefinationFiles/CampusesPage.robot
Resource    ../PageObjects/KeywordDefinationFiles/CollegesPage.robot
Resource    ../PageObjects/KeywordDefinationFiles/InistitutionsPage.robot
Resource    ../PageObjects/KeywordDefinationFiles/AcademicProgramPage.robot
Test Teardown   closing Browser


*** Test Cases ***
TC1 : Add new Inistitutions
    Add new Inistitutions
TC2 : Add new College
    Add new College
TC3 : Add new Campuses
    Add new Campuses
TC4: Add new Academic Program
    Add new Academic Program


