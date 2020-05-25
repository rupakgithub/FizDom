*** Settings ***
Library    SeleniumLibrary  


*** Keywords ***
NavigateToURL
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}   ${browser}
    Maximize Browser Window