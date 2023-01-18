*** Settings ***
Library  SeleniumLibrary
*** Test Cases ***
TC1
   Open Browser     browser=chrome
   Maximize Browser Window
   Set Selenium Implicit Wait    30s
   Go To    url=https://www.medibuddy.in/
   Click Element   link=Login
   Click Element    xpath=//div[@class='coperate']
   Click Element    xpath=//div[@class='coperate']
   Input Text    name=userName    john
   Click Element    xpath=//button[text()='Proceed']
   Input Text    name=password    john123
   Click Element    xpath=//span[text()='Show password']
   Click Element    xpath=//button[text()='Log in']
   #Element Text Should Be    xpath=//div[@class='alert alert-danger errorTxt']    You have entered incorrect password. If you forgot the password please reset your password by clicking on the forgot password link.
   Element Should Contain   xpath=//*[contains(text(),'incorrect password')]    You have entered incorrect password.
