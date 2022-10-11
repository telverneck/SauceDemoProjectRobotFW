*** Settings ***
Resource        ../Resources/BasePage.robot
Suite Setup     Start Session
Suite Teardown  Close Session
Test Setup
Test Teardown
Test Template    Invalid Login

*** Test Cases ***                                                USERNAME            PASSWORD        MESSAGE
Scenario1: Login Fails - blank username and password            ${EMPTY}            ${EMPTY}        Text here
Scenario2: Login Fails - wrong username                         Wrong               ${EMPTY}        Text here
Scenario3: Login Fails - wrong password                         ${USERNAME}         wrong           Text here
Scenario4: Login Fails - wrong username and password            Wrong               Wrong           Text here