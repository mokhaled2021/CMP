*** Settings ***
Documentation  MedadCMP LoginPage
Library  SeleniumLibrary
Resource  ../PageObjects/KeywordDefinationFiles/common.robot


*** Test Cases ***
Login with Valid Username & Password
    User Login   ${username}   ${password}
    Wait Until Element Is Visible   ${Success_Login}            timeout=10