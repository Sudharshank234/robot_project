*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser  url=https://www.google.com/  browser=chrome
    ${actual_title}  Get Title
    Log To Console    ${actual_title}
    Log  ${actual_title}
    Should Be Equal    ${actual_title}      Google
    
TC2
    Open Browser    url=https://www.google.com/     browser=chrome
    Title Should Be    Google

TC3
    Open Browser    url=https://www.facebook.com/     browser=chrome
    Input Text    locater=id:email  text=hello@gmail.com
    Input Password    id:pass    welcome123

TC4
    Open Browser    url=https://www.facebook.com/     browser=chrome
    Input Text    id:email   hello@gmail.com
    Input Password    id:pass    welcome123
    Click Element    name:login

TC5
    Open Browser    url=https://www.db4free.net/phpMyAdmin/    browser=chrome
    Input Text    input_username   hello@gmail.com
    Input Password    input_password    welcome123
    Click Element    input_go

TC6
    Open Browser        browser=chrome
    ${output}       Run Keyword And Ignore Error    Click Element    xpath=//a
    Log To Console    ${output}
    Log To Console    ${output}[0]
    Log To Console    ${output}[1]
    Log     ${output}
