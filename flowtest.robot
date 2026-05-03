*** Settings ***
Documentation    A test suite for valid login. Manju test
...
...              Keywords are imported from the resource file
Library          QWeb
Suite Setup      OpenBrowser                 about: blank    chrome
*** Test Cases ***

first logintest
    [Documentation]   Test Case created using the QEditor
    GoTo              https://practicetestautomation.com/practice-test-login/
    TypeText          Username          student
    TypeSecret        Password          Password123
    ClickText         Submit
    ClickText         Home
    VerifyText        Welcome to Practice Test Automation!
    ClickText         Courses           anchor=Practice
    ClickText         Selenium WebDriver: Selenium Automation Testing with Java
    SwitchWindow      NEW
    SwitchWindow      1
    ClickText         Practice
    ClickText         Test Login Page
    ClickText         Blog
    ClickText         Contact
    ClickText         Courses
    ClickText         Practice
    ClickText         Test Exceptions
    ClickText         Add
