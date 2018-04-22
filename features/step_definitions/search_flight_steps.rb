
#Scenario Verify add product in the cart 

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
		assert(@page.verify_product_shopping_cart,"Se encontro el producto en el carro de compras")
	rescue => e
		fail "Error in the shopping cart. Error: #{e}"
	end
end   


#Scenario Write a review
      
When(/I click in menu Desktops/) do
	begin
		@page.click_menu_desktops
	rescue => e
		fail "Error click in menu Desktops. Error: #{e}"
	end
end

And(/I click in Mac/) do 
	begin
		@page.click_mac
	rescue => e
		fail "Error click in mac. Error: #{e}"
	end
end

And(/I click Mac product/) do 
	begin
		@page.click_product_mac
	rescue => e
		fail "Error click in product mac. Error: #{e}"
	end
end
       
And(/I click in review/) do 
	begin
		@page.click_review
	rescue => e
		fail "Error click in review. Error: #{e}"
	end
end

And(/^I fill name '(.*)'$/) do |input|
	begin
		@page.fill_input_name(input)
	rescue => e
		fail "Error fill input name. Error: #{e}"
	end
end

And(/I fill your review '(.*)'$/) do |input|
	begin
		@page.fill_input_review(input)
	rescue => e
		fail "Error fill input review. Error: #{e}"
	end
end

And(/I click rating/) do
	begin
		@page.fill_input_rating
	rescue => e
		fail "Error fill input rating. Error: #{e}"
	end
end

And(/I click in Continue button/) do
	begin
		@page.click_continue
	rescue => e
		fail "Error click button continue. Error: #{e}"
	end
end

Then (/I see the thank you message/) do
	begin
		assert(@page.verify_thankyouMessage,"Aparecio el mensaje de agradecimiento")
	rescue => e
		fail "Error in the thankyouMessage. Error: #{e}"
	end
end 

When(/I click in My Account/) do
	begin
		@page.click_account
	rescue => e
		fail "Error click account. Error: #{e}"
	end
end

And(/I click in Register/) do
	begin
		@page.click_register
	rescue => e
		fail "Error click register. Error: #{e}"
	end
end

And(/I enter First Name (.*)$/) do |firstName|
	begin
		@page.fill_input_firstName(firstName)
	rescue => e
		fail "Error fill input firstName. Error: #{e}"
	end
end


And(/I enter Last Name (.*)$/) do |lastName|
	begin
		@page.fill_input_lastName(lastName)
	rescue => e
		fail "Error fill input lastName. Error: #{e}"
	end
end


And(/I enter E-Mail (.*)$/) do |email|
	begin
		@page.fill_input_email(email)
	rescue => e
		fail "Error fill input email. Error: #{e}"
	end
end



And(/I enter Telephone (.*)$/) do |tel|
	begin
		@page.fill_input_tel(tel)
	rescue => e
		fail "Error fill input Telephone. Error: #{e}"
	end
end


And(/I enter Fax (.*)$/) do |fax|
	begin
		@page.fill_input_fax(fax)
	rescue => e
		fail "Error fill input fax. Error: #{e}"
	end
end


And(/I enter Company (.*)$/) do |company|
	begin
		@page.fill_input_company(company)
	rescue => e
		fail "Error fill input company. Error: #{e}"
	end
end


And(/I enter Address 1 (.*)$/) do |adress|
	begin
		@page.fill_input_adress(adress)
	rescue => e
		fail "Error fill input adress. Error: #{e}"
	end
end


And(/I enter Address 2 (.*)$/) do |sndadress|
	begin
		@page.fill_input_sndadress(sndadress)
	rescue => e
		fail "Error fill input sndadress. Error: #{e}"
	end
end


And(/I enter City (.*)$/) do |city|
	begin
		@page.fill_input_city(city)
	rescue => e
		fail "Error fill input city. Error: #{e}"
	end
end


And(/I enter Post Code (.*)$/) do |postcode|
	begin
		@page.fill_input_postcode(postcode)
	rescue => e
		fail "Error fill input postcode. Error: #{e}"
	end
end


And(/I enter my Country (.*)$/) do |country|
	begin
		@page.fill_input_country(country)
	rescue => e
		fail "Error fill input country. Error: #{e}"
	end
end

And(/I enter my State (.*)$/) do |state|
	begin
		@page.fill_input_state(state)
	rescue => e
		fail "Error fill input state. Error: #{e}"
	end
end


And(/I enter my Password (.*)$/) do |password|
	begin
		@page.fill_password(password)
	rescue => e
		fail "Error fill input password. Error: #{e}"
	end
end


And(/I enter Password Confirm(.*)$/) do |confirmPassword|
	begin
		@page.fill_confirm_password(confirmPassword)
	rescue => e
		fail "Error fill input confirm password. Error: #{e}"
	end
end

And(/I click in Subscribe Newsletter (.*)$/) do |subscribeNewsletter|
	begin
		@page.click_subscribeNewsLetter(subscribeNewsletter)
	rescue => e
		fail "Error click in subscribeNewsletter. Error: #{e}"
	end
end

And(/I click in Privacy Policy/) do 
	begin
		@page.click_privacy_policy
	rescue => e
		fail "Error click in privacyPolicy. Error: #{e}"
	end
end

And(/I click in button to finish/) do 
	begin
		@page.click_continue_button
	rescue => e
		fail "Error click in continue button. Error: #{e}"
	end
end

Then (/I see the account created message/) do
	begin
		assert(@page.verify_message_account,"Your Account Has Been Created!")
	rescue => e
		fail "Error in the message account. Error: #{e}"
	end
end  

When(/I click in Contact Us/) do
	begin 
		@page.click_Contact_Us
	rescue => e
		fail "Error click contact Us. Error: #{e}"
	end
end

And(/I fill my name '(.*)'$/) do |input|
	begin
		@page.fill_name_contact(input)
	rescue => e
		fail "Error fill name. Error: #{e}"
	end
end

And(/I fill my email '(.*)'$/) do |input|
	begin
		@page.fill_email_contact(input)
	rescue => e
		fail "Error fill email. Error: #{e}"
	end
end

And(/I fill enquiry '(.*)'$/) do |input|
	begin
		@page.fill_enquiry(input)
	rescue => e
		fail "Error fill enquiry. Error: #{e}"
	end
end

And (/I click Submit button/) do
	begin
		@page.click_submitButton
	rescue => e
		fail "Error click in submitButton. Error: #{e}"
	end
end  

Then (/I see the successfull message/) do
	begin
		assert(@page.verify_message_contact_us,"Your enquiry has been successfully sent to the store owner!")
	rescue => e
		fail "Error in the message contact us. Error: #{e}"
	end
end  