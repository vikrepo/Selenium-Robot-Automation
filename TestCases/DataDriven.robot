*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Resources1.robot

*** Variables ***


*** Test Cases ***
Tc_001_Login_Logout_functionality
    open browser    https://thetestingworld.com/testings/     Chrome
    ${row}=    ReadData number of rows    Sheet 1
    #log to console    ${row}
    ${data}=    Read Excel Data of Cell    Sheet 1    1     2
    #log to console    ${data}


    FOR    ${i}    IN RANGE    1    ${row+1}
            ${username}=    Read Excel Data of Cell    Sheet 1    ${i}    1
            ${password}=    Read Excel Data of Cell    Sheet 1    ${i}    2
            input text    name:fld_username     ${username}
            input text    name:fld_password     ${password}
            sleep    5


    END


