*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Variables    ../locators/acceuil.py
*** Variables ***
${url}     https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser}    chrome
*** Keywords ***
openpage
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

