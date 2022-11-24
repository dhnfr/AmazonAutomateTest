*** Settings ***
Documentation    Detail item page
Library          SeleniumLibrary

*** Variables ***
${addQuantitySelect}    a-autoid-0-announce
${quantityOption}       quantity_{0}
${addToCartButton}      add-to-cart-button
${cartButton}           attach-view-cart-button-form

*** Keywords ***
Select Quantity Of Item
    [Documentation]    Select quantity of item on detail item page
    [Arguments]        ${quantity}
    Wait Until Element Is Visible    ${addQuantitySelect}
    Click Element      ${addQuantitySelect}
    Wait Until Element Is Visible    ${quantityOption.format(${quantity-1})}
    Click Element      ${quantityOption.format(${quantity-1})}

Click Add To Cart Button
    [Documentation]    Click add to card button on detail item page
    Wait Until Element Is Visible    ${addToCartButton}
    Click Element      ${addToCartButton}

Click Cart Button
    [Documentation]    Click cart button
    Wait Until Element Is Visible    ${cartButton}    10s
    Click Element      ${cartButton}