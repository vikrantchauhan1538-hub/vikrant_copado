*** Settings ***
Documentation          A test suite for valid login. Manju test
...
...                    Keywords are imported from the resource file
Library                QWeb
Suite Setup            OpenBrowser                 about: blank       chrome
*** Test Cases ***

TestCase_01 - Verify functionality to login
    [Documentation]    Login website
    GoTo               https://practicetestautomation.com/practice-test-login/
    TypeText           Username                    student
    TypeSecret         Password                    Password123
    ClickText          Submit
    VerifyText         Congratulations student. You successfully logged in!
    ClickText          Home
    ClickText          Practice
    ClickText          Test Login Page
    ClickText          Contact
    TypeText           First                       amit
    TypeText           Last                        chuahan
    TypeText           Email *                     amit@gmail.com
    TypeText           Comment or Message *        Message testing
    ClickCheckbox      I'm not a robot             on
    ClickCheckbox      I'm not a robot             on
    ClickText          Submit
    VerifyText         hanks for contacting us! We will be in touch with you shortly.
    SwitchWindow       NEW
    CloseWindow
    CloseWindow
    ClickText          Blog
