*** Settings ***
Library       SeleniumLibrary
Library       Collections
Library      ../Library/ExcelHandling.py


*** Variables ***
${LOGINURL}     http://localhost:8080/FTPCApps/discrete#!TrainingMaster
${BROWSER}      Chrome
${UserName}     admin
${Password}     admin



*** Keywords ***

*** Variables ***
${excel_path}  C://Users/JD1/Downloads/TrainingDetails.xlsx
${excel_val1}
${excel_val2}
${excel_val3}

*** Test Cases ***
Open Excel

  #open excel and read data from excel

        ${excel_val1}     ExcelHandling.readexcel       Sheet1  1   ${excel_path}
        ${excel_val2}     ExcelHandling.readexcel       Sheet1  2   ${excel_path}
        ${excel_val3}      ExcelHandling.readexcel      Sheet1  3   ${excel_path}
        log to console    ${excel_val1}
        log to console    ${excel_val2}
        log to console    ${excel_val3}
        sleep     3s
Open Browser to login TrainingMaster
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
    click element    Xpath://*[@id="BCOR-TrainingMasterViewImpl"]/div/div[1]/div/div/div[1]/div
    sleep    2s

     input text    Xpath://*[@id="gwt-uid-21"]      101
 #   ${t1}=   set variable    ${excel_val1}
    sleep    1s
   ### ${Column1}     set variable    ${excel_val1}
    input text    Xpath://*[@id="gwt-uid-23"]       SQL        #General #####
    sleep    1s
    input text    Xpath://*[@id="gwt-uid-25"]      Full time Offer
    sleep    1s
    #######    validity and Type    ######
    click element    Xpath://*[@id="BCOR-TrainingMasterCreateDialogImpl"]/div/div/div[3]/div/div[2]/div/div/div[1]/div/div/div[1]/div/div[2]
    click element    xpath://*[@id="BCOR-TrainingMasterCreateDialogImpl"]/div/div/div[3]/div/div[2]/div/div/div[1]/div/div/div[1]/div/div[2]/div      #Training Category #####
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[2]/td
    sleep    1s
    click element    Xpath://*[@id="BCOR-TrainingMasterCreateDialogImpl"]/div/div/div[3]/div/div[2]/div/div/div[3]/div/div/div[1]/div/div[2]
    click element    Xpath://*[@id="BCOR-TrainingMasterCreateDialogImpl"]/div/div/div[3]/div/div[2]/div/div/div[3]/div/div/div[1]/div/div[2]/div      ### Training Type ####
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[1]/td
    sleep    1s
    click element    Xpath://*[@id="BCOR-TrainingMasterCreateDialogImpl"]/div/div/div[3]/div/div[2]/div/div/div[1]/div/div/div[3]/div/div[2]         #### Skill Name ####
    click element    Xpath://*[@id="BCOR-TrainingMasterCreateDialogImpl"]/div/div/div[3]/div/div[2]/div/div/div[1]/div/div/div[3]/div/div[2]/div
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[1]/td
    sleep     1s
    click element    Xpath://*[@id="BCOR-TrainingMasterCreateDialogImpl"]/div/div/div[3]/div/div[2]/div/div/div[3]/div/div/div[3]/div/div[2]
    click element    Xpath://*[@id="BCOR-TrainingMasterCreateDialogImpl"]/div/div/div[3]/div/div[2]/div/div/div[3]/div/div/div[3]/div/div[2]/button     ##### Valid From #####
    click element    Xpath://*[@id="PID_VAADIN_POPUPCAL"]/tbody/tr[2]/td/table/tbody/tr[6]/td[7]/span
    sleep    1s
    click element    Xpath://*[@id="BCOR-TrainingMasterCreateDialogImpl"]/div/div/div[3]/div/div[2]/div/div/div[5]/div/div/div/div/div[2]               ###### Valid To #####
    click element    Xpath://*[@id="BCOR-TrainingMasterCreateDialogImpl"]/div/div/div[3]/div/div[2]/div/div/div[5]/div/div/div/div/div[2]/button
    click element    Xpath://*[@id="PID_VAADIN_POPUPCAL"]/tbody/tr[2]/td/table/tbody/tr[3]/td[7]/span
    sleep    1s
    click element    Xpath://*[@id="BCOR-TrainingMasterCreateDialogImpl"]/div/div/div[5]/div/div/div[1]/div      #####Save button #####
    sleep     1s
 #   click element    Xpath://*[@id="BCOR-TrainingMasterCreateDialogImpl"]/div/div/div[5]/div/div/div[3]/div      ###### cancel button #####
    #########Dupliacte Record Validation ##################################################
    click element    Xpath://*[@id="BCOR-TrainingMasterViewImpl"]/div/div[1]/div/div/div[1]/div
    sleep    2s

    input text    Xpath://*[@id="gwt-uid-42"]       101
    sleep    1s
   ### ${Column1}     set variable    ${excel_val1}
    input text    Xpath://*[@id="gwt-uid-44"]       SQL        #General #####
    sleep    1s
    input text    Xpath://*[@id="gwt-uid-46"]      Full time Offer
    sleep    1s
    #######    validity and Type    ######
    click element    Xpath://*[@id="BCOR-TrainingMasterCreateDialogImpl"]/div/div/div[3]/div/div[2]/div/div/div[1]/div/div/div[1]/div/div[2]
    click element    xpath://*[@id="BCOR-TrainingMasterCreateDialogImpl"]/div/div/div[3]/div/div[2]/div/div/div[1]/div/div/div[1]/div/div[2]/div      #Training Category #####
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[2]/td
    sleep    1s
    click element    Xpath://*[@id="BCOR-TrainingMasterCreateDialogImpl"]/div/div/div[3]/div/div[2]/div/div/div[3]/div/div/div[1]/div/div[2]
    click element    Xpath://*[@id="BCOR-TrainingMasterCreateDialogImpl"]/div/div/div[3]/div/div[2]/div/div/div[3]/div/div/div[1]/div/div[2]/div      ### Training Type ####
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[1]/td
    sleep    1s
    click element    Xpath://*[@id="BCOR-TrainingMasterCreateDialogImpl"]/div/div/div[3]/div/div[2]/div/div/div[1]/div/div/div[3]/div/div[2]         #### Skill Name ####
    click element    Xpath://*[@id="BCOR-TrainingMasterCreateDialogImpl"]/div/div/div[3]/div/div[2]/div/div/div[1]/div/div/div[3]/div/div[2]/div
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[1]/td
    sleep     1s
    click element    Xpath://*[@id="BCOR-TrainingMasterCreateDialogImpl"]/div/div/div[3]/div/div[2]/div/div/div[3]/div/div/div[3]/div/div[2]
    click element    Xpath://*[@id="BCOR-TrainingMasterCreateDialogImpl"]/div/div/div[3]/div/div[2]/div/div/div[3]/div/div/div[3]/div/div[2]/button     ##### Valid From #####
    click element    Xpath://*[@id="PID_VAADIN_POPUPCAL"]/tbody/tr[2]/td/table/tbody/tr[6]/td[7]/span
    sleep    1s
    click element    Xpath://*[@id="BCOR-TrainingMasterCreateDialogImpl"]/div/div/div[3]/div/div[2]/div/div/div[5]/div/div/div/div/div[2]               ###### Valid To #####
    click element    Xpath://*[@id="BCOR-TrainingMasterCreateDialogImpl"]/div/div/div[3]/div/div[2]/div/div/div[5]/div/div/div/div/div[2]/button
    click element    Xpath://*[@id="PID_VAADIN_POPUPCAL"]/tbody/tr[2]/td/table/tbody/tr[3]/td[7]/span
    sleep    1s
    click element    Xpath://*[@id="BCOR-TrainingMasterCreateDialogImpl"]/div/div/div[5]/div/div/div[1]/div      #####Save button #####
    click element    Xpath://*[@id="FTPCApps-1332792659-overlays"]/div[4]/div/div/p/i/font      ###Validation messsage    #####
    sleep    1s
    click element    Xpath://*[@id="BCOR-TrainingMasterCreateDialogImpl"]/div/div/div[5]/div/div/div[3]/div      ###cancel button ###
    sleep     1s
 #   ############################################# Delete Functionlity ###########################################
   click element    Xpath://*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr[1]/td[9]/div/div
   click element    Xpath://*[@id="LU-Button.OK"]
   reload page
   ########### View Functionlity ################################################################################
    reload page
    click element    Xpath://*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr[1]/td[8]/div/div
    press keys      Xpath:/html/body/div[2]/div[3]/div/div/div[2]/div[2]        [return]         close browser
    ###############################################################################################################
    ################################### SIngle Search Funtionlity ################################################
   click element    Xpath://*[@id="BCOR-TrainingMasterViewImpl"]/div/div[7]/div/div/div
   click element    Xpath://*[@id="gwt-uid-9"]/span
   input text    Xpath://*[@id="gwt-uid-10"]      java
   press keys    none        \ue007
   sleep    1s
   click element    Xpath://*[@id="BCOR-TrainingMasterViewImpl"]/div/div[3]/div/div[2]/div/div/div[7]/div
   reload page
    ###################### Update Functionlity    #################################################################
    click element    Xpath://*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr[1]/td[1]/div/div
    sleep     1s
    clear element text    Xpath://*[@id="gwt-uid-19"]
    input text     Xpath://*[@id="gwt-uid-19"]       ${empty}
    press keys     Xpath://*[@id="BCOR-TrainingMasterCreateDialogImpl"]/div/div/div[5]/div/div/div[1]/div       [return]
    click element    Xpath://*[@id="FTPCApps-1332792659-overlays"]/div[4]/div/div/p/i/font     #### Mandatory Field Validation ########
    sleep    1s
    input text    Xpath://*[@id="gwt-uid-19"]     .NET
    press keys    Xpath://*[@id="BCOR-TrainingMasterCreateDialogImpl"]/div/div/div[5]/div/div/div[1]/div     [return]     close browser
    reload page
    ################### Multiple Search Functionlity ###################################################################
    click element    Xpath://*[@id="BCOR-TrainingMasterViewImpl"]/div/div[3]/div/div[2]/div/div/div[1]/div/div[2]
    click element    Xpath://*[@id="BCOR-TrainingMasterViewImpl"]/div/div[3]/div/div[2]/div/div/div[1]/div/div[2]/div       #### Site #######
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[2]/td
    sleep    1s
    click element    Xpath://*[@id="BCOR-TrainingMasterViewImpl"]/div/div[3]/div/div[2]/div/div/div[3]/div/div[2]
    click element    Xpath://*[@id="BCOR-TrainingMasterViewImpl"]/div/div[3]/div/div[2]/div/div/div[3]/div/div[2]/div      #######Training Type #####
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[1]/td
    sleep    1s
    click element    Xpath://*[@id="BCOR-TrainingMasterViewImpl"]/div/div[3]/div/div[2]/div/div/div[5]/div/div[2]
    click element    Xpath://*[@id="BCOR-TrainingMasterViewImpl"]/div/div[3]/div/div[2]/div/div/div[5]/div/div[2]/div
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[1]/td
    sleep    2s
    click element    Xpath://*[@id="BCOR-TrainingMasterViewImpl"]/div/div[3]/div/div[2]/div/div/div[7]/div
    reload page
    ################### log off ##########################################################################
    click element  Xpath ://*[@id="BCOR-HeaderViewImpl"]/div/div/div[2]/div/div/div/div/div/div[15]/div
    press keys     Xpath://*[@id="CD-Button.ApplicationNavBar.Logoff"]/span/span[2]  [RETURN]    close window

