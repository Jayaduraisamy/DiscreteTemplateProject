*** Settings ***
Library    Collections
Library    RequestsLibrary
Library    OperatingSystem

*** Variables ***
${uri}     http://localhost:8081
${json_path}    C://Users/JD1/PycharmProjects/DiscreteTemplateProject/TestData/MaterialMaster.json
#${json_path}    C:\Users\JD1\PycharmProjects\DiscreteTemplateProject\TestDatacc

*** Test Cases ***
Robot Test Case
   Create Session    alias    ${uri}
   &{headers}  Create Dictionary  Content-Type=application/json; charset=utf-8
   ${json}  Get Binary File  ${json_path}
   ${resp}    POST On Session    alias  EIHub-camel-discrete/rest/mesmaterialmaster/storepart    data=${json}    headers=${headers}
   Should Be Equal As Strings    ${resp.status_code}    200