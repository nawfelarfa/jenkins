*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Variables    ../locators/acceuil.py
Resource    authentification.robot
Variables    ../locators/user.py
*** Keywords ***
search
    Wait Until Element Is Visible    ${admin}
    Click Element    ${admin}
    Wait Until Element Is Visible    ${uersearch}
    Input Text    ${uersearch}    Admin  
    Wait Until Element Is Visible    ${btsearch}
    Click Button    ${btsearch}
    Wait Until Page Contains    Admin 
searchko
    Wait Until Element Is Visible    ${admin}
    Click Element    ${admin}
    Wait Until Element Is Visible    ${uersearch}
    Input Text    ${uersearch}    aeeaeea
    Wait Until Element Is Visible    ${btsearch}
    Click Button    ${btsearch}
    Page Should Not Contain    aeeaeea   
reset
    Wait Until Element Is Visible    ${admin}
    Click Element    ${admin}
    Wait Until Element Is Visible    ${uersearch}
    Input Text    ${uersearch}     Admin
    Wait Until Element Is Visible      ${role}       
    Click Element    ${role}
    Wait Until Element Is Visible    ${Administra}
    Click Element    ${Administra}
    Wait Until Element Is Visible    ${employername}
    Input Text      ${employername}    alalaa
    Wait Until Element Is Visible    ${userstat}
    Click Element    ${userstat}
    Wait Until Element Is Visible    ${enabled}
    Click Element    ${enabled}
    Wait Until Element Is Visible    ${reset}
    Click Button    ${reset}
    ${value}    Get Element Attribute    ${uersearch}     aaa
    ${vemp}     Get Element Attribute    ${employername}     eee
    ${vstat}    Get Element Attribute    ${status}    ssss
    ${vrole}    Get Element Attribute    ${role}    rrrr 
    Should Be Equal    ${value}    ${None}
    Should Be Equal     ${vemp}    ${None}
    Should Be Equal    ${vstat}    ${None}
    Should Be Equal    ${vrole}    ${None}
   

    