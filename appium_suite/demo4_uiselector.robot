*** Settings ***
Library     AppiumLibrary
*** Test Cases ***
TC1
     &{dic}      Create Dictionary       buildName=khan lt7
    ...     projectName=khanmproject lt7
    ...     userName=sudharshank_QgXcKx
    ...     accessKey=7DCKJuFpFVocWUJTzHQ2

    [Documentation]     #working with native app
    Open Application    remote_url=http://hub.browserstack.com/wd/hub
    ...     platformName=android
    ...     deviceName=Google Pixel 3
    ...     app=bs://69fb0e65d332ba6120ed6f33c10b3cce89f6170b
    ...     noReset=true
    ...      platformVersion=9.0
    ...    bstack:options=${dic}
    Set Appium Timeout    30s
    Run Keyword And Ignore Error       Wait Until Page Contains Element    android=UiSelector().text("Dismiss")
    Run Keyword And Ignore Error    Click Element    android=UiSelector().text("Dismiss")
    Wait Until Page Contains Element    android=UiSelector().description("Settings")
    Click Element       android=UiSelector().description("Settings")
    Wait Until Page Contains Element    android=UiSelector().textContains("Sign In")    30s
    Click Element    android=UiSelector().textContains("Sign In")
    Wait Until Page Contains Element    android=UiSelector().textContains("Sign up with email")    30s
    Click Element    android=UiSelector().textContains("Sign up with email")
    
    Wait Until Page Contains Element    android=UiSelector().textContains("First name")
    Wait Until Page Contains Element    android=UiSelector().textContains("Last name")
    Input Text     android=UiSelector().textContains("Last name")    K
    Wait Until Page Contains Element    xpath=UiSelector().textContains("Birthday")
    Click Element     xpath=UiSelector().textContains("Birthday")

   Wait Until Page Contains Element    android=UiSelector().resourceId("android:id/numberpicker_input")
   Click Element    android=UiSelector().resourceId("android:id/numberpicker_input")
   Clear Text    android=UiSelector().resourceId("android:id/numberpicker_input")
   Input Text    android=UiSelector().resourceId("android:id/numberpicker_input")    Dec
   Click Element    android=UiSelector().resourceId("android:id/numberpicker_input").instance(1)
   Clear Text    android=UiSelector().resourceId("android:id/numberpicker_input").instance(1)
   Input Text    android=UiSelector().resourceId("android:id/numberpicker_input").instance(1)     20
   Click Element    android=UiSelector().resourceId("android:id/numberpicker_input").instance(2)
   Clear Text    android=UiSelector().resourceId("android:id/numberpicker_input").instance(2)
   Input Text    android=UiSelector().resourceId("android:id/numberpicker_input").instance(2)     1999
   Click Element    android=UiSelector().textContains("OK")



    [Teardown]      Close Application
