*** Settings ***
Resource        ../Resources/BasePage.robot
Suite Setup     Start Session
Suite Teardown  Close Session
Test Setup
Test Teardown



*** Test Cases ***
Scenario1: Login Success
    [Documentation]    Check Sucess Login 
    [Tags]        login    smoke
    Check Login Page
    Login With       ${validLogin}    ${validPassword}
    Check Inventory Page

Scenario2: Invalid Login
    [Template]    Invalid Login
    [Tags]        invalid
    123        ${EMPTY}        Password is required
    ${EMPTY}   123             Username is required
    123        456             Username and password do not match any user in this service
    
    
    
