
class HomePage 
    
    INPUT_SEARCH = {xpath: '//*[@id="search"]/input'}     
    SEARCH_BUTTON = { xpath: '//*[@id="search"]/span/button'     }
    ID_CONTENT = {xpath: '//*[contains(text(),"Samsung")]'}
    PRODUCT_BUTTON = {xpath: '//*[@class="caption"]/h4/a[contains(text(),"Samsung SyncMaster 941BW")]'}
    INPUT_QUANTITY = {xpath: '//*[@name="quantity"]'}
    ADDCART_BUTTON = {css: '.btn#button-cart' }
    CART = {xpath: '//*[@id="cart"]/button'}
    VIEW_CART = {xpath: '//*[@id="cart"]/ul/li[2]/div/p/a[1]/strong'}
    PRODUCT_SHOPPING_CART = {xpath:'//*[@id="content"]/form/div/table/tbody/tr/td[2]/a'}
    MENU_DESKTOPS = {xpath: '//*[contains(text(),"Desktops")][@class="dropdown-toggle"]'}
    SUBMENU_MAC = {css: '#menu li:nth-child(1) li:nth-child(2) > a'}
    PRODUCT_MAC = {xpath: '//*[@class="caption"]/h4/a[contains(text(),"iMac")]'}
    REVIEW = {css:'[href="#tab-review"]'}
    INPUT_NAME = {css: '#input-name'}
    INPUT_REVIEW = {xpath: '//*[@id="input-review"]'}
    INPUT_RATING = {css: '#form-review input[type="radio"]:nth-child(6)'}
    CONTINUE_CLICK = {xpath: '//*[@id="button-review"]'}
    THANKYOU_MESSAGE = {css: '#form-review div.alert.alert-success'}
    CLICK_ACCOUNT = {xpath: '//*[@title="My Account"]'}
    CLICK_REGISTER = {xpath: '//*[contains(text(),"Register")]'}
    INPUT_FIRSTNAME = {xpath: '//*[@id="input-firstname"]'}
    INPUT_LASTNAME = {xpath: '//*[@id="input-lastname"]'}
    INPUT_EMAIL = {xpath: '//*[@id="input-email"]'}
    INPUT_TEL = {xpath: '//*[@id="input-telephone"]'}
    INPUT_FAX = {xpath: '//*[@id="input-fax"]'}
    INPUT_COMPANY = {xpath: '//*[@id="input-company"]'}
    INPUT_ADRESS = {xpath: '//*[@id="input-address-1"]'}
    INPUT_SNDADRESS = {xpath: '//*[@id="input-address-2"]'}
    INPUT_CITY = {xpath: '//*[@id="input-city"]'}
    INPUT_POSTCODE = {xpath: '//*[@id="input-postcode"]'}
    INPUT_COUNTRY = {xpath: '//*[@id="input-country"]'}
    INPUT_STATE = {xpath: '//*[@id="input-zone"]'}
    INPUT_PASSWORD = {xpath:'//*[@id="input-password"]'}
    INPUT_CONFIRM_PASSWORD = {xpath: '//*[@id="input-confirm"]'}
    CLICK_SUBSCRIBE_NEWSLETTER = {css: '[class= radio-inline] input[value="0"]'}
    CLICK_PRIVACY_POLICY = {css:'input[type="checkbox"]:nth-child(2)'}
    CLICK_CONTINUE_BUTTON = {xpath:'//*[@type="submit"]'}
    MESSAGE_ACCOUNT_CONFIRMATED = {xpath: '//*[@id="content"]/h1'}
    CLICK_CONTACT_US = {css: '[class = "list-unstyled"] [href="http://opencart.abstracta.us:80/index.php?route=information/contact"]'}
    INPUT_NAME_CONTACT = {xpath: '//*[@id="input-name"]'}
    INPUT_EMAIL_CONTACT = {xpath: '//*[@id="input-email"]'}
    INPUT_ENQUIRY = {xpath: '//*[@id="input-enquiry"]'}
    CLICK_SUBMIT_BUTTON = {xpath:'//*[@class="btn btn-primary"]'}
    MESSAGE_CONTACT_US = {xpath: '//*[@id="content"]'}



    attr_reader :browser

    def initialize(browser)
        @browser = browser
    end

    def fill_input (input)
        browser.find_element(INPUT_SEARCH).send_keys(input)
    end

    def click_search
        browser.find_element(SEARCH_BUTTON).click
    end 

    def verify_search_results(input) 
        browser.find_element(ID_CONTENT)            
    end

    def click_search_product
        browser.find_element(PRODUCT_BUTTON).click
    end 

    def fill_input_quantity (input)
        browser.find_element(INPUT_QUANTITY).send_keys(input)
    end

    def click_addCart_button
        browser.find_element(ADDCART_BUTTON).click
    end

    def click_cart_button
        if browser.find_element(CART)
            browser.find_element(CART).click
        end
    end

    def click_view_cart
        browser.manage.timeouts.implicit_wait = 30
        browser.find_element(VIEW_CART).click           
    end    

    def verify_product_shopping_cart
        return true if browser.find_element(PRODUCT_SHOPPING_CART)
        false
    end   

    def click_menu_desktops
        browser.find_element(MENU_DESKTOPS).click            
    end   

    def click_mac
        browser.find_element(SUBMENU_MAC).click
    end

    def click_product_mac
        browser.find_element(PRODUCT_MAC).click
    end

    def click_review
        browser.manage.timeouts.implicit_wait = 10
        browser.find_element(REVIEW).click
        browser.manage.timeouts.implicit_wait = 30
    end

    def fill_input_name (input)
        browser.find_element(INPUT_NAME).send_keys(input)
    end

    def fill_input_review (input)
        browser.find_element(INPUT_REVIEW).send_keys(input)
    end

     def fill_input_rating
        browser.find_element(INPUT_RATING).click
    end

    def click_continue 
        browser.find_element(CONTINUE_CLICK).click
    end

    def verify_thankyouMessage
        return true if browser.find_element(THANKYOU_MESSAGE)
        false                   
    end  

    def click_account
        browser.find_element(CLICK_ACCOUNT).click           
    end

    def click_register
        browser.find_element(CLICK_REGISTER).click
    end

    def fill_input_firstName(firstName)
        browser.find_element(INPUT_FIRSTNAME).send_keys(firstName)
    end

    def fill_input_lastName(lastName)
        browser.find_element(INPUT_LASTNAME).send_keys(lastName)
    end

    def fill_input_email(email)
        browser.find_element(INPUT_EMAIL).send_keys(email)
    end

    def fill_input_tel(tel)
        browser.find_element(INPUT_TEL).send_keys(tel)
    end

    def fill_input_fax(fax)
        browser.find_element(INPUT_FAX).send_keys(fax)
    end

    def fill_input_company(company)
        browser.find_element(INPUT_COMPANY).send_keys(company)
    end   

    def fill_input_adress(adress)
        browser.find_element(INPUT_ADRESS).send_keys(adress)
    end

    def fill_input_sndadress(sndadress)
        browser.find_element(INPUT_SNDADRESS).send_keys(sndadress)
    end

    def fill_input_city(city)
        browser.find_element(INPUT_CITY).send_keys(city)
    end

    def fill_input_postcode(postcode)
        browser.find_element(INPUT_POSTCODE).send_keys(postcode)
    end

    def fill_input_country(country)
        dropdown_list = browser.find_element(INPUT_COUNTRY)
        options = dropdown_list.find_elements(tag_name: 'option')
        options.each { |option| option.click if option.text == country }

    end

   def fill_input_state(state)
        dropdown_list = browser.find_element(INPUT_STATE)
        options = dropdown_list.find_elements(tag_name: 'option')
        options.each { |option| option.click if option.text == state };
        
    end

    def fill_password(password)
        browser.find_element(INPUT_PASSWORD).send_keys(password)
    end

    def fill_confirm_password(confirmPassword)
        puts confirmPassword
        browser.find_element(INPUT_CONFIRM_PASSWORD).send_keys(confirmPassword)
    end

    def click_subscribeNewsLetter(subscribeNewsletter)
        browser.find_element(CLICK_SUBSCRIBE_NEWSLETTER).click
    end

    def click_privacy_policy
        browser.find_element(CLICK_PRIVACY_POLICY).click
    end

    def click_continue_button
        browser.find_element(CLICK_CONTINUE_BUTTON).submit()
    end

     def verify_message_account
        return true if browser.find_element(MESSAGE_ACCOUNT_CONFIRMATED)
        false
    end 

    def click_Contact_Us
        browser.find_element(CLICK_CONTACT_US).click
    end

    def fill_name_contact(input)
        browser.find_element(INPUT_NAME_CONTACT).send_keys(input)
    end

    def fill_email_contact(input)
        browser.find_element(INPUT_EMAIL_CONTACT).send_keys(input)
    end

    def fill_enquiry(input)
        browser.find_element(INPUT_ENQUIRY).send_keys(input)
    end

    def click_submitButton
        browser.find_element(CLICK_SUBMIT_BUTTON).submit()
    end

    def verify_message_contact_us
        return true if browser.find_element(MESSAGE_CONTACT_US)
        false
    end

    def loaded?
        browser.title.include?('Your Store')
    end

  end