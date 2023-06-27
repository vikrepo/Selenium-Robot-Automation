*** Settings ***
Library    SeleniumLibrary



*** Variables ***
${Browser}    chrome
${URL}    https://robotframework.org/
*** Test Cases ***
TC_001_Open_Close
       open browser    ${URL}    ${Browser}
       maximize browser window
       set selenium speed    2 second
       set selenium timeout    20 second
       ${x}=        Get Horizontal Position  xpath://*[contains(@class,'sponsor') and @href='https://www.cisco.com/']
       ${y}=        Get Vertical Position    xpath://*[contains(@class,'sponsor') and @href='https://www.cisco.com/']
       Execute Javascript  window.scrollTo(${x}-100, ${y}-100)
       click element    xpath://*[contains(@class,'sponsor') and @href='https://www.cisco.com/']
       wait until element is visible     xpath://*[@id="onetrust-close-btn-container"]/button
       click button    xpath://*[@id="onetrust-close-btn-container"]/button
       Wait Until Page Contains Element       xpath://h2[contains(text(),'Your IT needs a breakthrough')]
       @{list1}    get window handles

       FOR    ${win}    IN    @{list1}:

            Switch Window   ${win}
            log to console    ${win}
            #sleep    2 seconds
            #${url}=    get location
            #log to console    ${url}
            END





