*** Settings ***
Library    RPA.Windows

*** Variables ***


*** Tasks ***
#AutomationId
Add customer to CRM system
    Windows Run     MyCRM.exe
    control window   	My CRM (Sample App)
    send keys     id:textBoxPeopleFirstName    James bond
    #AutomationId	radioButtonFemale
    click     id:radioButtonFemale
    #AutomationId	comboBoxPeopleAddressState
    select     id:comboBoxPeopleAddressState    WA
    #AutomationId	checkBox1
    Click    id:checkBox1
    #Name	Other
    Click    name:Other
    #AutomationId	button1
    Click     id:button1
    #AutomationId	2
    click    id:2

