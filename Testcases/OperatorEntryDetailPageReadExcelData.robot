*** Settings ***
Library           OperatingSystem
Library           String
Library           Collections
Library           OperatingSystem
Library           String
Library           Collections
Library           SelinumLibrary
Library           ExcelLibrary

*** Variables ***



*** Variables ***
#${path_excel}   D:\\Users\\thejav\\Desktop\\Robot_framework.xls


*** Test Cases ***

Open and Close Browser
#provide path of Excel file to Open Excel
    Open Excel	       C://Users/JD1/Downloads/OperatorDetailsEntry.xlsx
# Reading No of Columns in Excel Sheet
    ${strColCount} =  get line count     Sheet1
   #  $TotalColCount =   Get Column
#Printing number of Columns on Console Log
    Log To Console  \nCols are => ${strColCount}
# Reading number of Rows in Excel Sheet
    Set Test Variable   ${Col_ID}   ${strColCount}
    ${strRowCount}  Get   Sheet1
    Log To Console  \nCols are => ${strRowCount}

#Retrive Data
FOR    ${rowIndex}     IN RANGE    1    ${strRowCount}
#calling another loop named Inner loop to read the column of a row passing row number as parameter
 	Inner loop     ${rowIndex}
END

*** Keywords ***
Open Excel
Inner loop
    [Arguments]     @{row}
    FOR     ${colIndex}    IN RANGE   0  ${Col_ID}
	#reading cell data from Sheet 1
        ${data}     Read Cell Data By Coordinates   Sheet1  ${colIndex}     @{row}
        Log to console  ${data}
    END