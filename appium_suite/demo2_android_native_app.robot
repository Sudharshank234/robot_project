*** Settings ***
Library     AppiumLibrary

*** Test Cases ***
TC1 Sign Up
     &{dic}      Create Dictionary       buildName=khan lt7
    ...     projectName=khanmproject lt7
    ...     userName=sudharshank_WeG5ZS
    ...     accessKey=vVZ1CcqpUzfs528yAAfd

    Open Application    remote_url=http://hub.browserstack.com/wd/hub
    ...     platformName=android
    ...     deviceName=Google Pixel 3
    ...     app=bs://8fb40f6cb6cc54794bb513c358392c7e78e2b1b8
    ...      platformVersion=9.0
    ...    bstack:options=${dic}

    Wait Until Page Contains Element    xpath=//*[@text='Dismiss']      30s
    Click Element    xpath=//*[@text='Dismiss']
    Wait Until Page Contains Element    xpath=//android.widget.ImageView[@content-desc="Settings"]      30s
    Click Element    xpath=//android.widget.ImageView[@content-desc="Settings"]

    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Sign in']        30s
    Click Element       xpath=//android.widget.TextView[@text='Sign in']
    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Sign up with email']     30s
    Click Element       xpath=//android.widget.TextView[@text='Sign up with email']

    Wait Until Page Contains Element    xpath=//android.widget.EditText[@content-desc="First name"]     30s
    Input Text     xpath=//android.widget.EditText[@content-desc="First name"]     Sudharshan

    Wait Until Page Contains Element    xpath=//android.widget.EditText[@content-desc="Last name"]     30s
    Input Text     xpath=//android.widget.EditText[@content-desc="Last name"]      Kannan

    Wait Until Page Contains Element    xpath=//android.widget.EditText[@content-desc="Email address"]     30s
    Input Text     xpath=//android.widget.EditText[@content-desc="Email address"]      sudharshan123@gmail.com

    Wait Until Page Contains Element    xpath=//android.widget.EditText[@content-desc="Password"]     30s
    Input Text     xpath=//android.widget.EditText[@content-desc="Password"]     Sudhar@2018

    Wait Until Page Contains Element    xpath=//android.view.ViewGroup[@content-desc="Birthday"]     30s
    Click Element     xpath=//android.view.ViewGroup[@content-desc="Birthday"]

    Wait Until Page Contains Element    xpath=//android.widget.EditText[@resource-id="android:id/numberpicker_input"]     30s
    Click Element     xpath=//android.widget.EditText[@resource-id="android:id/numberpicker_input"]
    Wait Until Page Contains Element    xpath=//android.widget.EditText[@resource-id="android:id/numberpicker_input"]
    Clear Text    xpath=//android.widget.EditText[@resource-id="android:id/numberpicker_input"]

    Wait Until Page Contains Element    xpath=//android.widget.EditText[@resource-id="android:id/numberpicker_input"]     30s
    Input Text     xpath=//android.widget.EditText[@resource-id="android:id/numberpicker_input"]     Apr

    Wait Until Page Contains Element    xpath=(//android.widget.EditText[@resource-id="android:id/numberpicker_input"])[2]     30s
    Click Element     xpath=(//android.widget.EditText[@resource-id="android:id/numberpicker_input"])[2]
    Wait Until Page Contains Element    xpath=(//android.widget.EditText[@resource-id="android:id/numberpicker_input"])[2]
    Clear Text    xpath=(//android.widget.EditText[@resource-id="android:id/numberpicker_input"])[2]

    Wait Until Page Contains Element    xpath=(//android.widget.EditText[@resource-id="android:id/numberpicker_input"])[2]     30s
    Input Text     xpath=(//android.widget.EditText[@resource-id="android:id/numberpicker_input"])[2]     23

    Wait Until Page Contains Element    xpath=(//android.widget.EditText[@resource-id="android:id/numberpicker_input"])[3]     30s
    Click Element     xpath=(//android.widget.EditText[@resource-id="android:id/numberpicker_input"])[3]
    Wait Until Page Contains Element    xpath=(//android.widget.EditText[@resource-id="android:id/numberpicker_input"])[3]
    Clear Text    xpath=(//android.widget.EditText[@resource-id="android:id/numberpicker_input"])[3]

    Wait Until Page Contains Element    xpath=(//android.widget.EditText[@resource-id="android:id/numberpicker_input"])[2]     30s
    Input Text     xpath=(//android.widget.EditText[@resource-id="android:id/numberpicker_input"])[3]     2001








