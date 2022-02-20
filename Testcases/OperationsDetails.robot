*** Settings ***
Library     SeleniumLibrary
Library     Collections


*** Variables ***
${LOGINURL}     http://localhost:8080/FTPCApps/discrete#!OperatorDetailsEntry
${BROWSER}      Chrome
${UserName}     admin
${Password}     admin
${xpathToIdcheck}     Xpath://*[@id="gwt-uid-19"]

${table_rows_xpath}
${verify_values}
${from_parent_row_to_columns_xpath}
${status}
@{columns}
${global=timeout}    100s
${var}
${SelectFirstRecord}
${rowNumber}

${rowLocator}     Xpath://*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr[1]/td[8]/div

*** Keywords ***



*** Test Cases ***
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
    ################# Adding New Record ###############################################
    click element     Xpath://*[@id="BCOR-OperatorViewImpl"]/div/div/div[1]/div/div/div[1]/div
    set browser implicit wait    100
    wait until element is visible    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div/div[1]/div/div[1]/div/div[1]/div/div[2]/div
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div/div[1]/div/div[1]/div/div[1]/div/div[2]/div
    set browser implicit wait    100
    click element     Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[3]/td
    input text     Xpath://*[@id="gwt-uid-21"]      104

    input text     Xpath://*[@id="gwt-uid-23"]      QA4
    input text     Xpath://*[@id="gwt-uid-25"]      Test4
    set browser implicit wait    100
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div/div[1]/div/div[3]/div/div[5]/div/div[2]/div
    set browser implicit wait    100
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[2]/td
    set browser implicit wait    1000
    input text    Xpath://*[@id="gwt-uid-29"]      qwe4
    input text    Xpath://*[@id="gwt-uid-31"]      Rest4
    set browser implicit wait    100
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div/div[3]/div/div/div/div[2]/div
    set browser implicit wait    100
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[2]/td
    set browser implicit wait    100
    press keys    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div/div[1]/div/div[5]/div/div[1]/div    [return]    close window
   # click element  Xpath://*[@id="FTPCApps-1332792659-overlays"]/div[4]/div/div/p/i/font
   # set browser implicit wait    100

    reload page
    sleep    1s
    ############### Validating duplicate Records    ####################################
    click element     Xpath://*[@id="BCOR-OperatorViewImpl"]/div/div/div[1]/div/div/div[1]/div
    set browser implicit wait    100
    wait until element is visible    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div/div[1]/div/div[1]/div/div[1]/div/div[2]/div
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div/div[1]/div/div[1]/div/div[1]/div/div[2]/div
    set browser implicit wait    100
    click element     Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[3]/td
    input text     Xpath://*[@id="gwt-uid-17"]     104
    input text     Xpath://*[@id="gwt-uid-19"]      QA4
    input text     Xpath://*[@id="gwt-uid-21"]      Test4
    set browser implicit wait    100
    click element    Xpath://*[@id="gwt-uid-23"]
    input text       Xpath://*[@id="gwt-uid-23"]     Hubbell Assembly
    press keys    none    \ue007
    sleep    1s
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[2]/td
    set browser implicit wait    1000
    input text    Xpath://*[@id="gwt-uid-25"]      qwe4
    input text    Xpath://*[@id="gwt-uid-27"]      Rest4
    set browser implicit wait    100
    #click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div/div[3]/div/div/div/div[2]/div
    #click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[2]/td
    click element    Xpath://*[@id="gwt-uid-29"]
    input text       Xpath://*[@id="gwt-uid-29"]    Core Winding
    press keys    none    \ue007
    sleep     1s

    press keys    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div/div[1]/div/div[5]/div/div[1]/div    [return]
    click element  Xpath://*[@id="FTPCApps-1332792659-overlays"]/div[4]/div/div/p/i/font
   # set browser implicit wait    100
    sleep  2s
   # press keys   Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div/div[1]/div/div[5]/div/div[3]/div    [return]    close window
    #set browser implicit wait    100
   # double click element    Xpath://*[@id="FTPCApps-1332792659-overlays"]/div[4]/div/div/p/i/font

   # press keys    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div/div[1]/div/div[5]/div/div[1]/div    [return]

   # press keys    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div/div[1]/div/div[5]/div/div[1]/div    [return]    close window
     press keys     Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div/div[1]/div/div[5]/div/div[3]/div      [return]    close window
     sleep    1s
  ######### EDIT FUnctionlality ###############################
     click element    Xpath://*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr[1]/td[2]
     click element    Xpath://*[@id="gwt-uid-36"]
	 clear element text   Xpath://*[@id="gwt-uid-36"]
	 input text      Xpath://*[@id="gwt-uid-36"]     Selvi1236   #####Employee sur Name ####


     press keys     Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div/div[1]/div/div[5]/div/div[1]/div     [return]   close window
########## VIEW Functionlity#################################
     click element     Xpath://*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr[1]/td[8]
     press keys        Xpath:/html/body/div[2]/div[3]/div/div/div[2]/div[2]    [return]
     sleep     1s
      ######## Search Functionlity ##############################################
     click element    Xpath:/html/body/div[1]/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div/div/div[5]/div/div/div/input
     #click element    Xpath://*[@id="gwt-uid-12"]
     input text       Xpath:/html/body/div[1]/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div/div/div[5]/div/div/div/input    103
     #input text     Xpath://*[@id="gwt-uid-12"]    12105
     sleep    2s
     press keys    none    \ue007
     clear element text    Xpath:/html/body/div[1]/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div/div/div[5]/div/div/div/input
     sleep    1s
 ######### Delete Functionality ###########################
      click element      Xpath://*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr[1]/td[9]
      press keys         Xpath://*[@id="LU-Button.OK"]     [return]
      sleep    2s

 ######## Searching the values through Dropdown ######################################
     click element    Xpath:/html/body/div[1]/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div/div/div[3]/div/div/div[1]/div/div[2]/input
     input text      Xpath:/html/body/div[1]/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div/div/div[3]/div/div/div[1]/div/div[2]/input    Hubbell
     sleep    3s
     press keys    none    \ue007
     click element    Xpath:/html/body/div[1]/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div/div/div[3]/div/div/div[3]/div/div[2]/input
     input text    Xpath:/html/body/div[1]/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div/div/div[3]/div/div/div[3]/div/div[2]/input    Hubbell Assembly
     sleep    5s
     press keys    none    \ue007
     click element    Xpath:/html/body/div[1]/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div/div/div[3]/div/div/div[5]/div/div[2]/input
     input text    Xpath:/html/body/div[1]/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div/div/div[3]/div/div/div[5]/div/div[2]/input    Core Winding
     sleep   3s
     press keys    none    \ue007
     click element    Xpath:/html/body/div[1]/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div/div/div[3]/div/div/div[7]/div/div[2]/input
     input text    Xpath:/html/body/div[1]/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div/div/div[3]/div/div/div[7]/div/div[2]/input    102
     sleep    3s
     press keys    none    \ue007
     sleep    2s

################ Log off ########################################################################
     click element  Xpath ://*[@id="BCOR-HeaderViewImpl"]/div/div/div[2]/div/div/div/div/div/div[15]/div
     press keys     Xpath://*[@id="CD-Button.ApplicationNavBar.Logoff"]/span/span[2]  [RETURN] close browser
   #  click element  Xpath ://*[@id="BCOR-HeaderViewImpl"]/div/div/div[2]/div/div/div/div/div/div[15]/div

   #  press keys     Xpath://*[@id="CD-Button.ApplicationNavBar.Logoff"]/span/span[2]  [RETURN] close window

