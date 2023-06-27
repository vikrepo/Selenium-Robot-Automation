*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    chrome
${URL}    https://thetestingworld.com/testings

*** Test Cases ***
TC_001_Open_Close
    Open Browser    ${URL}    ${Browser}
    maximize browser window
    set selenium speed    0.5 seconds
    execute javascript    window.scrollTo(0,1550)
    Enter username email pswd    hello    tas@hjk.com       jjjh

    select radio button    add_type    home
    select checkbox    name:terms
    #select from list by index    name:sex    1
    #select from list by value    name:sex    2
    select from list by label    name:sex    Male


*** Keywords ***
Enter username email pswd
        [Arguments]    ${user}      ${email}     ${pswd}
        input text    name=fld_username    ${user}
        input text    xpath://input[@type='email']    ${email}
        input text    name:fld_password     ${pswd}

    #Close Browser
