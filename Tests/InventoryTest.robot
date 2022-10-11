*** Settings ***
Resource        ../Resources/BasePage.robot
Suite Setup     Start Session
Suite Teardown  Close Session
Test Setup
Test Teardown

*** Variables ***
${validLogin}        ${loginEmailAccess}
${validPassword}    ${passwordAccess}



*** Test Cases ***
Scenario1: Login Sucess
    [Documentation]    Check Sucess Login 
    [Tags]        login    smoke
    Check Login Page
    Login    ${validLogin}    ${validPassword}
    Check Inventory Page
    Filter By    Name (A to Z)
    Add First Item To Cart
    
    
