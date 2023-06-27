*** Settings ***
Library    SeleniumLibrary
Library    ../ExternalKeywords/Userkeyword.py
Library    ../TestData/ReadData.py
*** Variables ***

*** Keywords ***
Create Folder at Runtime
    [Arguments]    ${foldername}    ${subfoldername}
    create_folder    ${foldername}
    create_sub_folder    ${subfoldername}
    LOG     "task done successfully"

Concatenate Username and Password
    [Arguments]    ${username}    ${password}
    ${result}=    concatenate_two_values    ${username}    ${password}
    log    ${result}

ReadData number of rows
    [Arguments]    ${sheetname}
    ${max_row}=    fetch_number_of_rows    ${sheetname}
    [Return]    ${max_row}

Read Excel Data of Cell
    [Arguments]    ${sheetname}    ${row}    ${cell}
    ${celldata}=    fetch_cell_data    ${sheetname}     ${row}     ${cell}
    [Return]    ${celldata}





