*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    Process
Library    Telnet
Variables    ../locators/acceuil.py
Variables    ../locators/user.py
*** Keywords ***
ajoutuser
    Wait Until Element Is Visible    ${admin}
    Click Element    ${admin}
    ${file} =  Get File      C:\\application\\ressource\\JDD\\listeuser.csv
    ${table}=    Evaluate    [line.split(',') for line in $file.splitlines()[1:]]
    FOR  ${row}    IN   @{table}
         ${ro}=      Set Variable     ${row}[0]
         ${st}=      Set Variable     ${row}[1]
         ${em}=      Set Variable     ${row}[2]
         ${usernom}=      Set Variable     ${row}[3]
         ${motdepass}=       Set Variable     ${row[4]}
         Wait Until Element Is Visible    ${add}    timeout=20s
         Click Element    ${add}
         Wait Until Element Is Visible     ${role}
         Click Element     ${role}
         Run Keyword If    '${ro}' == 'Admin'    Click Element    ${Administra}
    ...               ELSE    Click Element    ${ESS}
        Wait Until Element Is Visible    ${status}
        Click Element    ${status}
        Run Keyword If    '${st}' == 'Enabled'    Click Element    ${enabled}
    ...               ELSE    Click Element    ${Disabled}
        Input Text    ${username}    ${usernom}
        Wait Until Element Is Visible    ${employername}
        Input Text    ${employername}      ${em}
        Wait Until Element Is Visible    ${passworduser}
        Input Password    ${passworduser}       ${motdepass}
        Wait Until Element Is Visible    ${confirmation}
        Input Password    ${confirmation}       ${motdepass}   
        Wait Until Element Is Visible    ${save}
        Click Element    ${save}
        
   END


