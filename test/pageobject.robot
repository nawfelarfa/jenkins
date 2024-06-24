*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Resource    ../ressource/keyword/commun.robot
Resource    ../ressource/keyword/authentification.robot
Resource    ../ressource/keyword/ajoutuser.robot
Resource    ../ressource/keyword/recherche.robot

*** Test Cases ***
authentok
    [Documentation]    acces avec user et mot de passe valide
    [Tags]    smoke
    openpage
    loginok
    Close Browser
authentkop
    [Documentation]    mot de passe invalide
    [Tags]    smoke
    openpage
    loginkopassword
    deconnexion
    Close Browser
auhentkouser
    [Documentation]    user non existent
    [Tags]    smoke
    openpage
    loginkouser
    Close Browser
ajouter
    [Documentation]    ajouter un u                        tilisateur
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
    [Tags]    azero
    openpage
    loginok
    reset
    Close Browser