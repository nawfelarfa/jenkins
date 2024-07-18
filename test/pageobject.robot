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
    [Tags]    smokeo
    openpage
    loginok
    Close Browser
authentkop
    [Documentation]    mot de passe invalide
    [Tags]    ko
    openpage
    loginkopassword
    Close Browser
auhentkouser
    [Documentation]    user non existent
    [Tags]    ko
    openpage
    loginkouser
    Close Browser
ajouter
    [Documentation]    ajouter un utilisateur
    [Tags]    aj
    openpage
    loginok
    ajoutuser
    Close Browser
rechercheruserok
    [Documentation]     recherche d'un utilisateur
    [Tags]    rech
    openpage
    loginok
    search
    Capture Page Screenshot
    Close Browser
rechercheruserko
    [Documentation]     recherche d'un utilisateur
    [Tags]    rechko
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