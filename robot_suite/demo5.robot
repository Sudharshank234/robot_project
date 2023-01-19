*** Settings ***
Library     OperatingSystem
Library    Collections
Library    String
Library    XML
*** Test Cases ***
TC1
    ${files}     List Files In Directory      path=C:${/}Users${/}40032117${/}robot_project${/}robot_suite
    Log To Console    ${files}
    Log List        ${files}
    Log To Console    ${files}[0]

TC2
    Remove File    path=C:${/}Users${/}40032117${/}New Text Document.txt
    File Should Not Exist    path=C:${/}Users${/}40032117${/}New Text Document.txt

TC3
    ${name}     Set Variable    robot framework session
    Log To Console    ${name}
    ${u_name}       Convert To Upper Case       ${name}
    Log To Console    ${u_name}
    ${final_str}    Remove String    ${u_name}      SESSION
    Log To Console    ${final_str}
    
TC4
    ${num1}     Set Variable    $200,100
    ${num2}     Set Variable    $200
    ${num3}     Remove String    ${num1}    $   ,
    ${num4}     Remove String    ${num2}    $
    ${result}      Evaluate    ${num3}+${num4}
    Log To Console    ${result}