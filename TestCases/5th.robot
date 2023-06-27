*** Settings ***
Resource    ../Resources/Resources1.robot
Library    SeleniumLibrary
Library    Collections


*** Variables ***


*** Test Cases ***
List loop
    #Create Folder at Runtime  vik  sub1
    Concatenate Username and Password    hello    world
    ${var}=    set variable    NO
    run keyword if    '${var}'=='YES'    log to console    Value Found
    run keyword if    '${var}'=='NO'    log to console    value not found




