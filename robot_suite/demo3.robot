*** Settings ***
Library    Collections
*** Variables ***
${BROWSER_NAME}     Chrome
${MOBILE_NUM}      9876543210
@{COLORS}       red     green   yellow
&{MY_DETAILS}       name=sudharshan     role=employee       mobile=9876543221


*** Test Cases ***
TC1
    ${my_name}  Set Variable    Sudharshan
    Log To Console    ${my_name}
    
TC2
    Log To Console    ${BROWSER_NAME}
    
TC3
    Log To Console    @{COLORS}
    Log To Console   @{COLORS}[2] 
    
TC4
    ${item_count}   Get Length    ${COLORS} 
    Log To Console    ${item_count}
    
TC5
    @{fruits}   Create List     apple   orange  mango
    Log To Console    ${fruits}[1]
    Append To List  ${fruits}   grapes
    Log To Console    ${fruits}
    Remove Values From List    ${fruits}   apple
    Insert Into List    ${fruits}    1    pineapple
    ${count}     Get Length    ${fruits}
    Log To Console    ${count}
    Log To Console    ${fruits}

TC6
    FOR    ${i}    IN RANGE    1    10
        Log To Console   ${i}
    END

TC7
    @{fruits}   Create List     orange  mango   apple   pineapple   kiwi

    FOR    ${i}    IN RANGE    0    5
        Log To Console   ${fruits}[${i}]
         
    END

TC8
    Log To Console    ${MY_DETAILS}[mobile]

TC9
    &{emp_dic}      Create Dictionary       emp_id=101      emp_name=jack     role=qa
    Log To Console    ${emp_dic}