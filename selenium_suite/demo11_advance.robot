*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    5s
    Go To    url=https://www.ilovepdf.com/pdf_to_word
    Choose File    xpath=//input[@type='file']    C:${/}Users${/}40032117${/}PDF to WORD _ Convert PDF to Word online for free.pdf
TC2 CSS Selector
     Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    5s
    Go To    url=https://www.facebook.com/
    Input Text    css=#email    jack
    Input Password    css=#pass    pass123
    Click Element    css=button[name='login']

TC3 Javascript
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    5s
    Go To    url=https://phptravels.net/
    Execute Javascript   document.querySelector('#checkin').value='31-10-2023'
    Execute Javascript   document.querySelector('#checkout').value='29-11-2023'
    Click Element    id=select2-hotels_city-container
    Input Text    xpath=//input[@class='select2-search__field']    Vadodara
    Click Element    xpath=//li[@data-select2-id='62']

TC4
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    5s
    Go To    url=https://www.redbus.in
    Click Element    id=src
    Input Text    xpath=//input[@class='db']    Vadodara
    Click Element    xpath=//li[@data-no='2']

TC5
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://nasscom.in
    ${ele}     Get WebElement    link=Become a Member
    Execute Javascript      arguments[0].click()    ARGUMENTS   ${ele}