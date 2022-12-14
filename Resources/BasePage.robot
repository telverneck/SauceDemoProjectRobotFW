***Settings***
Documentation           This is the main page for the project
Library                 SeleniumLibrary
Library                 FakerLibrary
Library                 DateTime 
Library                 String
Library                 webdriverManager.py

Resource             Pages/Common/ActionsPage.robot
Resource            Pages/Common/ComponentsPage.robot
Resource            Pages/LoginPage.robot
Resource            Pages/InventoryPage.robot

Variables            properties.py



***Variables***
${BASEURL}                  https://www.saucedemo.com
${BROWSER}                  ${browserName}
@{LIST_OF_BROSERS}          chrome    firefox    edge
${LONGTIMEOUT}              60
${TIMEOUT}                  30
${BROWSER_WIDTH}            1440   
${BROWSER_HEIGHT}           900
${validLogin}               ${loginEmailAccess}
${validPassword}            ${passwordAccess}

# ${env}=    uat
# &{url_dict}=    qa=http://way2automation.com    uat=http://google.com
# open browser    ${url_dict.${env}}    ${browser}


***Keywords***
Start Session
    ${driver_path}=    webdriverManager.Get Driver Path With Browser        ${BROWSER}
    Open Browser            about:blank     ${BROWSER}    executable_path=${driver_path}
    Set Selenium Implicit Wait          ${TIMEOUT}
    Set window size                     ${BROWSER_WIDTH}    ${BROWSER_HEIGHT}
    Go To                   ${BASEURL}
    ${PageTitle}=            SeleniumLibrary.Get Title
    Log                     ${PageTitle}
    Check Login Page


Close Session
    Capture Page Screenshot
    Close All Browsers

