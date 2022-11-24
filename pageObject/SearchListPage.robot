*** Settings ***
Documentation    Search List Page
Library          SeleniumLibrary

*** Variables ***
${itemText}        //*[contains(text(),'{0}')]
${dellCheckBox}    //*[@id="p_89/Dell"]/span[@class="a-list-item"]

*** Keywords ***
Click Dell On Filter Bar
    [Documentation]    Click dell on filter bar
    Wait Until Element Is Visible    ${dellCheckBox}
    Click Element      ${dellCheckBox}

Click Item
    [Documentation]    Click item
    [Arguments]        ${item}
    Wait Until Element Is Visible     ${itemText.format("${item}")}
    Click Element      ${itemText.format("${item}")}