*** Setting ***
Documentation    Card List Page
Library          SeleniumLibrary

*** Variables ***
${deleteButton}        //*[@value="Delete"]
${subtotalLabel}       sc-subtotal-label-activecart
${amountTotalLabel}    //*[@id="sc-subtotal-amount-activecart"]/span

*** Keywords ***
Click Delete Item On Card List
    [Documentation]    Click delete button on card list page
    Wait Until Element Is Visible    ${deleteButton}
    Click Element                    ${deleteButton}

Validate Cart List Is Empty
    [Documentation]    Validate cart list is empty
    Wait Until Element Is Visible     ${subtotalLabel}
    ${subtotal}       Get Text        ${subtotalLabel}
    Should Contain    ${subtotal}     0 items
    Wait Until Element Is Visible     ${amountTotalLabel}
    ${amount}         Get Text        ${amountTotalLabel}
    Should Be Equal   ${amount}       $0.00
    Page Should Contain    Your Amazon Cart is empty.