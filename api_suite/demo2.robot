*** Settings ***
Library     RequestsLibrary

*** Test Cases ***
TC1 Get Pet
    Create Session    alias=petshop    url=https://petstore.swagger.io/v2
    ${response}     GET On Session      alias=petshop       url=pet/101
    Status Should Be    200

TC2
    Create Session    alias=petshop    url=https://petstore.swagger.io/v2
    ${response}     GET On Session      alias=petshop       url=pet/102     expected_status=404
    Status Should Be    400
    ${response_body}      Convert To String    ${response.json()}
    Should Contain    ${response_body}    Pet not found

TC3
    Create Session    alias=petshop    url=https://petstore.swagger.io/v2
    ${response}     GET On Session      alias=petshop       url=pet/findByStatus?status=sold
    Status Should Be    200
    Log     ${response.json()}
    Log     ${response.json()}[0][id]
