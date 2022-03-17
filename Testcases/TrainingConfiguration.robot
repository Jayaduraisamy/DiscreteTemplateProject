*** Settings ***
Library     SeleniumLibrary
Library     Collections


*** Variables ***
${LOGINURL}     http://localhost:8080/FTPCApps/discrete#!TrainingConfiguration
${BROWSER}      Chrome
${UserName}     admin
${Password}     admin



*** Keywords ***



*** Test Cases ***
Oopen Browser to login OperatorDetailsPage
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
    ####################################### Validation of Add New Records####################################################################################
    click element    Xpath://*[@id="BCOR-TrainingConfigurationViewImpl"]/div/div/div[1]/div/div/div[1]/div
    sleep    1s
    click element    Xpath://*[@id="BCOR-TrainingConfigurationCreateDialogImpl"]/div/div/div/div/div[1]/div/div/div[1]/div/div[2]
    click element    Xpath://*[@id="BCOR-TrainingConfigurationCreateDialogImpl"]/div/div/div/div/div[1]/div/div/div[1]/div/div[2]/div      ##### Site #######
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[1]/td
    press keys    none    \ue007
    sleep    1s
    input text     Xpath://*[@id="gwt-uid-17"]     active101
    input text    Xpath://*[@id="gwt-uid-19"]      PartTim02
    input text    Xpath://*[@id="gwt-uid-21"]      Progress03

    press keys    Xpath://*[@id="BCOR-TrainingConfigurationCreateDialogImpl"]/div/div/div/div/div[5]/div/div[1]/div      [return]     close browser   #### Save button
   # press keys    Xpath://*[@id="BCOR-TrainingConfigurationCreateDialogImpl"]/div/div/div/div/div[5]/div/div[3]/div     [return]     close browser     ##### Cancel button

    ##################### Mandatory Field Validation ##################################################################################
    sleep    1s
    reload page
    click element    Xpath://*[@id="BCOR-TrainingConfigurationViewImpl"]/div/div/div[1]/div/div/div[1]/div
    sleep    1s
    click element    Xpath://*[@id="BCOR-TrainingConfigurationCreateDialogImpl"]/div/div/div/div/div[1]/div/div/div[1]/div/div[2]
    click element    Xpath://*[@id="BCOR-TrainingConfigurationCreateDialogImpl"]/div/div/div/div/div[1]/div/div/div[1]/div/div[2]/div      ##### Site #######
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[3]/td
    press keys    none    \ue007
    sleep    1s
    input text     Xpath://*[@id="gwt-uid-13"]     Test1

    input text     Xpath://*[@id="gwt-uid-15"]     ${empty}

    input text      Xpath://*[@id="gwt-uid-17"]    Test1
    sleep    1s
    click element    Xpath:/html/body/div[2]/div[3]/div/div/div[3]/div/div/div/div/div/div/div[5]/div/div[1]/div
    sleep    1s
    click element    Xpath://*[@id="FTPCApps-1332792659-overlays"]/div[4]/div/div/p/i/font
    sleep    1s
    press keys    Xpath://*[@id="BCOR-TrainingConfigurationCreateDialogImpl"]/div/div/div/div/div[5]/div/div[3]/div      [return]     close browser
    ######################### validate update Records    ####################################
    reload page
    click element    Xpath://*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr[2]/td[1]/div/div
    clear element text    Xpath://*[@id="gwt-uid-13"]
    input text    Xpath://*[@id="gwt-uid-13"]     ${empty}
    press keys    Xpath://*[@id="BCOR-TrainingConfigurationCreateDialogImpl"]/div/div/div/div/div[5]/div/div[1]/div     [return]
    click element    Xpath://*[@id="FTPCApps-1332792659-overlays"]/div[4]/div/div/p/i/font                        #### Mandatory Field Validation#####
    sleep    1s
    input text    Xpath://*[@id="gwt-uid-13"]      Part time offer
    sleep    1s
    press keys    Xpath://*[@id="BCOR-TrainingConfigurationCreateDialogImpl"]/div/div/div/div/div[5]/div/div[1]/div      [return]     ### save ############
    sleep    1s

    #################### View Functionlity ################################################
    click element     Xpath://*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr[2]/td[5]/div/div
    sleep    1s
    click element       Xpath:/html/body/div[2]/div[3]/div/div/div[2]/div[2]
    ################ Delete Functionlity ########################################################
    reload page
    #wait until element is visible       Xpath://*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr[2]/td[5]/div/div
    click element     Xpath://*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr[2]/td[6]/div/div
    click element    Xpath://*[@id="LU-Button.OK"]
    sleep    1s
   ### click element    Xpath://*[@id="LU-Button.Cancel"]      ###### Cancel button ######
   ########    Single Search Functionlity #############################################
   click element    Xpath:/html/body/div[1]/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div/div/div[5]/div/div
   click element    Xpath:/html/body/div[1]/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div/div/div[5]/div/div/div/div/span
   input text    Xpath://*[@id="gwt-uid-6"]     full time
   press keys    none        \ue007
   sleep    1s
   click element    Xpath://*[@id="BCOR-TrainingConfigurationViewImpl"]/div/div/div[3]/div/div[2]/div/div/div[3]/div
   reload page
   ################################### Multiple Search Functionlity ######################################################################################################
   click element    Xpath://*[@id="BCOR-TrainingConfigurationViewImpl"]/div/div/div[3]/div/div[2]/div/div/div[1]/div/div[2]
   click element    Xpath://*[@id="BCOR-TrainingConfigurationViewImpl"]/div/div/div[3]/div/div[2]/div/div/div[1]/div/div[2]/div
   click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[2]/td
   sleep    1s
   click element    Xpath://*[@id="BCOR-TrainingConfigurationViewImpl"]/div/div/div[3]/div/div[2]/div/div/div[3]/div
   reload page
   close browser



