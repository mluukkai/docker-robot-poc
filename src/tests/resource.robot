*** Settings ***
Library  SeleniumLibrary
Library  ../AppLibrary.py

*** Variables ***
${SERVER}  localhost:5001
${BROWSER}  headlesschrome
${DELAY}  0.5 seconds
${HOME URL}  http://${SERVER}
${LOGIN URL}  http://${SERVER}/login
${REGISTER URL}  http://${SERVER}/register
${URL}            https://www.google.com
${CHROMEDRIVER_PATH}        /usr/local/bin/chromedriver-linux64/chromedriver


*** Keywords ***
Open Website
    ${chrome_options}=  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Call Method    ${chrome_options}    add_argument    --headless
    Open Browser    ${URl}    chrome    options=${chrome_options}      executable_path=${CHROMEDRIVER_PATH}

Open And Configure Browser
    Open Website
    Maximize Browser Window
    Set Selenium Speed  ${DELAY}