*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
Login With Correct Credentials
    Open Website
    Title Should Be  Ohtu Application main page