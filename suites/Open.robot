*** Settings ***
Library     SeleniumLibrary
Resource    ../pageObject/CartListPage.robot
Resource    ../pageObject/HomePage.robot
Resource    ../pageObject/SearchListPage.robot
Resource    ../pageObject/DetailItemPage.robot
Variables   ../utils/data.yaml

*** Test Cases ***
Validate User Can Delete Item On Card
    [Documentation]   Verify user can delete item on card
    Open Browser    url=${url}    browser=${browser}    
    Search With Keyword           ${keyword}
    Click Dell On Filter Bar
    Click Item                    ${item}
    Select Quantity Of Item       ${quantity}
    Click Add To Cart Button
    Click Cart Button
    Click Delete Item On Card List
    Validate Cart List Is Empty
    [Teardown]    Close Browser
