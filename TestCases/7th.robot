*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    chrome
${URL}    https://thetestingworld.com/testings

*** Test Cases ***
TC_001_Open_Close
    open browser    ${url}    ${Browser}
    #execute javascript     window.scrollTo(0,1550)
    #open context menu    xpath://p[text()='Login & Sign Up ']
    double click element    xpath://label[text()='Login']
    go to    https://thetestingworld.com/
    mouse down    xpath://a[text()='Quick Demo']
    mouse up    xpath://a[text()='Quick Demo']
    #mouse over    xpath://span[text()='TRAINING']
    press key    xpath://*[@id="wdform_1_element_first2"]    hellofrands
    press key    xpath://button[text()='Submit']     \\13
    sleep    2