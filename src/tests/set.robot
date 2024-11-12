*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
Does set correctly change the value
    Go To  ${HOME_URL}
    Title Should Be  Laskuri
    Input Text  value  10
    Click Button  aseta
    Page Should Contain  nappia painettu 10 kertaa
    Input Text  value  100
    Click Button  aseta
    Page Should Contain  nappia painettu 100 kertaa