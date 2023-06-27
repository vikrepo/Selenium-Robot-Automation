*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Handle Multiple Tabs
    Open Browser    https://robotframework.org/    chrome
    Click Link    xpath://*[contains(@class,'sponsor') and @href='https://www.cisco.com/']    # Open a link that opens in a new tab
    ${all_handles}    Get Window Handles
    Log To Console    ${all_handles}
    Set Global Variable    ${current_window2}    ${all_handles}[0]
    Log To Console    "current window" ${current_window2}
    ${url}=    Get Location
    Log To Console    ${url}
    #${num_of_tabs}=    len(all_handles}
    Switch Window    ${all_handles}[1]
    ${URL2}=    Get Location
    Log To Console    ${URL2}
    ${total_opened_tab}=    Get Length    ${all_handles}
    Log To Console    total active tabs ${total_opened_tab}
    ${new_len}=    Evaluate    len($all_handles)
    Log To Console    using len fxn ${new_len}
    FOR    ${i}    IN RANGE    ${new_len}
           log to console    ${i}
           Switch Window    ${all_handles}[${i}]
           ${url_loop}=    get location
           log to console    in loop ${url_loop}

    END

    Close Browser
