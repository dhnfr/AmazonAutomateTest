*** Settings ***
Documentation    Home Page
Library          SeleniumLibrary

*** Variables ***
${searchBox}       twotabsearchtextbox
${searchButton}    nav-search-submit-button
${dellCheckBox}    //*[@id="p_89/Dell"]/span[@class="a-list-item"]

*** Keywords ***
Search With Keyword
    [Documentation]    Search with keyword
    [Arguments]        ${keyword}
    Wait Until Element Is Visible    ${searchBox}
    Input Text       ${searchBox}    ${keyword}
    Click Element    ${searchButton}
