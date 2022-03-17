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
    ################# Adding New Record ###############################################
    click element     Xpath://*[@id="BCOR-OperatorViewImpl"]/div/div/div[1]/div/div/div[1]/div
   # set browser implicit wait    100
    #wait until element is visible    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div/div[1]/div/div[1]/div/div[1]/div/div[2]/div
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[1]/div/div[1]/div/div[2]
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[1]/div/div[1]/div/div[2]/div      #### Hubbell #####
    click element     Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[2]/td

    input text     Xpath://*[@id="gwt-uid-25"]      100                  ####Employee ID######
    input text     Xpath://*[@id="gwt-uid-27"]      QAAutomation         ##### Employee Surname ######
    input text     Xpath://*[@id="gwt-uid-29"]      Test4                ###### Employee FName #######
    sleep    1s
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[5]/div/div[2]
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[5]/div/div[2]/div         ##### work Area #######
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr/td
   # set browser implicit wait    1000
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[7]/div/div[2]
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[7]/div/div[2]/div         #### Gender ######
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[2]/td
    press keys      none     \ue007

  ##  click element    Xpath://*[@id="gwt-uid-35"]      Software Engineering
     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[9]/div/div[2]
     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[9]/div/div[2]/div        ##### Designation ######
     click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr/td


    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[1]/div/div[2]
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[1]/div/div[2]/div                     ##### Work Center#######
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[4]/td
    press keys      none     \ue007

    input text    Xpath://*[@id="gwt-uid-39"]     9878923456                                                                              ##### Mobile Number ####

    input text    Xpath://*[@id="gwt-uid-41"]     10,east st, west mangalam.                                                             ###### Address Of Communication ########

    input text    Xpath://*[@id="gwt-uid-43"]     jaya.aakasam@gmail.com                                                                  #### Email ID #########

    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[9]/div/div[2]
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[9]/div/div[2]/button                  ###### DOB#######
    click element    Xpath://*[@id="PID_VAADIN_POPUPCAL"]/tbody/tr[2]/td/table/tbody/tr[3]/td[4]/span
    sleep    1s

    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[11]/div/div[2]
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[11]/div/div[2]/div                ###### Reporting To ############
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[4]/td
    press keys       none     \ue007
    sleep    1s

    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[13]/div/div[2]
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[13]/div/div[2]/div                    ######## Status ##########
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[1]/td
    press keys       none    \ue007
    sleep    1s

    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[5]/div/div/div/div[2]
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[5]/div/div/div/div[2]/div                     #### cost center ######
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr/td
    press keys      none     \ue007
    sleep    1s

    #### save button ######
    press keys    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[2]/div/div[1]/div        [return]           close window       ###save button #####
   # click element  Xpath://*[@id="FTPCApps-1332792659-overlays"]/div[4]/div/div/p/i/font
   # set browser implicit wait    100


    ############### Validating duplicate Records    ####################################
    click element     Xpath://*[@id="BCOR-OperatorViewImpl"]/div/div/div[1]/div/div/div[1]/div
   # set browser implicit wait    100
    #wait until element is visible    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div/div[1]/div/div[1]/div/div[1]/div/div[2]/div
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[1]/div/div[1]/div/div[2]
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[1]/div/div[1]/div/div[2]/div      #### Hubbell #####
    click element     Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[2]/td

    input text     Xpath://*[@id="gwt-uid-58"]      100                  ####Employee ID######
    input text     Xpath://*[@id="gwt-uid-60"]      QAAutomation         ##### Employee Surname ######
    input text     Xpath://*[@id="gwt-uid-62"]      Test4                ###### Employee FName #######
    sleep    1s
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[5]/div/div[2]
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[5]/div/div[2]/div         ##### work Area #######
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr/td
   # set browser implicit wait    1000
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[7]/div/div[2]
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[7]/div/div[2]/div         #### Gender ######
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[2]/td
    press keys      none     \ue007

  ##  click element    Xpath://*[@id="gwt-uid-35"]      Software Engineering
     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[9]/div/div[2]
     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[9]/div/div[2]/div        ##### Designation ######
     click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr/td


    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[1]/div/div[2]
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[1]/div/div[2]/div                     ##### Work Center#######
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[4]/td
    press keys      none     \ue007

    input text    Xpath://*[@id="gwt-uid-72"]     9878923456                                                                              ##### Mobile Number ####

    input text    Xpath://*[@id="gwt-uid-74"]     10,east st, west mangalam.                                                             ###### Address Of Communication ########

    input text    Xpath://*[@id="gwt-uid-76"]     jaya.aakasam@gmail.com                                                                  #### Email ID #########

    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[9]/div/div[2]
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[9]/div/div[2]/button                  ###### DOB#######
    click element    Xpath://*[@id="PID_VAADIN_POPUPCAL"]/tbody/tr[2]/td/table/tbody/tr[3]/td[4]/span
    sleep    1s

    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[11]/div/div[2]
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[11]/div/div[2]/div                ###### Reporting To ############
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[4]/td
    press keys       none     \ue007
    sleep    1s

    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[13]/div/div[2]
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[13]/div/div[2]/div                    ######## Status ##########
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[1]/td
    press keys       none    \ue007
    sleep    1s

    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[5]/div/div/div/div[2]
    click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[5]/div/div/div/div[2]/div                     #### cost center ######
    click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr/td
    press keys      none     \ue007
    sleep    1s

    #### save button ######
    press keys    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[2]/div/div[1]/div        [return]                 ###save button #####
    sleep    1s

    click element    Xpath://*[@id="FTPCApps-1332792659-overlays"]/div[4]/div/div/p/i/font                 ### Duplicate Message Validation ####
    sleep    1s

    press keys    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[2]/div/div[3]/div       [return]    close browser
   ######## EDIT FUnctionlality ###############################
     click element    Xpath://*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr[1]/td[2]
     click element    Xpath://*[@id="gwt-uid-95"]
	 clear element text   Xpath://*[@id="gwt-uid-95"]
	 input text      Xpath://*[@id="gwt-uid-95"]        Selvi1236   #####Employee sur Name ####
	 sleep    1s

	 click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[11]/div/div[2]
	 click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[11]/div/div[2]/div
	 click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[1]/td
	 press keys   none      \ue007

	 sleep    1s
     press keys     Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[2]/div/div[1]/div       [return]       close window
########## VIEW Functionlity#################################
     click element     Xpath://*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr[1]/td[8]
     press keys        Xpath:/html/body/div[2]/div[3]/div/div/div[2]/div[2]    [return]
     sleep     1s
      ######## Sinlge Search Functionlity ##############################################
     click element    Xpath:/html/body/div[1]/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div/div/div[5]/div/div/div/input
     #click element    Xpath://*[@id="gwt-uid-12"]
     input text       Xpath:/html/body/div[1]/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div/div/div[5]/div/div/div/input    103
     #input text     Xpath://*[@id="gwt-uid-12"]    12105
     press keys    none    \ue007
     sleep    1s
     click element    Xpath://*[@id="BCOR-OperatorViewImpl"]/div/div/div[3]/div/div[2]/div/div/div[9]/div
     sleep    1s
     reload page


 ######### Delete Functionality ###########################################################
      click element      Xpath://*[@id="ResponsiveTable"]/div[2]/div[1]/table/tbody/tr[1]/td[9]
      press keys         Xpath://*[@id="LU-Button.OK"]     [return]
      sleep    2s

 ######## Multiple Search Functionalities  #####################################################
     click element    Xpath://*[@id="BCOR-OperatorViewImpl"]/div/div/div[3]/div/div[2]/div/div/div[1]/div/div[2]
     click element    Xpath://*[@id="BCOR-OperatorViewImpl"]/div/div/div[3]/div/div[2]/div/div/div[1]/div/div[2]/div
     click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[2]/td
     sleep    1s

     click element    Xpath://*[@id="BCOR-OperatorViewImpl"]/div/div/div[3]/div/div[2]/div/div/div[3]/div/div[2]
     click element    Xpath://*[@id="BCOR-OperatorViewImpl"]/div/div/div[3]/div/div[2]/div/div/div[3]/div/div[2]/div
     click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr/td
     sleep    1s

     click element    Xpath://*[@id="BCOR-OperatorViewImpl"]/div/div/div[3]/div/div[2]/div/div/div[5]/div/div[2]
     click element    Xpath://*[@id="BCOR-OperatorViewImpl"]/div/div/div[3]/div/div[2]/div/div/div[5]/div/div[2]/div
     click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[2]/td
     sleep    1s

     click element    Xpath://*[@id="BCOR-OperatorViewImpl"]/div/div/div[3]/div/div[2]/div/div/div[7]/div/div[2]
     click element    Xpath://*[@id="BCOR-OperatorViewImpl"]/div/div/div[3]/div/div[2]/div/div/div[7]/div/div[2]/div
     click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[2]/td
     sleep    1s

     click element    Xpath://*[@id="BCOR-OperatorViewImpl"]/div/div/div[3]/div/div[2]/div/div/div[9]/div
     reload page
     ############################### Mandatory Field Validation ####################################
     click element    Xpath://*[@id="BCOR-OperatorViewImpl"]/div/div/div[1]/div/div/div[1]/div
     sleep    1s
     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[1]/div/div[1]/div/div[2]      ####Site Name #####
     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[1]/div/div[1]/div/div[2]/div
     click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[2]/td
     press keys     none    \ue007

     input text       Xpath://*[@id="gwt-uid-21"]      ${empty}        ##### Employee ID#####
     input text       Xpath://*[@id="gwt-uid-23"]      TestAuto       ##### Employee Surname ####
     input text       Xpath://*[@id="gwt-uid-25"]      Auto           ##### Employee Fname ####
     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[5]/div/div[2]
     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[5]/div/div[2]/div        #Work Area#####
     click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr/td
     sleep    1s

     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[7]/div/div[2]
     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[7]/div/div[2]/div       #### Gender ###
     click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr/td
     press keys     none    /ue007

     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[9]/div/div[2]
     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[9]/div/div[2]/div      #####Designation
     click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr/td

     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[1]/div/div[2]
     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[1]/div/div[2]/div       #work center ####
     click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr/td

     input text    Xpath://*[@id="gwt-uid-35"]      123456789011          ###Mobile Number #######
     input text    Xpath://*[@id="gwt-uid-37"]      12, west st          #### Address for communication ######
     input text    Xpath://*[@id="gwt-uid-39"]       arun.aakasam@testmail.com      #### Email ID ########

     click element   Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[9]/div/div[2]
     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[9]/div/div[2]/button                  #### DOB####
     click element    Xpath://*[@id="PID_VAADIN_POPUPCAL"]/tbody/tr[2]/td/table/tbody/tr[3]/td[5]/span
     sleep    1s

     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[11]/div/div[2]
     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[11]/div/div[2]/div                  ###### Reporting To #####
     click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[3]/td
     press keys     none    /ue007
     sleep    1s

     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[13]/div/div[2]
     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[13]/div/div[2]/div                ####Status ################
     click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[2]/td
     press keys     none     /ue007
     sleep    1s

     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[5]/div/div/div/div[2]                       ##### cost center
     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[5]/div/div/div/div[2]/div
     click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr/td
     press keys   none     /ue007
     sleep    1s

     press keys      Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[2]/div/div[1]/div                 [return]
     sleep    1s
     click element    Xpath://*[@id="FTPCApps-1332792659-overlays"]/div[4]/div/div/p/i/font                 ##### Manadtory Field Validation ######
     sleep    1s
     press keys     Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[2]/div/div[3]/div       [return]      close browser
     ####################### Validation of non mandatory field ########
     click element    Xpath://*[@id="BCOR-OperatorViewImpl"]/div/div/div[1]/div/div/div[1]/div

    # click element    Xpath://*[@id="BCOR-OperatorViewImpl"]/div/div/div[1]/div/div/div[1]/div
     #sleep    1s
     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[1]/div/div[1]/div/div[2]      ####Site Name #####
     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[1]/div/div[1]/div/div[2]/div
     click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[2]/td
     press keys     none    \ue007

     input text       Xpath://*[@id="gwt-uid-54"]      106        ##### Employee ID#####
     input text       Xpath://*[@id="gwt-uid-56"]      TestAuto       ##### Employee Surname ####
     input text       Xpath://*[@id="gwt-uid-58"]      Red          ##### Employee Fname ####
     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[5]/div/div[2]
     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[5]/div/div[2]/div        #Work Area#####
     click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[1]/td
     press keys      none      /ue007
     sleep    1s

     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[7]/div/div[2]
     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[7]/div/div[2]/div       #### Gender ###
     click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr/td
     press keys      none      /ue007
     sleep    1s

     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[9]/div/div[2]
     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[1]/div/div[3]/div/div[9]/div/div[2]/div     #####Designation
     click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[2]/td
     sleep    1s

     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[1]/div/div[2]
     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[1]/div/div[2]/div       #work center ####
     click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[3]/td
     press keys     none    /ue007
     sleep    1s

     input text    Xpath://*[@id="gwt-uid-68"]      1234567832434354545          ###Mobile Number #######
     input text    Xpath://*[@id="gwt-uid-70"]      13, west st                  #### Address for communication ######
     input text    Xpath://*[@id="gwt-uid-72"]      ${empty}                            #### Email ID ########

     sleep    1s

     click element   Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[9]/div/div[2]
     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[9]/div/div[2]/button                  #### DOB####
     click element    Xpath://*[@id="PID_VAADIN_POPUPCAL"]/tbody/tr[2]/td/table/tbody/tr[3]/td[4]/span
     sleep    1s

     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[11]/div/div[2]
     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[11]/div/div[2]/div                  ###### Reporting To #####
     click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[2]/td
     press keys     none      /ue007
     sleep    1s

     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[13]/div/div[2]
     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[3]/div/div[13]/div/div[2]/div              ####Status ################
     click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[1]/td
     press keys     none     /ue007
     sleep    1s

     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[5]/div/div/div/div[2]                      ##### cost center
     click element    Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[1]/div/div/div[5]/div/div/div/div[2]/div
     click element    Xpath://*[@id="VAADIN_COMBOBOX_OPTIONLIST"]/div/div[2]/table/tbody/tr[4]/td
     press keys   none      /ue007
     sleep    1s

     press keys      Xpath://*[@id="BCOR-OperatorCreateDialogImpl"]/div/div[2]/div/div[1]/div                [return]     close browser
     reload page
     sleep    3s

     ################ Log off ########################################################################

     click element  Xpath ://*[@id="BCOR-HeaderViewImpl"]/div/div/div[2]/div/div/div/div/div/div[15]/div
     press keys     Xpath://*[@id="CD-Button.ApplicationNavBar.Logoff"]/span/span[2]  [RETURN] close browser
   #  click element  Xpath ://*[@id="BCOR-HeaderViewImpl"]/div/div/div[2]/div/div/div/div/div/div[15]/div

   #  press keys     Xpath://*[@id="CD-Button.ApplicationNavBar.Logoff"]/span/span[2]  [RETURN] close window

