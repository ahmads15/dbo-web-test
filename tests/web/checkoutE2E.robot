*** Settings ***
Resource          ../../resources/web/keywordsWEB.robot

*** Test Cases ***
User success login dan melakukan filter harga tertinggi
    Given Open Sauce Demo website in chrome
    When User success input username and password
    And User choose filter harga tertinggi
    Then User verify harga tertinggi akan tampil paling pertama


User add qty dan berhasil melakukan checkout produk
    Given Open Sauce Demo website in chrome
    When User success input username and password
    And User add to cart item backpack
    And User click icon cart
    And User verify item on cart page
    And User click button checkout on cart page
    And User success input information data checkout
    And User click button continue checkout
    And User verify value data on checkout page
    And User click button finish checkout
    Then User verify success order 