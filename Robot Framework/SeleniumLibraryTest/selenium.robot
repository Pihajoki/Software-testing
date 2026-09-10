*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${pass}=    VerySecretPW12345


*** Test Cases ***
Web app register
    Open Browser    https://www.jimms.fi    firefox    options-add_argument{"--log-level-3"}

    Maximize Browser Window

    Click Element    xpath:/html/body/header/div/div[3]/jim-customer-dropdown-nav/div/div/a/span

    Sleep    1

    Select Radio Button    selectedTab    private-tab-input


    Click Element    id:pf-EmailAddress
    Input Text    id:pf-EmailAddress    d.d@dd.com

    Click Element    id:pf-Password
    Input Password    id:pf-Password    ${pass}

    Click Element    id:pf-ConfirmPassword
    Input Password    id:pf-ConfirmPassword    ${pass}

    Click Element    id:pf-FirstName
    Input Text    id:pf-FirstName    Donald

    Click Element    id:pf-LastName
    Input Text    id:pf-LastName    Duck

    Set Screenshot Directory    C:\\Users\\jogis\\Documents\\GitHub\\Software testing\\Robot Framework\\SeleniumLibraryTest

    Capture Page Screenshot    screen1.png
    
    Close Browser