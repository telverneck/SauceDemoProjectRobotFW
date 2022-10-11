***Settings***
Documentation        Login Page
Library                 SeleniumLibrary


*** Variables ***
${usernameInput}        id:user-name
${passwordInput}        id:password
${loginButton}        id:login-button
${logoImage}        class:login_logo
${errorMessageAlert}    css:.error-message-container h3

*** Keywords ***
Check Login Page
    Element Should Be Visible        ${logoImage}
    Element Should Be Visible        ${usernameInput}
    Element Should Be Visible        ${loginButton}
    Element Should Be Visible        ${passwordInput}
Login With
    [Arguments]    ${userName}        ${password}
    Clear Element Text        ${usernameInput}
    Input Text                ${usernameInput}     ${userName}
    Clear Element Text        ${passwordInput}
    Input Text                ${passwordInput}    ${password}
    Sleep    2
    Click Element             ${loginButton}

Login
    Login With    ${validLogin}    ${validPassword}
    Check Inventory Page

Check Invalid Login Message
    [Arguments]    ${message}
    Wait Until Element Contains    ${errorMessageAlert}    ${message}

Invalid Login
    [Arguments]    ${userName}        ${password}    ${message}
    Login With                     ${userName}        ${password}
    Check Invalid Login Message    ${message}
