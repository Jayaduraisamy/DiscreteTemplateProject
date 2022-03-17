*** Settings ***
Library           SeleniumLibrary


*** Variables ***
${LOGINURL}     http://localhost:8080/FTPCApps/discrete#!OperatorDetailsEntry
${BROWSER}      Chrome
${UserName}     admin
${Password}     admin



*** Keywords ***
Open Browser To Login Page
    Open Browser   ${LOGINURL}     ${BROWSER}

*** Test Cases ***
[documentation]
    Open Browser To Login Page
    maximize browser window
    Set Selenium Implicit Wait      1000
    Input Text        Xpath://*[@id="CD-TextField.LogonView.UserName"]    ${UserName}
    Input Password    Xpath://*[@id="CD-PasswordField.LogonView.Password"]  ${Password}
    Set Selenium Implicit Wait      100

    Element Should Be Enabled   id=CD-Button.LogonView.Login
    Press Keys  id=CD-Button.LogonView.Login   [RETURN]
    set browser implicit wait  10
    click element  Xpath ://*[@id="BCOR-HeaderViewImpl"]/div/div/div[2]/div/div/div/div/div/div[15]/div
    press keys     Xpath://*[@id="CD-Button.ApplicationNavBar.Logoff"]/span/span[2]  [RETURN] close browser
    Element Should Be Enabled   id=CD-Button.LogonView.Login
    Press Keys  id=CD-Button.LogonView.Login   [RETURN]
    set browser implicit wait  10
    close window







x`


