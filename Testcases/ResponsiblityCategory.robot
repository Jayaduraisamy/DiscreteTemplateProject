*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGINURL}     http://localhost:8080/FTPCApps/discrete#!ResponsibilityCategory
${BROWSER}      Chrome
${UserName}     admin
${Password}     admin

*** Keywords ***

*** Test Cases ***
Open Browser to login OperatorDetailsPage
    [Tags]    Regression
    Open Browser   ${LOGINURL}     ${BROWSER}
    maximize browser window
    sleep  2s
    Set Selenium Implicit Wait      1000
    Input Text        Xpath://*[@id="CD-TextField.LogonView.UserName"]    ${UserName}
    Input Password    Xpath://*[@id="CD-PasswordField.LogonView.Password"]  ${Password}
    Set Selenium Implicit Wait      100
    Element Should Be Enabled   id=CD-Button.LogonView.Login
    Press Keys  id=CD-Button.LogonView.Login   [RETURN]
    Element Should Be Enabled   id=CD-Button.LogonView.Login
    Press Keys  id=CD-Button.LogonView.Login   [RETURN]
    ###close browser
     ######## Adding new Alarm Responsiblity ###########################################
     click element    Xpath://*[@id="BCOR-AlarmResponsibilityViewImpl"]/div/div/div[1]/div/div[1]/div
     input text    Xpath://*[@id="gwt-uid-11"]    QualityAssurance
     input text    Xpath://*[@id="gwt-uid-13"]     109
     #click element    Xpath://*[@id="BCOR-AlarmResponsibilityDialogImpl"]/div/div/div[5]/div/div[1]/div       #Save####
     sleep     2s
     click element    Xpath://*[@id="BCOR-AlarmResponsibilityDialogImpl"]/div/div/div[5]/div/div[1]/div       ###cancel###
     sleep    2s
   #  close browser
    ############# Duplicate Validation #########################################################
     click element    Xpath://*[@id="BCOR-AlarmResponsibilityViewImpl"]/div/div/div[1]/div/div[1]/div

     input text    Xpath://*[@id="gwt-uid-16"]    QualityAssurance
     input text    Xpath://*[@id="gwt-uid-18"]     109
     ##sleep     2s
     click element    Xpath://*[@id="BCOR-AlarmResponsibilityDialogImpl"]/div/div/div[5]/div/div[1]/div        ###save###
     sleep    2s
     reload page
    # click element    Xpath://*[@id="FTPCApps-1332792659-overlays"]/div[5]/div/div/p/i/font                    #####Duplicate Validation #########
   #  sleep    1s
     click element     Xpath://*[@id="BCOR-AlarmResponsibilityDialogImpl"]/div/div/div[5]/div/div[3]/div         #### Cancel ####
   #  close browser
   #  close browser
     ################ Download Functionlity #################################################
     click element    Xpath://*[@id="BCOR-AlarmResponsibilityViewImpl"]/div/div/div[1]/div/div[3]/div
     sleep    1s
     click element    Xpath://*[@id="CD-Button.Button.Export"]
   #  click element    Xpath://*[@id="CD-Button.Button.Export"]      ### Cancel ####
     press keys    Xpath://*[@id="FTPCApps-1332792659-overlays"]/div[3]/div/div/div[3]/div/div/div/div[3]/div/div[1]/div      [return]    ### Confirm #####
     sleep    1s
     ########### Edit Functionlity #################################################################
     click element    Xpath://*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr[1]/td[2]/div/div
    # click element    Xpath://*[@id="gwt-uid-56"]
     clear element text    Xpath://*[@id="gwt-uid-16"]
     input text    Xpath://*[@id="gwt-uid-16"]    QA2
   #  click element    Xpath://*[@id="gwt-uid-58"]
     clear element text    Xpath://*[@id="gwt-uid-18"]
     input text    Xpath://*[@id="gwt-uid-18"]    101
     click element    Xpath://*[@id="BCOR-AlarmResponsibilityDialogImpl"]/div/div/div[5]/div/div[1]/div    ### save button####
     sleep    2s
     ##### View Functionlity ###########################################################################
      click element    Xpath:/html/body/div[1]/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div/div/div[5]/div/div/div/div/div[2]/div[1]/table/tbody/tr[1]/td[5]/div/div
      sleep    2s
      click element    Xpath:/html/body/div[2]/div[3]/div/div/div[2]/div[2]
      ####### Delete    Functionlity     #####################################################################
     click element    Xpath://*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr[1]/td[6]/div/div
     press keys    Xpath://*[@id="LU-Button.OK"]      [return]
     reload page
     ############# Single Search Functionlity ###############################################################
      click element    Xpath:/html/body/div[1]/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div/div/div[3]/div/div/div
     #click element    Xpath://*[@id="gwt-uid-12"]
     click element      Xpath:/html/body/div[1]/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div/div/div[3]/div/div/div/div/span
     input text        Xpath://*[@id="gwt-uid-4"]    105
     #input text     Xpath://*[@id="gwt-uid-12"]    12105
      press keys    none    \ue007
      sleep    2s
      clear element text   Xpath://*[@id="gwt-uid-4"]
      sleep    2s
     ############# Mandatory Field Validation ########################################################################
     click element    Xpath://*[@id="BCOR-AlarmResponsibilityViewImpl"]/div/div/div[1]/div/div[1]/div
     input text    Xpath://*[@id="gwt-uid-7"]     SA!!@
     input text    Xpath://*[@id="gwt-uid-9"]     ${empty}
     click element    Xpath://*[@id="BCOR-AlarmResponsibilityDialogImpl"]/div/div/div[5]/div/div[1]/div
   #  click element    Xpath://*[@id="FTPCApps-1332792659-overlays"]/div[4]/div/div/p/i/font      ###Mandatory Field Validation ################
     sleep    2s
     reload page
     click element    Xpath://*[@id="BCOR-AlarmResponsibilityDialogImpl"]/div/div/div[5]/div/div[3]/div       ####cancel ######
     ########################### Update Functionlity for special character ###################################################
     click element   Xpath://*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr[1]/td[2]/div/div
     clear element text    Xpath://*[@id="gwt-uid-12"]
     input text    Xpath://*[@id="gwt-uid-12"]   ~!@#$%^&*()_-+={}[]|\/.,'
     clear element text    Xpath://*[@id="gwt-uid-14"]
     input text    Xpath://*[@id="gwt-uid-14"]    121
     sleep    1s
     click element    Xpath://*[@id="BCOR-AlarmResponsibilityDialogImpl"]/div/div/div[5]/div/div[1]/div
     sleep    1s
     click element    Xpath://*[@id="FTPCApps-1332792659-overlays"]/div[4]/div/div/p/i/font
     sleep    1s
     click element     Xpath://*[@id="BCOR-AlarmResponsibilityDialogImpl"]/div/div/div[5]/div/div[3]/div
 #################################### Update Functionlty for more than 64 character ###############################################
     click element   Xpath://*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr[1]/td[2]/div/div
       clear element text    Xpath://*[@id="gwt-uid-21"]
     input text    Xpath://*[@id="gwt-uid-21"]     sfhksjhfjshfjshfkjhfwiriyurwuyruiwryuwiryuiwyruirywxmvnmvbnvbvbbn
     clear element text    Xpath://*[@id="gwt-uid-23"]
     input text    Xpath://*[@id="gwt-uid-23"]    121
     sleep    1s
     click element    Xpath://*[@id="BCOR-AlarmResponsibilityDialogImpl"]/div/div/div[5]/div/div[1]/div
     sleep    1s
     click element    Xpath://*[@id="FTPCApps-1332792659-overlays"]/div[4]/div/div/p/i/font
     sleep    1s
     click element     Xpath://*[@id="BCOR-AlarmResponsibilityDialogImpl"]/div/div/div[5]/div/div[3]/div
    ################ Log off #############################################################################################
     click element  Xpath ://*[@id="BCOR-HeaderViewImpl"]/div/div/div[2]/div/div/div/div/div/div[15]/div
     press keys     Xpath://*[@id="CD-Button.ApplicationNavBar.Logoff"]/span/span[2]  [RETURN]    close window
