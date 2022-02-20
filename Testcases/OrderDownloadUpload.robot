*** Settings ***

Library  SeleniumLibrary
Library    ../Library/FileWriter.py
Library    OperatingSystem



*** Variables ***
${LOGINURL}     http://localhost:8080/FTPCApps
${BROWSER}      Chrome
${UserName}     admin
${Password}     admin
${F_locator}    Xpath://*[@id="BCOR-OrderUploadViewImpl"]/div/div/div/div/div/div[1]/div/div/div[1]/div/div/form/div/input[2]
${AddFile}      C:/Users/JD1/Downloads/OrderUpload/TestOrdersUpload.xlsx
${Window_list} =  Order Upload


*** Keywords ***
Open Browser To Login Page
    Open Browser   ${LOGINURL}     ${BROWSER}


*** Test Cases ***
[documentation] This test case verifies that a user can successfully download a file
    ${ExcelUpload}     FileWriter.upload
    sleep    10s
    Open Browser To Login Page
    maximize browser window
    Set Selenium Implicit Wait      1000
    Input Text        Xpath://*[@id="CD-TextField.LogonView.UserName"]    ${UserName}
    Input Password    Xpath://*[@id="CD-PasswordField.LogonView.Password"]  ${Password}
    Set Selenium Implicit Wait      100
    Element Should Be Enabled   id=CD-Button.LogonView.Login
    Press Keys  id=CD-Button.LogonView.Login   [RETURN]
    Element Should Be Enabled   id=CD-Button.LogonView.Login
    Press Keys  id=CD-Button.LogonView.Login   [RETURN]
    set browser implicit wait  10
    click element  Xpath://*[@id="BCOR-MesDashboardViewImpl"]/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div[2]/div/div/div[2]
    click element   Xpath://*[@id="BCOR-PlanningFunctionViewImpl"]/div/div/div/div/div/div/div/div[2]/div/div/div/div/div/div[3]/div/div/div[2]/div
    page should contain    Order Upload
    wait until page contains    Order Upload
    set browser implicit wait    100
    press keys      Xpath://*[@id="BCOR-OrderUploadViewImpl"]/div/div/div/div/div/div[1]/div/div/div[3]/div/div[3]/div     [return]
    set browser implicit wait    100
    click element    Xpath://*[@id="BCOR-OrderUploadViewImpl"]/div/div/div/div/div/div[1]/div/div/div[3]/div/div[5]/div
    input text       Xpath://*[@id="CD-TextField.ExportDialog.File"]            C:/Users/JD1/Downloads/TestOrdersUpload.xlsx
    click element    Xpath://*[@id="CD-Button.Button.Export"]
    press keys      Xpath://*[@id="FTPCApps-1332792659-overlays"]/div[3]/div/div/div[3]/div/div/div/div[3]/div/div[1]/div        [return]
    press keys      Xpath://*[@id="FTPCApps-1332792659-overlays"]/div[3]/div/div/div[3]/div/div/div/div[3]/div/div[1]/div       [return]
    choose file     ${F_locator}          ${AddFile}
    click element    Xpath://*[@id="BCOR-OrderUploadViewImpl"]/div/div/div/div/div/div[1]/div/div/div[1]/div/div/form/div/div
    sleep    2s
    press keys       Xpath://*[@id="BCOR-OrderUploadViewImpl"]/div/div/div/div/div/div[1]/div/div/div[3]/div/div[3]/div       [return]

    click element  Xpath ://*[@id="BCOR-HeaderViewImpl"]/div/div/div[2]/div/div/div/div/div/div[15]/div
    press keys     Xpath://*[@id="CD-Button.ApplicationNavBar.Logoff"]/span/span[2]  [RETURN] close window










