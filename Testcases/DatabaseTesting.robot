*** Settings ***
Library    SeleniumLibrary
#Library    pypyodbc
#Library    OperatingSystem
#Library    ../Library/MF.py
Library     ../Library/Databaseconnect.py
#Library     ../Library/sample.py

#Suite Setup      Connect To Database  pypyodbc ${DBName}   ${DBUser}    ${DBPass}    ${DBHost}    ${DBPort}


*** Variables ***


*** Test Cases ***
[documentation]
    INSERT record from Database

*** Keywords ***
INSERT record from Database
#     ${FileFromPython}    MF.Test
      ${i}    databaseconnect.dbc
      log to console    ${i}
      # log to console   ${insertrecord}



