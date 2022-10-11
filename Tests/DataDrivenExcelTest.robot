*** Settings ***
Resource        ../Resources/BasePage.robot
Suite Setup     Start Session
Suite Teardown  Close Session
Test Setup
Test Teardown

*** Test Cases ***
Scenario1: Open Page

#TODO WIP
    [Documentation]    Test Example
    [Tags]        smoke
    Check Page Header

*** Keywords ***
Check Page Header
    ${title}=    Get Title
    Log         ${title}
