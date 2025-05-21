*** Variables ***
${browser}                      chrome
${url}                          https://www.saucedemo.com/
${field_username}               xpath://*[@placeholder='Username']
${field_password}               xpath://*[@placeholder='Password']
${btn_login}                    //*[@value='Login']
${add_to_cart_backpack}         //button[@id='add-to-cart-sauce-labs-backpack']
${icon_cart}                    //a[@class='shopping_cart_link']
${verify_item_data}             //div[@class='inventory_item_name']
${verify_item_price}            //div[@class='inventory_item_price']
${btn_checkout}                 //button[@id='checkout']
${field_first_name}             //input[@id='first-name']
${field_last_name}              //input[@id='last-name']
${field_zip_code}               //input[@id='postal-code']
${btn_continue}                 //input[@id='continue']
${value_payment_info}           //div[@data-test='payment-info-value']
${value_shipping_info}          //div[@data-test='shipping-info-value']
${value_price_item}             //div[@data-test='subtotal-label']
${value_price_tax}              //div[@data-test='tax-label']
${value_price_total}            //div[@data-test='total-label']
${btn_finish}                   //button[@data-test='finish']
${wording_success_order}        //h2[@data-test='complete-header']

${product_name}                 //*[text()='Sauce Labs Fleece Jacket']
${product_price}                 //*[text()='49.99']
${wording_content_tnc}          //*[text()='MASID dapat merevisi syarat dan ketentuan ini dari waktu ke waktu. Syarat dan ketentuan yang direvisi akan berlaku untuk penggunaan Situs DMS sejak tanggal publikasi syarat dan ketentuan yang direvisi tersebut. Silahkan periksa halaman ini secara teratur untuk memastikan Anda sudah familiar dengan versi saat ini.']
${btn_accept}                   //*[text()='Accept']
${wording_content_tnc2}          //*[text()='Dengan tidak ']

${filter_harga}                  //*[@data-test='product-sort-container']
${value_filter_price}            //*[text()='Price (high to low)']
${dropdown_role}                (//*[text()='-- Select --'])[1]







