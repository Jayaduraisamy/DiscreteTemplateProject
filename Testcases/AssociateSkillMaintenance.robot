*** Settings ***
Library     SeleniumLibrary
Library     Collections


*** Variables ***
${LOGINURL}     http://localhost:8080/FTPCApps/discrete#!AssociateSkillMaintenance
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
    ########################################################################################################################################################
    ####################################### Validation of Add New Records####################################################################################
    click element    Xpath://*[@id="BCOR-AssociateSkillViewImpl"]/div/div[1]/div/div/div[1]/div
   # click element    Xpath://*[@id="61_window_maximizerestore"]     #### MAximize Window ########
    sleep    1s
    click element    Xpath://*[@id="BCOR-AssociateSkillCreateDialogImpl"]/div/div/div[1]/div/div/div[1]/div/div[2]
    click element    Xpath://*[@id="BCOR-AssociateSkillCreateDialogImpl"]/div/div/div[1]/div/div/div[1]/div/div[2]/div       #### Site selection ######
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[2]/td
    sleep    1s
    click element    Xpath://*[@id="BCOR-AssociateSkillCreateDialogImpl"]/div/div/div[1]/div/div/div[3]/div/div[2]
    click element    Xpath://*[@id="BCOR-AssociateSkillCreateDialogImpl"]/div/div/div[1]/div/div/div[3]/div/div[2]/div      ####Work Area selection ######
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr/td
    sleep    1s
    click element    Xpath://*[@id="BCOR-AssociateSkillCreateDialogImpl"]/div/div/div[1]/div/div/div[5]/div/div[2]          ######Work center    #####
    click element    Xpath://*[@id="BCOR-AssociateSkillCreateDialogImpl"]/div/div/div[1]/div/div/div[5]/div/div[2]/div
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[7]/td
    sleep    1s
    click element    Xpath://*[@id="BCOR-AssociateSkillCreateDialogImpl"]/div/div/div[1]/div/div/div[7]/div/div[2]
    click element    Xpath://*[@id="BCOR-AssociateSkillCreateDialogImpl"]/div/div/div[1]/div/div/div[7]/div/div[2]/div      #####Employee ID ######
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[1]/td
    sleep     1s
    click element    Xpath://*[@id="BCOR-AssociateSkillCreateDialogImpl"]/div/div/div[3]/div/div/div/div/div[2]/div[1]/table/tbody/tr/td[4]/div/div      ####Current Skill level #####
    click element    Xpath://*[@id="BCOR-AssociateSkillCreateDialogImpl"]/div/div/div[3]/div/div/div/div/div[2]/div[1]/table/tbody/tr/td[4]/div/div/div
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[3]/td
    sleep    1s
    click element    Xpath://*[@id="BCOR-AssociateSkillCreateDialogImpl"]/div/div/div[3]/div/div/div/div/div[2]/div[1]/table/tbody/tr/td[5]/div/div
    click element    Xpath://*[@id="BCOR-AssociateSkillCreateDialogImpl"]/div/div/div[3]/div/div/div/div/div[2]/div[1]/table/tbody/tr/td[5]/div/div/div    #####Assign training #####
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[2]/td
    press keys    none    \ue007
    sleep    1s

    press keys    Xpath://*[@id="BCOR-AssociateSkillCreateDialogImpl"]/div/div/div[7]/div/div[1]/div     [return]      ####save button#######
    ################# Validate duplicate Records    ###################################################################################
    click element    Xpath://*[@id="BCOR-AssociateSkillViewImpl"]/div/div[1]/div/div/div[1]/div
   # click element    Xpath://*[@id="61_window_maximizerestore"]     #### MAximize Window ########
    sleep    1s
    click element    Xpath://*[@id="BCOR-AssociateSkillCreateDialogImpl"]/div/div/div[1]/div/div/div[1]/div/div[2]
    click element    Xpath://*[@id="BCOR-AssociateSkillCreateDialogImpl"]/div/div/div[1]/div/div/div[1]/div/div[2]/div       #### Site selection ######
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[2]/td
    sleep    1s
    click element    Xpath://*[@id="BCOR-AssociateSkillCreateDialogImpl"]/div/div/div[1]/div/div/div[3]/div/div[2]
    click element    Xpath://*[@id="BCOR-AssociateSkillCreateDialogImpl"]/div/div/div[1]/div/div/div[3]/div/div[2]/div      ####Work Area selection ######
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr/td
    sleep    1s
    click element    Xpath://*[@id="BCOR-AssociateSkillCreateDialogImpl"]/div/div/div[1]/div/div/div[5]/div/div[2]          ######Work center    #####
    click element    Xpath://*[@id="BCOR-AssociateSkillCreateDialogImpl"]/div/div/div[1]/div/div/div[5]/div/div[2]/div
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[7]/td
    sleep    1s
    click element    Xpath://*[@id="BCOR-AssociateSkillCreateDialogImpl"]/div/div/div[1]/div/div/div[7]/div/div[2]
    click element    Xpath://*[@id="BCOR-AssociateSkillCreateDialogImpl"]/div/div/div[1]/div/div/div[7]/div/div[2]/div      #####Employee ID ######
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[1]/td
    sleep     1s
    click element    Xpath://*[@id="BCOR-AssociateSkillCreateDialogImpl"]/div/div/div[3]/div/div/div/div/div[2]/div[1]/table/tbody/tr/td[4]/div/div      ####Current Skill level #####
    click element    Xpath://*[@id="BCOR-AssociateSkillCreateDialogImpl"]/div/div/div[3]/div/div/div/div/div[2]/div[1]/table/tbody/tr/td[4]/div/div/div
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[1]/td
    sleep    1s
    click element    Xpath://*[@id="BCOR-AssociateSkillCreateDialogImpl"]/div/div/div[3]/div/div/div/div/div[2]/div[1]/table/tbody/tr/td[5]/div/div
    click element    Xpath://*[@id="BCOR-AssociateSkillCreateDialogImpl"]/div/div/div[3]/div/div/div/div/div[2]/div[1]/table/tbody/tr/td[5]/div/div/div     #####Assign training #####
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[2]/td
    press keys    none    \ue007
    sleep    1s
    press keys    Xpath://*[@id="BCOR-AssociateSkillCreateDialogImpl"]/div/div/div[7]/div/div[1]/div        [return]      ####save button#######
    sleep    1s
    click element    Xpath://*[@id="FTPCApps-1332792659-overlays"]/div[4]/div/div/p/i/font                                      #### Duplicate Employee ID Validation #########
    sleep    1s
    press keys    Xpath://*[@id="BCOR-AssociateSkillCreateDialogImpl"]/div/div/div[7]/div/div[3]/div       [return]   close window    ###### Cancel button #####
     ################# View Functionlity ##################################################################################
     click element    Xpath:/html/body/div[1]/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div/div[9]/div/div/div/div/div[2]/div[1]/table/tbody/tr[1]/td[7]/div/div
     press keys       Xpath:/html/body/div[2]/div[3]/div/div/div[2]/div[2]     [return]
     sleep    1s
     ################## Update Records #################################################################################
     click element    Xpath://*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr/td/div/div/div[1]/div
     clear element text
     #################### Delete Records ##################################################################################
    click element    Xpath:/html/body/div[1]/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div/div[9]/div/div/div/div/div[2]/div[1]/table/tbody/tr[1]/td[8]/div/div
    click element    Xpath://*[@id="LU-Button.OK"]
   ## click element    Xpath://*[@id="LU-Button.OK"]
    reload page
    sleep    1s
    ################### Single Search Functionlity ##########################################################
    click element    Xpath:/html/body/div[1]/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div/div/div[5]/div/div/div/input
     #click element    Xpath://*[@id="gwt-uid-12"]
     input text       Xpath:/html/body/div[1]/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div/div/div[5]/div/div/div/input    oven
     #input text     Xpath://*[@id="gwt-uid-12"]    12105
     sleep    2s
     press keys    none    \ue007
     clear element text    Xpath:/html/body/div[1]/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div/div/div[5]/div/div/div/input
     sleep    1s
     #######################    Multiple search functionlity ###################################################
      ######################Multiple Search Functionlity ##################################################################################################
     click element     Xpath://*[@id="BCOR-SkillMappingtoTaskViewImpl"]/div/div/div[3]/div/div[2]/div/div/div[1]/div/div[2]
     click element    Xpath://*[@id="BCOR-SkillMappingtoTaskViewImpl"]/div/div/div[3]/div/div[2]/div/div/div[1]/div/div[2]/div
     click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[3]/td
     sleep    1s
     click element    Xpath://*[@id="BCOR-SkillMappingtoTaskViewImpl"]/div/div/div[3]/div/div[2]/div/div/div[3]/div/div[2]
     click element    Xpath://*[@id="BCOR-SkillMappingtoTaskViewImpl"]/div/div/div[3]/div/div[2]/div/div/div[3]/div/div[2]/div
     click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[2]/td/span
     sleep    1s
     click element    Xpath://*[@id="BCOR-SkillMappingtoTaskViewImpl"]/div/div/div[3]/div/div[2]/div/div/div[5]/div/div[2]
     click element    Xpath://*[@id="BCOR-SkillMappingtoTaskViewImpl"]/div/div/div[3]/div/div[2]/div/div/div[5]/div/div[2]/div
     click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[7]/td
     sleep    1s
     click element    Xpath://*[@id="BCOR-SkillMappingtoTaskViewImpl"]/div/div/div[3]/div/div/div[7]/div






