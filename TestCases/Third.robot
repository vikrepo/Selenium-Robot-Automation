*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***


*** Test Cases ***
TC_001 Variables Test
    ${Varl}=    set variable     helloworld
    log to console    ${Varl}

    @{List1}    create list    hello    one    22  thank   you
    ${list_length}      get length    ${List1}
    log to console    ${list_length}
    ${list_data}=     get from list    ${List1}    3
    log to console    ${list_data}


