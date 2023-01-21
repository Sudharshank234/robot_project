*** Settings ***
Library     AppiumLibrary

*** Test Cases ***
TC1
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...     platformName=android
    ...     deviceName=oneplus

    Wait Until Page Contains Element    xpath=//*[@text='Dismiss']
    Click Element    xpath=//*[@text='Dismiss']

    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Sign in']
    Click Element       xpath=//android.widget.TextView[@text='Sign in']
    sleep   5s
    [Teardown]      Close Application

TC2
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

    Wait Until Page Contains Element    xpath=//*[@text='Dismiss']
    Click Element    xpath=//*[@text='Dismiss']

    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Sign in']
    Click Element       xpath=//android.widget.TextView[@text='Sign in']
    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Sign in']
    Click Element       xpath=//android.widget.TextView[@text='Sign in']

    Wait Until Page Contains Element    xpath=//android.widget.EditText[@content-desc="Enter an e-mail address or username"]    30s
    Input Text    xpath=//android.widget.EditText[@content-desc="Enter an e-mail address or username"]    sudharshan.k234@gmail.com
    Wait Until Page Contains Element       xpath=//android.widget.EditText[@content-desc="Password"]    30s
    Input Text      xpath=//android.widget.EditText[@content-desc="Password"]        sudharshan123
    Wait Until Page Contains Element    xpath=//android.widget.Button[@content-desc="Sign in"]/android.widget.TextView    30s
    Click Element    xpath=//android.widget.Button[@content-desc="Sign in"]/android.widget.TextView
    Wait Until Page Contains Element        xpath=//*[contains(@text,'signing')]        30s
    Element Should Contain Text   xpath=//*[contains(@text,'signing')]   There was an issue signing in
    sleep   5s
    [Teardown]      Close Application