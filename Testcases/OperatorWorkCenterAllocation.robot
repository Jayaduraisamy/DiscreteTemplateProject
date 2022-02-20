*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${LOGINURL}     http://localhost:8080/FTPCApps/discrete#!operatorworkcenterallocation
${BROWSER}      Chrome
${UserName}     admin
${Password}     admin


*** Variables ***

*** Keywords ***
Open Browser to login OperatorDetailsPage
    [Tags]       Regression
    Open Browser   ${LOGINURL}     ${BROWSER}
    maximize browser window
    Set Selenium Implicit Wait      1000
    Input Text        Xpath://*[@id="CD-TextField.LogonView.UserName"]    ${UserName}
    Input Password    Xpath://*[@id="CD-PasswordField.LogonView.Password"]  ${Password}
    Set Selenium Implicit Wait      100
    Element Should Be Enabled   id=CD-Button.LogonView.Login
    Press Keys  id=CD-Button.LogonView.Login   [RETURN]
    Element Should Be Enabled   id=CD-Button.LogonView.Login
    Press Keys  id=CD-Button.LogonView.Login   [RETURN]
