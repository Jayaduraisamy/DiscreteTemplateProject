*** Settings ***
Library     SeleniumLibrary
Library     Collections


*** Variables ***
${LOGINURL}     http://localhost:8080/FTPCApps/discrete#!SkillMappingToTask
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
    click element    Xpath://*[@id="BCOR-SkillMappingtoTaskViewImpl"]/div/div/div[1]/div/div/div[1]/div
    sleep    1s
    #click element    Xpath://*[@id="97_window_maximizerestore"]
    sleep    1s
    click element    Xpath://*[@id="BCOR-SkillsMappingCreateDialogImpl"]/div/div/div/div/div/div[1]/div/div/div[1]/div/div[1]/div/div[2]
    click element    Xpath://*[@id="BCOR-SkillsMappingCreateDialogImpl"]/div/div/div/div/div/div[1]/div/div/div[1]/div/div[1]/div/div[2]/div
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[3]/td
    sleep    1s
    click element    Xpath://*[@id="BCOR-SkillsMappingCreateDialogImpl"]/div/div/div/div/div/div[1]/div/div/div[1]/div/div[3]/div/div[2]
    click element    Xpath://*[@id="BCOR-SkillsMappingCreateDialogImpl"]/div/div/div/div/div/div[1]/div/div/div[1]/div/div[3]/div/div[2]/div
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[1]/td
    sleep    1s
    click element    Xpath://*[@id="BCOR-SkillsMappingCreateDialogImpl"]/div/div/div/div/div/div[1]/div/div/div[2]/div/div[1]/div
    sleep    1s
    input text     Xpath://*[@id="BCOR-SkillsMappingCreateDialogImpl"]/div/div/div/div/div/div[3]/div/div[2]/div[1]/table/tbody/tr/td[1]/div/input    MySQL&Python
    input text     Xpath://*[@id="BCOR-SkillsMappingCreateDialogImpl"]/div/div/div/div/div/div[3]/div/div[2]/div[1]/table/tbody/tr/td[2]/div/input    MS_Training
    sleep    1s
    click element    Xpath://*[@id="BCOR-SkillsMappingCreateDialogImpl"]/div/div/div/div/div/div[3]/div/div[2]/div[1]/table/tbody/tr/td[3]/div/div
    click element    Xpath://*[@id="BCOR-SkillsMappingCreateDialogImpl"]/div/div/div/div/div/div[3]/div/div[2]/div[1]/table/tbody/tr/td[3]/div/div/div
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[2]/td
    sleep    1s
    click element    Xpath://*[@id="BCOR-SkillsMappingCreateDialogImpl"]/div/div/div/div/div/div[3]/div/div[2]/div[1]/table/tbody/tr/td[4]/div/div
    click element    Xpath://*[@id="BCOR-SkillsMappingCreateDialogImpl"]/div/div/div/div/div/div[3]/div/div[2]/div[1]/table/tbody/tr/td[4]/div/div/div
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[3]/td
    sleep    1s
    click element    Xpath://*[@id="BCOR-SkillsMappingCreateDialogImpl"]/div/div/div/div/div/div[3]/div/div[2]/div[1]/table/tbody/tr/td[5]/div
    click element    Xpath://*[@id="BCOR-SkillsMappingCreateDialogImpl"]/div/div/div/div/div/div[3]/div/div[2]/div[1]/table/tbody/tr/td[5]/div/div/button
    click element    Xpath://*[@id="PID_VAADIN_POPUPCAL"]/tbody/tr[2]/td/table/tbody/tr[2]/td[4]/span
    sleep    1s
    click element    Xpath://*[@id="BCOR-SkillsMappingCreateDialogImpl"]/div/div/div/div/div/div[3]/div/div[2]/div[1]/table/tbody/tr/td[6]/div/div
    click element    Xpath://*[@id="BCOR-SkillsMappingCreateDialogImpl"]/div/div/div/div/div/div[3]/div/div[2]/div[1]/table/tbody/tr/td[6]/div/div/button
    click element    Xpath://*[@id="PID_VAADIN_POPUPCAL"]/tbody/tr[2]/td/table/tbody/tr[6]/td[6]/span
    sleep    1s
    ##press keys      Xpath://*[@id="FTPCApps-1332792659-overlays"]/div[4]/div/div/p/i/font     [return]
    #sleep    1s
 ##
     #click element    Xpath://*[@id="BCOR-SkillsMappingCreateDialogImpl"]/div/div/div/div/div/div[1]/div/div/div[2]/div/div[1]/div
  #  sleep    1s
     #click element    Xpath://*[@id="BCOR-SkillsMappingCreateDialogImpl"]/div/div/div/div/div/div[1]/div/div/div[2]/div/div[1]/div
  #  sleep    1s
    # click element    Xpath://*[@id="BCOR-SkillsMappingCreateDialogImpl"]/div/div/div/div/div/div[1]/div/div/div[2]/div/div[2]/div
  #  sleep    1s
 #   click element    Xpath://*[@id="62_window_maximizerestore"]
  #  sleep    1s
   # click element    Xpath://*[@id="62_window_close"]
    ## press keys    Xpath://*[@id="BCOR-SkillsMappingCreateDialogImpl"]/div/div/div/div/div/div[5]/div/div[1]/div    [return]
    # click element    Xpath://*[@id="FTPCApps-1332792659-overlays"]/div[4]/div/div/p/i/font
     press keys    Xpath://*[@id="BCOR-SkillsMappingCreateDialogImpl"]/div/div/div/div/div/div[5]/div/div[1]/div       [return]    close browser
     reload page
   #reload page
    ############################### Update Functionlity ##########################################################################
    click element     Xpath://*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr[1]/td[3]/div/div
    clear element text    Xpath://*[@id="BCOR-SkillsMappingCreateDialogImpl"]/div/div/div/div/div/div[3]/div/div[2]/div[1]/table/tbody/tr/td[2]/div/input
    input text    Xpath://*[@id="BCOR-SkillsMappingCreateDialogImpl"]/div/div/div/div/div/div[3]/div/div[2]/div[1]/table/tbody/tr/td[2]/div/input      sql
    press keys    Xpath://*[@id="BCOR-SkillsMappingCreateDialogImpl"]/div/div/div/div/div/div[5]/div/div[1]/div         [return]      close browser
    sleep  1s
  #  close browser
   # reload page
    ############################ View Functionlity ##########################################################################################
    reload page
    click element     Xpath://*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr[1]/td[7]/div/div
    sleep    1s
    press keys    Xpath:/html/body/div[2]/div[3]/div/div/div[2]/div[2]     [return]    close browser
    #######################################################################################################################################
    ########################## Delete FUnctionlity ########################################################################################
    click element    Xpath://*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr[1]/td[8]/div/div
    sleep    1s
    click element    Xpath://*[@id="LU-Button.OK"]
    #####################################Search Functionlity #############################################################################
     click element    Xpath:/html/body/div[1]/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div/div/div[5]/div/div/div/input
     #click element    Xpath://*[@id="gwt-uid-12"]
     input text       Xpath:/html/body/div[1]/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div/div/div[5]/div/div/div/input    inspection
     #input text     Xpath://*[@id="gwt-uid-12"]    12105
     press keys    none    \ue007
      sleep    2s
     click element    Xpath://*[@id="BCOR-SkillMappingtoTaskViewImpl"]/div/div/div[3]/div/div[2]/div/div/div[7]/div
     sleep    1s
     ######################################################################################################################################################
     ######################Multiple Search Functionlity ##################################################################################################
     click element     Xpath://*[@id="BCOR-SkillMappingtoTaskViewImpl"]/div/div/div[3]/div/div[2]/div/div/div[1]/div/div[2]
     click element    Xpath://*[@id="BCOR-SkillMappingtoTaskViewImpl"]/div/div/div[3]/div/div[2]/div/div/div[1]/div/div[2]/div
     click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[2]/td
     sleep    1s
     click element    Xpath://*[@id="BCOR-SkillMappingtoTaskViewImpl"]/div/div/div[3]/div/div[2]/div/div/div[3]/div/div[2]
     click element    Xpath://*[@id="BCOR-SkillMappingtoTaskViewImpl"]/div/div/div[3]/div/div[2]/div/div/div[3]/div/div[2]/div
     click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[1]/td
     sleep    1s
     click element    Xpath://*[@id="BCOR-SkillMappingtoTaskViewImpl"]/div/div/div[3]/div/div[2]/div/div/div[5]/div/div[2]
     click element    Xpath://*[@id="BCOR-SkillMappingtoTaskViewImpl"]/div/div/div[3]/div/div[2]/div/div/div[5]/div/div[2]/div
     click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[1]/td
     sleep    1s
     click element    Xpath://*[@id="BCOR-SkillMappingtoTaskViewImpl"]/div/div/div[3]/div/div[2]/div/div/div[7]/div
     close browser






