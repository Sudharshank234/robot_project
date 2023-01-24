*** Settings ***
Library     AppiumLibrary

*** Test Cases ***
TC1
    &{dic}      Create Dictionary       buildName=browserstack-build-1
    ...     projectName=First Python project
    ...     userName=sudharshank_wC4Win
    ...     accessKey=FoYzi19mYiwZSQAefqqj
    Open Application    remote_url=http://hub.browserstack.com/wd/hub
    ...     platformName=ios
    ...     deviceName=iPhone 13
    ...     app=bs://0bbaab58730d2c1f48c9b7bdd067c6984dfa6f41
    ...     platformVersion=15
    ...    bstack:options=${dic}

    Wait Until Page Contains Element    xpath=//XCUIElementTypeTextField[@name="test-Username"]     30s
    Input Text    xpath=//XCUIElementTypeTextField[@name="test-Username"]    standard_user
    
    Wait Until Page Contains Element    xpath=//XCUIElementTypeSecureTextField[@name="test-Password"]       30s
    Input Text    xpath=//XCUIElementTypeSecureTextField[@name="test-Password"]    secret_sauce

    Wait Until Page Contains Element    xpath=//XCUIElementTypeOther[@name="test-LOGIN"]        30s
    Click Element    xpath=//XCUIElementTypeOther[@name="test-LOGIN"]

    Wait Until Page Contains Element    xpath=(//XCUIElementTypeOther[@name="test-ADD TO CART"])[1]       30s
    Click Element    xpath=(//XCUIElementTypeOther[@name="test-ADD TO CART"])[1]

    Wait Until Page Contains Element    xpath=(//XCUIElementTypeOther[@name="test-ADD TO CART"])[2]     30s
    Click Element    xpath=(//XCUIElementTypeOther[@name="test-ADD TO CART"])[2]

     Wait Until Page Contains Element    xpath=//XCUIElementTypeOther[@name="test-Cart"]     30s
    Click Element    xpath=//XCUIElementTypeOther[@name="test-Cart"]

    ${count}    Get Matching Xpath Count    xpath=//XCUIElementTypeOther[@name="test-CHECKOUT"]
    WHILE    ${count}==0
          Swipe By Percent    90    70    90    25
          ${count}    Get Matching Xpath Count    xpath=//XCUIElementTypeOther[@name="test-CHECKOUT"]
    END

    Wait Until Page Contains Element    xpath=//XCUIElementTypeOther[@name="test-CHECKOUT"]    30s
    Click Element    xpath=//XCUIElementTypeOther[@name="test-CHECKOUT"]
    
    Wait Until Page Contains Element    xpath=//XCUIElementTypeTextField[@name="test-First Name"]    30s
    Input Text    xpath=//XCUIElementTypeTextField[@name="test-First Name"]     john

    Wait Until Page Contains Element    xpath=//XCUIElementTypeTextField[@name="test-Last Name"]    30s
    Input Text    xpath=//XCUIElementTypeTextField[@name="test-Last Name"]       jo

    Wait Until Page Contains Element    xpath=//XCUIElementTypeTextField[@name="test-Zip/Postal Code"]    30s
    Input Text    xpath=//XCUIElementTypeTextField[@name="test-Zip/Postal Code"]        10022

    Wait Until Page Contains Element    xpath=//XCUIElementTypeOther[@name="test-CONTINUE"]    30s
    Click Element    xpath=//XCUIElementTypeOther[@name="test-CONTINUE"]

    ${count}    Get Matching Xpath Count    xpath=//XCUIElementTypeStaticText[@name="Payment Information:"]
    WHILE    ${count}==0
          Swipe By Percent    90    70    90    25
          ${count}    Get Matching Xpath Count    xpath=//XCUIElementTypeStaticText[@name="Payment Information:"]
    END
    
    Element Should Contain Text    xpath=//XCUIElementTypeStaticText[@name="Payment Information:"]    Payment Information:

    ${count}    Get Matching Xpath Count    xpath=//XCUIElementTypeStaticText[@name="Shipping Information:"]
    WHILE    ${count}==0
          Swipe By Percent    90    70    90    25
          ${count}    Get Matching Xpath Count    xpath=//XCUIElementTypeStaticText[@name="Shipping Information:"]
    END

    Element Should Contain Text    xpath=//XCUIElementTypeStaticText[@name="Shipping Information:"]    Shipping Information:

    ${app_source}    Get Source
    Log     ${app_source}

    [Teardown]      Close Application
