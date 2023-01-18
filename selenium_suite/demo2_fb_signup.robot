*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1 Register
    Open Browser   url=https://www.facebook.com    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    link=Create New Account
    Input Text    name=firstname    Sudharshan
    Input Text    name=lastname    Kannan
    Input Text    name=reg_email__    hello@gmail.com
    Input Text    name=reg_email_confirmation__    hello@gmail.com
    Input Text    id=password_step_input    Welcome@123
    #Select From List By Label    id=day     23
    Select From List By Label    xpath=//select[@title='Day']      23
    Select From List By Label    id=month   Apr
    Select From List By Label    xpath=//select[@title='Month']     Apr
    #Select From List By Label    id=year   2001
    Click Element    xpath=//input[@value='-1']
    Select From List By Label    name=preferred_pronoun     They: "Wish them a happy birthday!"
    Click Element    name=websubmit
