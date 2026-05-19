*** Settings ***
Documentation    A test suite for valid login. Manju test
...
...              Keywords are imported from the resource file
Library          QWeb
Suite Setup      OpenBrowser                 about: blank    chrome
*** Test Cases ***

TestCase_01 - Verify functionality to login
    [Documentation]   Login website
    GoTo              https://practicetestautomation.com/practice-test-login/
    TypeText          Username          student
    TypeSecret        Password          Password123
    ClickText         Submit
    VerifyText        Congratulations student. You successfully logged in!
    ClickText         Home
    ClickText         Practice
    ClickText         Test Login Page
    ClickText         Selenium WebDriver: Selenium Automation Testing with Java
    SwitchWindow      NEW
    VerifyText        elenium WebDriver:
    CloseWindow
    ClickText         Blog
