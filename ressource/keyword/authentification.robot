*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Variables    ../locators/authentification.py
Variables    ../JDD/admin.py

*** Keywords ***
loginok
    Wait Until Element Is Visible    ${user}
    Input Text    ${user}    ${administareur}
    Wait Until Element Is Visible    ${password}
    Input Password    ${password}    ${motpass}
    Click Element    ${seconnecter}
    Title Should Be    OrangeHRM
loginkopassword
    Wait Until Element Is Visible    ${user}
    Input Text    ${user}    ${administareur}
    Wait Until Element Is Visible    ${password}
    Input Password    ${password}    aaaa
    Click Element    ${seconnecter}
    Wait Until Page Contains    Invalid credentials
loginkouser
    Wait Until Element Is Visible    ${user}
    Input Text    ${user}    bbbbb
    Wait Until Element Is Visible    ${password}
    Input Password    ${password}    aaaa
    Click Element    ${seconnecter}
    Wait Until Page Contains    Invalid credentials
deconnexion
    Wait Until Element Is Visible    ${profil}
    Click Element    ${profil}
    Wait Until Element Is Visible    ${logout}
    Click Element    ${logout} 

    
