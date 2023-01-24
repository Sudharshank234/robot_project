*** Settings ***
Library     SeleniumLibrary
*** Test Cases ***
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=http://demo.openemr.io/b/openemr/
    
    Input Text    id=authUser    admin
    Input Text    id=clearPass    pass
    Select From List By Label    name=languageChoice        English (Indian)
    Click Element    id=login-button
    Click Element    xpath=//div[text()='Patient']
    Click Element    xpath=//div[text()='New/Search']
    Select Frame    xpath=//iframe[@name='pat']
    Input Text    xpath=//input[@title='First Name']    Sudharshan
    Input Text    xpath=//input[@title='Last Name']    K
    Click Element    id=form_DOB
    Input Text    id=form_DOB    24/01/2023
    Select From List By Label    id=form_sex      Male
    Click Element    id=create
    Unselect Frame
    Select Frame    xpath=//iframe[@id='modalframe']
    Click Element    xpath=//input[@value='Confirm Create New Patient']
    ${alert_text}    Handle Alert    action=ACCEPT      timeout=30s
    Log To Console    ${alert_text}
    Click Element    xpath=//div[@class='closeDlgIframe']
    Element Text Should Be    xpath=//span[text()='Sudharshan K']    Sudharshan K