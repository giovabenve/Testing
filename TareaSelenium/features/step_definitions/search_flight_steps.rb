
When(/^I fill '(.*)'$/) do |input|
	begin
		@page.fill_input(input)
	rescue => e
		fail "Error inserting input. Error: #{e}"
	end
end

And(/I click Search button/) do 
	begin
		@page.click_search
	rescue => e
		fail "Error searching. Error: #{e}"
	end
end

And (/I click in product/) do 
	begin
		@page.click_search_product
	rescue => e
		fail "Error click in product. Error: #{e}"
	end
end

And(/^I fill '(.*)' quantity$/) do |input|
	begin
		@page.fill_input_quantity(input)
	rescue => e
		fail "Error fill input quantity. Error: #{e}"
	end
end

And(/I click the Add to Cart button/) do 
	begin
		@page.click_addCart_button
	rescue => e
		fail "Error clik on add cart button. Error: #{e}"
	end
end

And(/I click on Cart button/) do 
	begin
		@page.click_cart_button
	rescue => e
		fail "Error clik on cart button. Error: #{e}"
	end
end

And(/I click in view cart/) do 
	begin
		@page.click_view_cart
	rescue => e
		fail "Error clik in view cart. Error: #{e}"
	end
end

Then (/I see the product in the shopping cart/) do
	begin
		@page.verify_product_shopping_cart
	rescue => e
		fail "Error in the shopping cart. Error: #{e}"
	end
end   
        
        