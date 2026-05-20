*** Settings ***
Library         QWeb
Suite Setup     OpenBrowser                 about:blank    chrome


*** Variables ***
${BANK_URL}    https://parabank.parasoft.com/parabank/index.htm


*** Test Cases ***
Login to Application 
    [Documentation]     This is first test case of para bank
    [Tags]    Smoke          
    Goto      ${BANK_URL}
    ClickText    Register
    VerifyText    Signing up is easy!
    TypeText      First Name    Vikrant 202
    TypeText      Last Name     Chauhan 202
    TypeText      Address       Delhi 202
    TypeText      City          City 202
    TypeText      State         State 221
    TypeText      Zip Code       20301         
    TypeText      Phone #       1234567890
    TypeText      SSN           SSN-202
    TypeText      Username      Vikrant_User_202    anchor=SSN
    TypeText      Password       Password-202    anchor=Confirm:
    TypeText      Confirm       Password-202
    Sleep         3s  
    ClickText     REGISTER      anchor=Confirm: