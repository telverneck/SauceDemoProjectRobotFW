***Settings***
Documentation        Inventory Page
Library                 SeleniumLibrary


*** Variables ***
${menuButton}                            id:react-burger-menu-btn
${cartLink}                              class:shopping_cart_link
${productSortSelect}                     class:product_sort_container 
${firstItemAddToCartButton}             (//div[@class='inventory_item'])[1]//button


*** Keywords ***
Check Inventory Page
    Wait Until Element Is Visible    ${menuButton}
    Element Should Be Visible        ${menuButton}
    Element Should Be Visible        ${cartLink}
    Element Should Be Visible        ${productSortSelect}
Filter By
    [Arguments]    ${optionName}
    Select From List By Label    ${productSortSelect}    ${optionName}

Add First Item To Cart
    Click Element    ${firstItemAddToCartButton} 
    Wait Until Element Contains    ${cartLink}     1