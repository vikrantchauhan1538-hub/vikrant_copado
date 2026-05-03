*** Settings ***
Documentation    A test suite for valid login. Manju test
...
...              Keywords are imported from the resource file
Library          QWeb
Suite Setup      OpenBrowser                 about: blank    chrome
*** Test Cases ***

first logintest
    [Documentation]    Test Case created using the QEditor

   GoTo   https://practicetestautomation.com/practice-test-login/

