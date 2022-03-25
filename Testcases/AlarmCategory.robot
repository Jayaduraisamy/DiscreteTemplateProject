*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGINURL}      http://localhost:8080/FTPCApps/discrete#!AlarmCategory
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
     click element    Xpath://*[@id="BCOR-AlarmCategoryViewImpl"]/div/div/div[1]/div/div/div[1]/div
     input text    Xpath://*[@id="gwt-uid-11"]    MachineAlarm
     input text    Xpath://*[@id="gwt-uid-13"]     106
     click element    Xpath://*[@id="BCOR-AlarmCategoryDialogImpl"]/div/div/div[5]/div/div[1]/div      #Save####
     sleep     2s
  ###   click element    Xpath://*[@id="BCOR-AlarmCategoryDialogImpl"]/div/div/div[5]/div/div[3]/div       ###cancel###
  ###   sleep    2s
   #  close browser
   ######### Duplicate check ################################################################################
   click element     Xpath://*[@id="BCOR-AlarmCategoryViewImpl"]/div/div/div[1]/div/div/div[1]/div
    input text    Xpath://*[@id="gwt-uid-16"]    MachineAlarm
    input text    Xpath://*[@id="gwt-uid-18"]     106
    click element  Xpath://*[@id="BCOR-AlarmCategoryDialogImpl"]/div/div/div[5]/div/div[1]/div
    reload page
   ## click element    Xpath://*[@id="FTPCApps-1332792659-overlays"]/div[5]/div/div/p/i/font     ####
    click element    Xpath://*[@id="BCOR-AlarmCategoryDialogImpl"]/div/div/div[5]/div/div[3]/div      #### Cancel###
    ############ Mandatory field validation when user skip ####################################################
    click element   Xpath://*[@id="BCOR-AlarmCategoryViewImpl"]/div/div/div[1]/div/div/div[1]/div
    input text      Xpath://*[@id="gwt-uid-12"]      clcok
    input text     Xpath://*[@id="gwt-uid-14"]       ${empty}
    click element   Xpath://*[@id="BCOR-AlarmCategoryDialogImpl"]/div/div/div[5]/div/div[1]/div
   # click element    Xpath://*[@id="FTPCApps-1332792659-overlays"]/div[4]/div/div/p/i/font
    sleep    2s
    reload page
    click element    Xpath://*[@id="BCOR-AlarmCategoryDialogImpl"]/div/div/div[5]/div/div[3]/div      ###cancel
    ############## Edit Functionlity #########################################
    click element    Xpath:/html/body/div[1]/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div/div/div[3]/div/div/div/div/div[2]/div[1]/table/tbody/tr[1]/td[2]/div/div
    clear element text   Xpath://*[@id="gwt-uid-12"]
    input text    Xpath://*[@id="gwt-uid-12"]    ManualAlarm
    clear element text    Xpath://*[@id="gwt-uid-14"]
    input text    Xpath://*[@id="gwt-uid-14"]    108
    click element    Xpath://*[@id="BCOR-AlarmCategoryDialogImpl"]/div/div/div[5]/div/div[1]/div
    sleep    1s
    reload page
    ################ View Functionlity ###################################################
    click element    Xpath://*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr[1]/td[5]/div/div
    sleep     1s
    click element    Xpath:/html/body/div[2]/div[3]/div/div/div[2]/div[2]
    ####### Delete Functionlity ###########################################################
    click element    Xpath://*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr[1]/td[6]/div/div
    sleep    1s
    click element    Xpath://*[@id="LU-Button.OK"]
    reload page
    ########### Search Functionlity ############################################################
    click element    Xpath:/html/body/div[1]/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div/div/div[3]/div/div/div
    sleep     1s
    click element    Xpath://*[@id="gwt-uid-3"]/span
    input text    Xpath://*[@id="gwt-uid-4"]   104
    press keys    none        \ue007
    sleep    1s
    clear element text    Xpath://*[@id="gwt-uid-4"]
    reload page
    ############## Download Functionality ###################################################
    click element    Xpath://*[@id="BCOR-AlarmCategoryViewImpl"]/div/div/div[1]/div/div/div[2]/div
    sleep    1s
    click element    Xpath://*[@id="CD-Button.Button.Export"]
    sleep    1s
    click element    Xpath://*[@id="FTPCApps-1332792659-overlays"]/div[3]/div/div/div[3]/div/div/div/div[3]/div/div[1]/div

  #  sleep    1s
   # click element    Xpath://*[@id="FTPCApps-1332792659-overlays"]/div[3]/div/div/div[3]/div/div/div/div[3]/div/div[1]/div
    reload page
 ####   close window
    ############################# Special character validations##############################################################
    click element    Xpath://*[@id="BCOR-AlarmCategoryViewImpl"]/div/div/div[1]/div/div/div[1]/div
    input text    Xpath://*[@id="gwt-uid-7"]       MMTest!@#5
    input text    Xpath://*[@id="gwt-uid-9"]      100
    click element    Xpath://*[@id="BCOR-AlarmCategoryDialogImpl"]/div/div/div[5]/div/div[1]/div
    click element    Xpath://*[@id="FTPCApps-1332792659-overlays"]/div[4]/div/div/p/i/font      #### Special character Validations###
    sleep    1s
    click element    Xpath://*[@id="BCOR-AlarmCategoryDialogImpl"]/div/div/div[5]/div/div[3]/div        ###cancel ####
    ############################# 64 character validation ######################################################################
    click element   Xpath://*[@id="BCOR-AlarmCategoryViewImpl"]/div/div/div[1]/div/div/div[1]/div
    input text    Xpath://*[@id="gwt-uid-12"]     hjfhdsjfakfhasjdfhasjfiyutyureiyterutrmxcbxqwteqyutqrurwhfkduriti
    input text    Xpath://*[@id="gwt-uid-14"]     12312
    click element    Xpath://*[@id="BCOR-AlarmCategoryDialogImpl"]/div/div/div[5]/div/div[1]/div
    sleep    1s
    click element    Xpath://*[@id="FTPCApps-1332792659-overlays"]/div[4]/div/div/p/i/font
    sleep    1s
    click element    Xpath://*[@id="BCOR-AlarmCategoryDialogImpl"]/div/div/div[5]/div/div[3]/div
    ##################### Update Functionlity for Special character ############################################################
    click element    Xpath:/html/body/div[1]/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div/div/div[3]/div/div/div/div/div[2]/div[1]/table/tbody/tr[1]/td[2]/div/div
    clear element text    Xpath://*[@id="gwt-uid-17"]
    input text     Xpath://*[@id="gwt-uid-17"]    ~!@#$%^&*()_-+={}[]|\/.,'
    clear element text    Xpath://*[@id="gwt-uid-19"]
    input text    Xpath://*[@id="gwt-uid-19"]     101
    click element    Xpath://*[@id="BCOR-AlarmCategoryDialogImpl"]/div/div/div[5]/div/div[1]/div
    sleep    1s
     click element    Xpath://*[@id="FTPCApps-1332792659-overlays"]/div[4]/div/div/p/i/font
     sleep    1s
     click element     Xpath://*[@id="BCOR-AlarmCategoryDialogImpl"]/div/div/div[5]/div/div[3]/div
    ################## Update Functionlity for more than 64 character #######################################################
    click element   Xpath:/html/body/div[1]/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div/div/div[3]/div/div/div/div/div[2]/div[1]/table/tbody/tr[1]/td[2]/div/div
    clear element text    Xpath://*[@id="gwt-uid-26"]
    input text     Xpath://*[@id="gwt-uid-26"]      sfhksjhfjshfjshfkjhfwiriyurwuyruiwryuwiryuiwyruirywxmvnmvbnvbvbbn
    clear element text    Xpath://*[@id="gwt-uid-28"]
    input text    Xpath://*[@id="gwt-uid-28"]    101
    click element    Xpath://*[@id="BCOR-AlarmCategoryDialogImpl"]/div/div/div[5]/div/div[1]/div
    sleep    1s
  #  click element    Xpath://*[@id="FTPCApps-1332792659-overlays"]/div[4]/div/div/p/i/font     ####Error Validation###
   # sleep    1s
     click element    Xpath://*[@id="FTPCApps-1332792659-overlays"]/div[4]/div/div/p/i/font
     sleep    1s
    click element     Xpath://*[@id="BCOR-AlarmCategoryDialogImpl"]/div/div/div[5]/div/div[3]/div
       ################ Log off #############################################################################################
     click element  Xpath ://*[@id="BCOR-HeaderViewImpl"]/div/div/div[2]/div/div/div/div/div/div[15]/div
     press keys     Xpath://*[@id="CD-Button.ApplicationNavBar.Logoff"]/span/span[2]  [RETURN]    close window





