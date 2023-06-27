*** Settings ***
Library    ../ExternalKeywords/Locators.py
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${Url}    https://thetestingworld.com/testings/

*** Test Cases ***
Robot First Test case
    [Tags]    Smoke
    open browser    ${Url}   ${Browser}
    ${username}=    Read Element Locator    Registration.username_textbox
    Input Text    name:${username}    Testing123

*** Keywords ***
Read Element Locator
    [Arguments]    ${JsonPath}
    ${result}=    read_json_file    ${JsonPath}
    [Return]    ${result}