*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***


*** Test Cases ***
List loop
    [Tags]    Sanity
    @{list1}    create list    1    second     3     4jkj    @#$kjj     jhkjhkj@@!87889
    FOR    ${i}    IN    @{list1}
       log to console    ${i}
    END


List loop 2
    [Tags]    Regression    Smoke
    @{list1}    create list    1    second     3     4jkj    @#$kjj     jhkjhkj@@!87889
    FOR    ${i}    IN    @{list1}
       log to console    ${i} hello world

    END
