*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGINURL}     http://localhost:8080/FTPCApps/discrete#!OperatorDetailsEntry
${BROWSER}      Chrome
${UserName}     admin
${Password}     admin

*** Keywords ***

*** Test Cases ***
Open Browser to login OperatorDetailsPage
    [Tags]    Regression
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
       ################# Adding New Record ###############################################
    click element     Xpath://*[@id="BCOR-OperatorViewImpl"]/div/div/div[1]/div/div/div[1]/div
    wait until element is visible    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[1]/div/div[1]/div/div[2]
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[1]/div/div[1]/div/div[2]/div
    sleep    1s
    click element     Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[2]/td
    sleep    1s
   # input text       Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div/div[1]/div/div[1]/div/div[1]/div/div[2]/div    Hubbell
    #text    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div/div[1]/div/div[1]/div/div[1]/div/div[2]/div    Hubbell
    input text    Xpath://*[@id="gwt-uid-25"]    104

    sleep    1s
    input text    Xpath://*[@id="gwt-uid-27"]    TestQAnew
    input text    Xpath://*[@id="gwt-uid-29"]    Test
   # input text    Xapth://*[@id="gwt-uid-23"]
    wait until element is visible    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[5]/div/div[2]
    click element  Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[5]/div/div[2]/div
    sleep    1s
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr/td
    sleep    1s
    wait until element is visible    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[7]/div/div[2]
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[7]/div/div[2]/div
    sleep    1s
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[2]/td
    sleep  1s
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[9]/div/div[2]
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[9]/div/div[2]/div
    sleep    1s
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[2]/td
    sleep    1s
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[1]/div/div[2]
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[1]/div/div[2]/div
    sleep  1s
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[1]/td
    sleep    1s
    input text    Xpath://*[@id="gwt-uid-39"]    8777712345
    input text    Xpath://*[@id="gwt-uid-41"]  No.7 Elumalai st, nanmanagalm 600221.
    input text    Xpath://*[@id="gwt-uid-43"]    test1@gmail.com
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[9]/div/div[2]
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[9]/div/div[2]/button
    sleep    1s
    press keys    Xpath://*[@id="PID_VAADIN_POPUPCAL"]/tbody/tr[2]/td/table/tbody/tr[5]/td[6]/span       [return]
    sleep    1s
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[11]/div/div[2]
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[11]/div/div[2]/div
    sleep    2s
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[3]/td
   # input text    Xpath://*[@id="gwt-uid-49"]    active
    sleep    1s
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[13]/div/div[2]
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[13]/div/div[2]/div
    sleep    1s
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[1]/td
    sleep    1s
   # click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[13]/div/div[2]
   # click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[13]/div/div[2]/div
  #  sleep    1s
  #  click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[2]/td
  #  sleep    1s
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[5]/div/div/div/div[2]
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[5]/div/div/div/div[2]/div
    sleep    1s
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[3]/td
    sleep    1s
    press keys     Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[2]/div/div[1]/div     [return]    close window
    ################### Validating duplicate records #######################################################
    click element     Xpath://*[@id="BCOR-OperatorViewImpl"]/div/div/div[1]/div/div/div[1]/div
    wait until element is visible    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[1]/div/div[1]/div/div[2]
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[1]/div/div[1]/div/div[2]/div
    sleep    1s
    click element     Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[2]/td
    sleep    1s
   # input text       Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div/div[1]/div/div[1]/div/div[1]/div/div[2]/div    Hubbell
    #text    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div/div[1]/div/div[1]/div/div[1]/div/div[2]/div    Hubbell
    input text    Xpath://*[@id="gwt-uid-58"]    104

    sleep    1s
    input text    Xpath://*[@id="gwt-uid-60"]    TestQAnew
    input text    Xpath://*[@id="gwt-uid-62"]    Test
   # input text    Xapth://*[@id="gwt-uid-23"]
    wait until element is visible    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[5]/div/div[2]
    click element  Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[5]/div/div[2]/div
    sleep    1s
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr/td
    sleep    1s
    wait until element is visible    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[7]/div/div[2]
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[7]/div/div[2]/div
    sleep    1s
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[2]/td
    sleep  1s
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[9]/div/div[2]
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[9]/div/div[2]/div
    sleep    1s
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[2]/td
    sleep    1s
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[1]/div/div[2]
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[1]/div/div[2]/div
    sleep  1s
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[2]/td
    sleep    1s
    input text    Xpath://*[@id="gwt-uid-72"]    8777712345
    input text    Xpath://*[@id="gwt-uid-74"]  No.7 Elumalai st, nanmanagalm 600221.
    input text    Xpath://*[@id="gwt-uid-76"]    test1@gmail.com
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[9]/div/div[2]
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[9]/div/div[2]/button
    sleep    1s
    press keys    Xpath://*[@id="PID_VAADIN_POPUPCAL"]/tbody/tr[2]/td/table/tbody/tr[5]/td[5]/span      [return]  Get Current Date
    sleep    1s
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[11]/div/div[2]
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[11]/div/div[2]/div
    sleep    2s
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[1]/td
   # input text    Xpath://*[@id="gwt-uid-49"]    active
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[13]/div/div[2]
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[13]/div/div[2]/div
    sleep    1s
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[2]/td
    sleep    1s
    #click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[13]/div/div[2]
    #click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[13]/div/div[2]/div
    #sleep    1s
   # click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[2]/td
    #sleep    1s
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[5]/div/div/div/div[2]
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[5]/div/div/div/div[2]/div
    sleep    1s
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[3]/td
    sleep    1s
    press keys    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[2]/div/div[1]/div    [return]    close window
  #  click element    Xpath://*[@id="FTPCApps-1332792659-overlays"]/div[4]/div/div/p/i/font
  #  sleep    1s
  #  press keys    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[2]/div/div[3]/div   [return]    close window

  #  sleep    1s
  #  reload page
  #  sleep    1s
    ################ Validate mandatory field while skipping the data ############################
    reload page
    click element     Xpath://*[@id="BCOR-OperatorViewImpl"]/div/div/div[1]/div/div/div[1]/div
    wait until element is visible    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[1]/div/div[1]/div/div[2]
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[1]/div/div[1]/div/div[2]/div
    sleep    1s
    click element     Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[2]/td
    sleep    1s
   # input text       Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div/div[1]/div/div[1]/div/div[1]/div/div[2]/div    Hubbell
    #text    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div/div[1]/div/div[1]/div/div[1]/div/div[2]/div    Hubbell
    input text    Xpath://*[@id="gwt-uid-21"]    105

    input text    Xpath://*[@id="gwt-uid-23"]    TestQA
    input text    Xpath://*[@id="gwt-uid-25"]    red
   # input text    Xapth://*[@id="gwt-uid-23"]
    wait until element is visible    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[5]/div/div[2]
    click element  Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[5]/div/div[2]/div
    sleep    1s
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr/td
    sleep    1s
    wait until element is visible    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[7]/div/div[2]
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[7]/div/div[2]/div
    sleep    1s
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[1]/td
    sleep  1s
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[9]/div/div[2]
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[9]/div/div[2]/div
    sleep    1s
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[1]/td
    sleep    1s
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[1]/div/div[2]
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[1]/div/div[2]/div
    sleep  1s
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[3]/td
    sleep    1s
    input text    Xpath://*[@id="gwt-uid-35"]    8777712344
    input text    Xpath://*[@id="gwt-uid-37"]  No.7 Elumalai st, nanmanagalm 600229.
    input text    Xpath://*[@id="gwt-uid-39"]    test1@gmail.com
   # click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[9]/div/div[2]
   # click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[9]/div/div[2]/button
   # sleep    1s
   # click element    Xpath://*[@id="PID_VAADIN_POPUPCAL"]/tbody/tr[2]/td/table/tbody/tr[5]/td[5]/span
    #sleep    1s
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[11]/div/div[2]
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[11]/div/div[2]/div
    sleep    2s
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[2]/td
   # input text    Xpath://*[@id="gwt-uid-49"]    active
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[13]/div/div[2]
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[13]/div/div[2]/div
    sleep    1s
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[2]/td
    sleep    1s
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[5]/div/div/div/div[2]
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[5]/div/div/div/div[2]/div
    sleep    1s
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[3]/td
    sleep    1s
    press keys    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[2]/div/div[1]/div    [return]
    click element    Xpath://*[@id="FTPCApps-1332792659-overlays"]/div[4]/div/div/p/i/font
    press keys    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[2]/div/div[3]/div   [return]
  #  sleep    1s
  #  reload page
  #  sleep    1s
    ######################## Validating Non Mandatory field validation    n#######################################################
    click element     Xpath://*[@id="BCOR-OperatorViewImpl"]/div/div/div[1]/div/div/div[1]/div
    wait until element is visible    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[1]/div/div[1]/div/div[2]
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[1]/div/div[1]/div/div[2]/div
    sleep    1s
    click element     Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[2]/td
    sleep    1s
   # input text       Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div/div[1]/div/div[1]/div/div[1]/div/div[2]/div    Hubbell
    #text    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div/div[1]/div/div[1]/div/div[1]/div/div[2]/div    Hubbell
    input text    Xpath://*[@id="gwt-uid-54"]    109

    sleep    1s
    input text    Xpath://*[@id="gwt-uid-56"]    TestQA
    input text    Xpath://*[@id="gwt-uid-58"]    Test
   # input text    Xapth://*[@id="gwt-uid-23"]
    wait until element is visible    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[5]/div/div[2]
    click element  Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[5]/div/div[2]/div
    sleep    1s
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr/td
    sleep    1s
    wait until element is visible    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[7]/div/div[2]
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[7]/div/div[2]/div
    sleep    1s
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[1]/td
    sleep  1s
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[9]/div/div[2]
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[9]/div/div[2]/div
    sleep    1s
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[1]/td
    sleep    1s
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[1]/div/div[2]
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[1]/div/div[2]/div
    sleep  1s
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[3]/td
    sleep    1s
    #input text    Xpath://*[@id="gwt-uid-68"]    8777712344
    input text    Xpath://*[@id="gwt-uid-70"]  No.7 Elumalai st, nanmanagalm 600229.
    input text    Xpath://*[@id="gwt-uid-72"]    test1@gmail.com
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[9]/div/div[2]
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[9]/div/div[2]/button
    sleep    1s
    click element    Xpath://*[@id="PID_VAADIN_POPUPCAL"]/tbody/tr[2]/td/table/tbody/tr[5]/td[5]/span
    sleep    1s
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[11]/div/div[2]
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[11]/div/div[2]/div
    sleep    2s
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[2]/td
   # input text    Xpath://*[@id="gwt-uid-49"]    active
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[13]/div/div[2]
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[13]/div/div[2]/div
    sleep    1s
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[2]/td
    sleep    1s
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[5]/div/div/div/div[2]
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[5]/div/div/div/div[2]/div
    sleep    1s
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[3]/td
    sleep    1s
    press keys    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[2]/div/div[1]/div    [return]
    #click element    Xpath://*[@id="FTPCApps-1332792659-overlays"]/div[4]/div/div/p/i/font
   # press keys    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[2]/div/div[3]/div   [return]

    ##################### Validating View Button functionlity################################################
     reload page
     click element     Xpath://*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr[2]/td[8]
     sleep     1s
     press keys        Xpath:/html/body/div[2]/div[3]/div/div/div[2]/div[2]          [return]
   #  sleep     1s
    #################$ Single search element ################################################################
     click element    Xpath:/html/body/div[1]/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div/div/div[5]/div/div/div/input
     #click element    Xpath://*[@id="gwt-uid-12"]
     input text       Xpath:/html/body/div[1]/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div/div/div[5]/div/div/div/input    103
     #input text     Xpath://*[@id="gwt-uid-12"]    12105
     press keys    none    \ue007
     sleep    1s
     click element    Xpath://*[@id="BCOR-OperatorViewImpl"]/div/div/div[3]/div/div[2]/div/div/div[9]/div
     sleep    1s
    ################### Edit Functionlity ############################################################################
    click element   Xpath://*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr[2]/td[2]
    clear element text  Xpath://*[@id="gwt-uid-56"]
    input text    Xpath://*[@id="gwt-uid-56"]     Test3
    sleep    1s
    press keys    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[2]/div/div[1]/div     [return]

    ################## delete functionlity    ##################################################################
    click element   Xpath://*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr[2]/td[9]
    click element    Xpath://*[@id="LU-Button.OK"]
    sleep    1s
    ################# Multiple Search Functionlity ###############################################################
     click element    Xpath://*[@id="BCOR-OperatorViewImpl"]/div/div/div[3]/div/div[2]/div/div/div[1]/div/div[2]
     click element    Xpath://*[@id="BCOR-OperatorViewImpl"]/div/div/div[3]/div/div[2]/div/div/div[1]/div/div[2]/div
     sleep    1s
     click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[2]/td
    # input text       Xpath:/html/body/div[1]/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div/div/div[3]/div/div/div[1]/div/div[2]/input    Hubbell
     sleep   1s
    # press keys    none    \ue007
     click element    Xpath://*[@id="BCOR-OperatorViewImpl"]/div/div/div[3]/div/div[2]/div/div/div[3]/div/div[2]
     click element    Xpath://*[@id="BCOR-OperatorViewImpl"]/div/div/div[3]/div/div[2]/div/div/div[3]/div/div[2]/div
     sleep   1s
     click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[1]/td
     sleep    1s
     click element    Xpath://*[@id="BCOR-OperatorViewImpl"]/div/div/div[3]/div/div[2]/div/div/div[5]/div/div[2]
     click element    Xpath://*[@id="BCOR-OperatorViewImpl"]/div/div/div[3]/div/div[2]/div/div/div[5]/div/div[2]/div
     sleep   1s
     click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[2]/td
     sleep   1s
     click element    Xpath://*[@id="BCOR-OperatorViewImpl"]/div/div/div[3]/div/div[2]/div/div/div[7]/div/div[2]
     click element    Xpath://*[@id="BCOR-OperatorViewImpl"]/div/div/div[3]/div/div[2]/div/div/div[7]/div/div[2]/div
     sleep    1s
     click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[1]/td
     sleep    1s
     click element    Xpath://*[@id="BCOR-OperatorViewImpl"]/div/div/div[3]/div/div[2]/div/div/div[9]/div
     sleep    1s
     click element  Xpath ://*[@id="BCOR-HeaderViewImpl"]/div/div/div[2]/div/div/div/div/div/div[15]/div
     press keys     Xpath://*[@id="CD-Button.ApplicationNavBar.Logoff"]/span/span[2]  [RETURN] close browser
