*** Settings ***
Library    SeleniumLibrary
Library    WebDriverManager


*** Variables ***
${Browser}    chrome
${URL}    https://www.facebook.com/
*** Test Cases ***
TC_001_Open_Close
        Open Browser    ${URL}    ${Browser}
        maximize browser window
        sleep    10

        INPUT TEXT    xpath://*[@id="email"]     ssdsd@hjkhkj.com
        click button    xpath://button
        capture page screenshot    ./Resources/TC_01.png
        open browser    https:google.com     ${Browser}
        ${url1} =    get location
        log to console    ${url1}
        close all browsers

