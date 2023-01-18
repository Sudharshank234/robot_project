*** Settings ***
Library  SeleniumLibrary
*** Test Cases ***
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.online.citibank.co.in/
    Run Keyword And Ignore Error    Click Element    xpath=//a[@class='fancybox-item fancybox-close']
    Click Element    class=lockSign
    Switch Window   Citibank India
    Click Element    xpath=//div[@class='fl cup pt3']
    Click Element    xpath=//a[@class='sbSelector']   
    Click Element    xpath=//a[@rel='Credit Card']
    Input Text    name=citiCard1    4545
    Input Text    name=citiCard2    5656
    Input Text    name=citiCard3    8887
    Input Text    name=citiCard4    9998
    Input Text    name=CCVNO    786
    Click Element    xpath=//input[@name='DOB']
    #Input Text    xpath=//td[@class=' ']      23
    Select From List By Label    xpath=//select[@class='ui-datepicker-year']      2022
    Select From List By Label    xpath=//select[@class='ui-datepicker-month']      Apr
    Click Element    link=14
    Click Element    xpath=//input[@type='button']
    Element Should Contain    xpath=//li[contains(text(),'• Please accept Terms and Conditions ')]    Please accept Terms and Conditions



