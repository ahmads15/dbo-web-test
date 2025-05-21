*** Settings ***
Library             Selenium2Library
Resource          ../../resources/web/variablesWEB.robot


*** Keywords ***
Open Sauce Demo website in chrome
    Open Browser                       ${url}                        ${browser}
    Maximize Browser Window
    Sleep  5

User success input username and password
    Input Text                         ${field_username}             standard_user
    Input Text                         ${field_password}             secret_sauce
    Sleep       5
    Click Element                      ${btn_login}

User choose filter harga tertinggi
    Click Element                      ${filter_harga}  
    Click Element                      ${value_filter_price}
    Sleep   5

User verify harga tertinggi akan tampil paling pertama
    Wait Until Element Is Visible      ${product_name}
    Wait Until Element Is Visible      ${product_price}


User succes filter data by role and status
    Click Element                      ${dropdown_role} 

User add to cart item backpack
    Wait Until Element Is Visible      ${add_to_cart_backpack}
    Click Element                      ${add_to_cart_backpack}

User click icon cart
    #Mouse Over      ${navbar_simulasi}
    Click Element                      ${icon_cart}

User verify item on cart page
    Element Should Contain             ${verify_item_data}          Sauce Labs Backpack  
    Element Should Contain             ${verify_item_price}         29.99


User click button checkout on cart page
    Wait Until Element Is Visible      ${btn_checkout}
    Click Element                      ${btn_checkout}


User success input information data checkout
    Sleep       5
    Input Text                         ${field_first_name}           test 
    Input Text                         ${field_last_name}            qa
    Press Keys                         ${field_zip_code}             123123    

User click button continue checkout
    Click Element                      ${btn_continue}
    sleep                              5 second

User verify value data on checkout page
    Element Should Contain             ${value_payment_info}          SauceCard #31337  
    Element Should Contain             ${value_shipping_info}         Free Pony Express Delivery!  
    Element Should Contain             ${value_price_item}            29.99  
    Element Should Contain             ${value_price_tax}             2.40  
    Element Should Contain             ${value_price_total}           32.39

User click button finish checkout
    Click Element                      ${btn_finish}

User verify success order 
    Element Should Contain             ${wording_success_order}       Thank you for your order!  


Close The Browser
    sleep                                       5 second
    Close Browser
