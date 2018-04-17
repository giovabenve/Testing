Feature: search_flight

	Background:
		Given a new 'chrome' browser
	
	# POSITIVE

	@test_case 
	Scenario: Verify add product in the cart 
		Given I navigate to homepage 
		When I fill 'Samsung'  
		And I click Search button
        And I click in product
        And I fill '2' quantity
        And I click the Add to Cart button
        And I click on Cart button
        And I click in view cart
        Then I see the product in the shopping cart

    @test_case 
	Scenario: 

	# NEGATIVE
	
	