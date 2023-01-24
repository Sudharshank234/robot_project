*** Settings ***
Library     AppiumLibrary

*** Test Cases ***
TC1 Sign Up
     &{dic}      Create Dictionary       buildName=khan lt7
    ...     projectName=khanmproject lt7
    ...     userName=sudharshank_QgXcKx
    ...     accessKey=7DCKJuFpFVocWUJTzHQ2

    Open Application    remote_url=http://hub.browserstack.com/wd/hub
    ...     platformName=android
    ...     deviceName=Google Pixel 3
    ...     app=bs://69fb0e65d332ba6120ed6f33c10b3cce89f6170b
    ...      platformVersion=9.0
    ...    bstack:options=${dic}

    Set Appium Timeout    20s
    Run Keyword And Ignore Error    Wait Until Page Contains Element    xpath=//*[@text='Dismiss']
    Run Keyword And Ignore Error    Click Element    xpath=//*[@text='Dismiss']

    Wait Until Page Contains Element    xpath=//android.widget.Button[@content-desc="Search tab"]
    Click Element    xpath=//android.widget.Button[@content-desc="Search tab"]

    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Arts and humanities']
    Click Element    xpath=//android.widget.TextView[@text='Arts and humanities']

    ${count}    Get Matching Xpath Count    xpath=//*[@text='Art of Asia']
    WHILE    ${count}==0
        Swipe By Percent    90     70    90    25
        ${count}    Get Matching Xpath Count    xpath=//*[@text='Art of Asia']
    END

    Wait Until Page Contains Element    xpath=//*[@text='Art of Asia']
    Click Element    xpath=//*[@text='Art of Asia']

    ${count}    Get Matching Xpath Count    xpath=//*[@text='South Asia']
    WHILE    ${count}==0
        Swipe By Percent    90     70    90    25
        ${count}    Get Matching Xpath Count    xpath=//*[@text='South Asia']
    END

    Wait Until Page Contains Element    xpath=//*[@text='South Asia']
    Click Element    xpath=//*[@text='South Asia']

     ${count}    Get Matching Xpath Count    xpath=//*[@text='The Taj Mahal']
    WHILE    ${count}==0
        Swipe By Percent    90     70    90    25
        ${count}    Get Matching Xpath Count    xpath=//*[@text='The Taj Mahal']
    END

    Wait Until Page Contains Element    xpath=//*[@text='The Taj Mahal']
    Click Element    xpath=//*[@text='The Taj Mahal']

    Wait Until Page Contains Element    xpath=//*[contains(@text,'fifth ruler')]
    Element Should Contain Text    xpath=//*[contains(@text,'fifth ruler')]    Shah Jahan
    [Teardown]  Close Application

TC2
    &{dic}      Create Dictionary       buildName=poshmark lt7
    ...     projectName=poshmark
    ...     userName=sudharshank_QgXcKx
    ...     accessKey=7DCKJuFpFVocWUJTzHQ2

    Open Application    remote_url=http://hub.browserstack.com/wd/hub
    ...     platformName=android
    ...     deviceName=Google Pixel 3
    ...     app=bs://b94aaa76e69d372a5945d7106f25b4a3717520d7
    ...      platformVersion=9.0
    ...    bstack:options=${dic}

     Wait Until Page Contains Element    xpath=//*[@text='Dismiss']
     Click Element    xpath=//*[@text='Dismiss']
     Wait Until Page Contains Element    xpath=//android.widget.Button[@text='Search']
     Click Element   xpath=//android.widget.Button[@text='Search']
     Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Arts and humanities']
     Click Element   xpath=//android.widget.TextView[@text='Arts and humanities']    &{dic_arg}
     Create Dictionary       strategy=android uiautomator
     ...     selector=UiSelector().text("Art of Asia")
     Execute Script    mobile:scroll    &{dic_arg}
     Click Element    android=UiSelector().text("Art of Asia")     &{dic_arg}
     Create Dictionary       strategy=android uiautomator
     ...     selector=UiSelector().text("South Asia")
     Execute Script    mobile:scroll    &{dic_arg}
     Click Element    android=UiSelector().text("South Asia")
     [Teardown]      Close Application