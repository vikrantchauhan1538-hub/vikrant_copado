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
    TypeText      First Name    Vikrant 201
    TypeText      Last Name     Chauhan 201
    TypeText      Address       Delhi 201
    TypeText      City          City 201
    TypeText      State         State 201
    TypeText      Zip Code       20301         
    TypeText      Phone #       1234567890
    TypeText      SSN           SSN-201
    TypeText      Username       Vikrant_User_201 anchor=SSN
    TypeText      Password       Password-201    anchor=Confirm:
    TypeText      Confirm       Password-201
    ClickText     REGISTER      anchor=Confirm: