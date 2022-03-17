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


***Test Cases ***
[documentation]
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
    ################# Adding new Record    #####################################################
     click element    Xpath://*[@id="BCOR-OperatorWorkCenterAllocationImpl"]/div/div/div[1]/div/div/div[1]/div
     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div/div[1]/div/div[1]/div/div[1]/div/div[2]     ####### Emp ID VAlidation #####
     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div/div[1]/div/div[1]/div/div[1]/div/div[2]/div
     sleep    1s
     click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[1]/td
     sleep    1s
     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div/div[1]/div/div[1]/div/div[3]/div/div[2]    ####### Work center ###########
     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div/div[1]/div/div[1]/div/div[3]/div/div[2]/div
     sleep    1s
     click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[4]/td
     sleep    1s
     input text    Xpath://*[@id="gwt-uid-27"]    TestWork     # Employee FN###
     input text    Xpath://*[@id="gwt-uid-29"]    Allocationnew          # Employee LN###
     input text    Xpath://*[@id="gwt-uid-31"]    Testing_java    #Current Skill Level ###
     input text    Xpath://*[@id="gwt-uid-33"]     Automation_Testing      # Expertise in #####
     sleep    1s
     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div/div[3]/div/div[1]/div/div[2]          ####Valid From ######
     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div/div[3]/div/div[1]/div/div[2]/button
     sleep    1s
     click element    Xpath://*[@id="PID_VAADIN_POPUPCAL"]/tbody/tr[2]/td/table/tbody/tr[4]/td[6]/span
     sleep    1s
     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div/div[3]/div/div[3]/div/div[2]             #####Valid To##########
     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div/div[3]/div/div[3]/div/div[2]/button
     sleep    1s
     click element    Xpath://*[@id="PID_VAADIN_POPUPCAL"]/tbody/tr[2]/td/table/tbody/tr[5]/td[7]/span
     press keys    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div/div[1]/div/div[5]/div/div[1]/div      [return]    close window
     ############## Validation Of Dupliaction Records #########################################################
     click element    Xpath://*[@id="BCOR-OperatorWorkCenterAllocationImpl"]/div/div/div[1]/div/div/div[1]/div

     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div/div[1]/div/div[1]/div/div[1]/div/div[2]     ####### Emp ID VAlidation #####
     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div/div[1]/div/div[1]/div/div[1]/div/div[2]/div
     sleep    1s
     click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[1]/td
     sleep    1s
     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div/div[1]/div/div[1]/div/div[3]/div/div[2]    ####### Work center ###########
     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div/div[1]/div/div[1]/div/div[3]/div/div[2]/div
     sleep    1s
     click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[4]/td
     sleep    1s
     input text    Xpath://*[@id="gwt-uid-48"]    TestWorkCenternew      # Employee FN###
     input text    Xpath://*[@id="gwt-uid-50"]    Allocation1   # Employee LN###
     input text    Xpath://*[@id="gwt-uid-52"]    Testing, java & Sql1    #Current Skill Level ###
     input text    Xpath://*[@id="gwt-uid-54"]    Automation      # Expertise in #####
     sleep    1s
     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div/div[3]/div/div[1]/div/div[2]          ####Valid From ######
     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div/div[3]/div/div[1]/div/div[2]/button
     sleep    1s
     click element    Xpath://*[@id="PID_VAADIN_POPUPCAL"]/tbody/tr[2]/td/table/tbody/tr[4]/td[3]/span
     sleep    1s
     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div/div[3]/div/div[3]/div/div[2]             #####Valid To##########
     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div/div[3]/div/div[3]/div/div[2]/button
     sleep    1s
     press keys    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div/div[1]/div/div[5]/div/div[1]/div       [return]   ### Save Button #####
     sleep    2s
     click element    Xpath://*[@id="FTPCApps-1332792659-overlays"]/div[5]/div/div/p/i/font         ### Employee ID Already exist #####
     press keys    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div/div[1]/div/div[5]/div/div[3]/div      [return]    close browser     ###### Cancel button
     sleep    1s
     reload page
     #################### View Functionality #####################################################
     click element    Xpath://*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr[1]/td[7]/div/div
     sleep    1s
     press keys    Xpath:/html/body/div[2]/div[3]/div/div/div[2]/div[2]           [return]
     ################    Single search functionlity ############################################
     click element    Xpath:/html/body/div[1]/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div/div/div[3]/div/div/div/input
     input text       Xpath:/html/body/div[1]/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div/div/div[3]/div/div/div/input    102
     press keys    none    \ue007
     sleep    1s
     click element    Xpath://*[@id="BCOR-OperatorWorkCenterAllocationImpl"]/div/div/div[2]/div/div[2]/div/div/div[9]/div
     sleep    1s
################### Edit Functionlity    ###########################################################
     click element    Xpath://*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr[1]/td/div/div/div[2]/div
     clear element text    Xpath://*[@id="gwt-uid-245"]
     input text    Xpath://*[@id="gwt-uid-245"]      TestNew

     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div/div[1]/div/div[1]/div/div[3]/div/div[2]
     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div/div[1]/div/div[1]/div/div[3]/div/div[2]/div
     sleep     1s
     click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[7]/td
     sleep    1s
     press keys    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[2]/div/div[1]/div     [return]     close window
     ################# delete functionlity    ############################################################
     click element   Xpath://*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr[2]/td[8]
     click element    Xpath://*[@id="LU-Button.OK"]
     sleep    1s
   #  press keys    Xpath://*[@id="154_window_close"]     [return]
     ################# Multiple Search Functionlity ###############################################################
     click element    Xpath://*[@id="BCOR-OperatorWorkCenterAllocationImpl"]/div/div/div[2]/div/div[2]/div/div/div[1]/div/div[2]
     click element    Xpath://*[@id="BCOR-OperatorWorkCenterAllocationImpl"]/div/div/div[2]/div/div[2]/div/div/div[1]/div/div[2]/div
     sleep    1s
     click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[2]/td
    # input text       Xpath:/html/body/div[1]/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div/div/div[3]/div/div/div[1]/div/div[2]/input    Hubbell
     sleep   1s
    # press keys    none    \ue007
     click element    Xpath://*[@id="BCOR-OperatorWorkCenterAllocationImpl"]/div/div/div[2]/div/div[2]/div/div/div[3]/div/div[2]
     click element    Xpath://*[@id="BCOR-OperatorWorkCenterAllocationImpl"]/div/div/div[2]/div/div[2]/div/div/div[3]/div/div[2]/div
     sleep   1s
     click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[1]/td
     sleep    1s
     click element    Xpath://*[@id="BCOR-OperatorWorkCenterAllocationImpl"]/div/div/div[2]/div/div[2]/div/div/div[5]/div/div[2]
     click element    Xpath://*[@id="BCOR-OperatorWorkCenterAllocationImpl"]/div/div/div[2]/div/div[2]/div/div/div[5]/div/div[2]/div
     sleep   1s
     click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[2]/td
     sleep   1s
     click element    Xpath://*[@id="BCOR-OperatorWorkCenterAllocationImpl"]/div/div/div[2]/div/div[2]/div/div/div[7]/div/div[2]
     click element    Xpath://*[@id="BCOR-OperatorWorkCenterAllocationImpl"]/div/div/div[2]/div/div[2]/div/div/div[7]/div/div[2]/div
     sleep    1s
     click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[1]/td
     sleep    1s
     click element    Xpath://*[@id="BCOR-OperatorWorkCenterAllocationImpl"]/div/div/div[2]/div/div[2]/div/div/div[9]/div
     sleep    1s
     click element  Xpath ://*[@id="BCOR-HeaderViewImpl"]/div/div/div[2]/div/div/div/div/div/div[15]/div
     press keys     Xpath://*[@id="CD-Button.ApplicationNavBar.Logoff"]/span/span[2]  [RETURN]     close browser






