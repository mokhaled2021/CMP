*** Settings ***
Documentation       MedadCMP LoginPage

Resource            ../PageObjects/common.robot


*** Test Cases ***
Login with Valid Username & Password
    Login To The ControlPanel
    Wait Until Element Is Visible    ${Success_Login}    timeout=10
