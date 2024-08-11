*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library      AllureLibrary   
Resource    ../ressource/keyword/commun.robot
Resource    ../ressource/keyword/authentification.robot
Resource    ../ressource/keyword/ajoutuser.robot
Resource    ../ressource/keyword/recherche.robot

*** Test Cases ***
authentok
    [Documentation]    acces avec user et mot de passe valide
    [Tags]    cr
    openpage
    loginok
    Capture Page Screenshot
    Close Browser
authentkop
    [Documentation]    mot de passe invalide
    [Tags]    critical
    openpage
    loginkopassword
    Close Browser
auhentkouser
    [Documentation]    user non existent
    [Tags]     critical
    openpage
    loginkouser
    
    Close Browser
ajouter
    [Documentation]    ajouter un utilisateur
    [Tags]     ad                                                                                                                                                                                                                                                                                                                                                                                                              
    openpage
    loginok
    ajoutuser
    
    Close Browser
rechercheruserok
    [Documentation]     recherche d'un utilisateur
    [Tags]    normal
    openpage
    loginok
    search
    
    Close Browser
rechercheruserko
    [Documentation]     recherche d'un utilisateur
    [Tags]    normal
    openpage
    loginok
    searchko
    
    Close Browser
restuser
    [Documentation]    reset des informations de recherche
    [Tags]    Haute
    openpage
    loginok
    reset
   
    Close Browser