*** Settings ***

Library  SeleniumLibrary

*** Variables ***
${loginButton}
${UserName}   admin
${Password}   admin@123

*** Keywords ***
Invalid login validation


**** Test Cases ***
invalid login validation
    OPEN BROWSER      http://localhost:8080/FTPCApps     chrome
    maximize browser window
    Input Text        Xpath://*[@id="CD-TextField.LogonView.UserName"]    ${userName}
    Input Password    Xpath://*[@id="CD-PasswordField.LogonView.Password"]  ${password}
    set browser implicit wait  50
    element should be visible  Xpath://*[@id="CD-Button.LogonView.Login"]/span
    Press Keys  id=CD-Button.LogonView.Login  [return]
    # Xpath://*[@id="FTPCApps-1332792659-overlays"]/div[2]/div/div/p/i/font
    click element  Xpath://*[@id="FTPCApps-1332792659-overlays"]/div[2]/div/div/p/i/font
    set browser implicit wait  10
    clear element text  Xpath://*[@id="CD-TextField.LogonView.UserName"]
    clear element text  Xpath://*[@id="CD-PasswordField.LogonView.Password"]
    close browser
    #press keys  ${UserName}  ${password} CTRL+a+BACKSPACE




