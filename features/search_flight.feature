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
	Scenario: Write a review
		Given I navigate to homepage
		When I click in menu Desktops
		And I click in Mac
		And I click Mac product
		And I click in review
		And I fill name 'Carla'
		And I fill your review 'La mejor iMac que vi en el mundo, la recomiendo'
		And I click rating
		And I click in Continue button
		Then I see the thank you message

	@test_case 
	Scenario Outline: Register Account
    	Given I navigate to homepage
    	When I click in My Account
    	And I click in Register
    	And I enter First Name <firstName>
    	And I enter Last Name <lastName>
    	And I enter E-Mail <email>
    	And I enter Telephone <tel>
    	And I enter Fax <fax>
    	And I enter Company <company>
    	And I enter Address 1 <adress>
    	And I enter Address 2 <sndadress>
    	And I enter City <city>
    	And I enter Post Code <postcode>
    	And I enter my Country <country>
    	And I enter my State <state>
     	And I enter my Password <password>
    	And I enter Password Confirm <passwordConfirm>
    	And I click in Subscribe Newsletter <subscribeNewsletter>
    	And I click in Privacy Policy
    	And I click in button to finish
    	Then I see the account created message


    Examples:
		|firstName| lastName | email             | tel       | fax     | company   | adress        | sndadress | city       | postcode | country | state | password | confirmPassword | subscribeNewsletter |
		| Carla  | Gonzalez  | carlg3@gmail.com  | 094543234 | 2345654 | CarGon SA | av brasil 321 | None      | Montevideo | 11200.   | Uruguay | Rocha | 1234 | 1234 | No |


    @test_case 
	Scenario: Contact Us
		Given I navigate to homepage
		When I click in Contact Us
		And I fill my name 'Carla'
		And I fill my email 'carlg3@gmail.com'
		And I fill enquiry 'Estimados, Queria consultar sobre las compras por mayor. Espero me contacten. Saludos'
		And I click Submit button
		Then I see the successfull message

   	# NEGATIVE
	
	