*** Settings ***
Resource    ../Resources/Resources1.robot

*** Variables ***

*** Test Cases ***
Test case in bdd format
    Given Create Folder at Runtime    main1    sub
    When Concatenate Username and Password    usr    pswd
    Then log to console    hello
    log to console    world
