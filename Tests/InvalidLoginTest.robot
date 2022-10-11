*** Settings ***
Resource        ../Resources/BasePage.robot
Suite Setup     Start Session
Suite Teardown  Close Session
Test Setup
Test Teardown
Test Template    Invalid Login



*** Test Cases ***        Login            Password        Message    
Empty Login                ${EMPTY}       ${EMPTY}        Username is required
Empty Password             123            ${EMPTY}        Password is required
Wrong Data                 123            456             Username and password do not match any user in this service
    
    
    
