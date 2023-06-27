*** Settings ***

Library    RPA.Desktop.Windows
Library    RPA.Windows
Library    String
Library   RPA.core.notebook


*** Variables ***

*** Keywords ***
Calculator
    [Arguments]    ${first}    ${second}
    open executable    calc.exe    Calculator
    mouse click    id:num${first}Button
    mouse click    id:plusButton
    mouse click    id:num${second}Button
    mouse click    id:equalButton

    ${result}=    Get Text    id:CalculatorResults
    Notebook Print    ${result}
    quit application






*** Test Cases ***
Calculator app
    Calculator    5    3