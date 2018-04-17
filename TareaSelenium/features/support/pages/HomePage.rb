
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
        browser.find_element(PRODUCT_SHOPPING_CART)            
    end   

    def loaded?
        browser.title.include?('Your Store')
    end

  end