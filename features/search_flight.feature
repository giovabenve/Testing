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
    	And I enter Password Confirm <confirmPassword>
    	And I click in Subscribe Newsletter <subscribeNewsletter>
    	And I click in Privacy Policy
    	And I click in button to finish
    	Then I see the account created message


    Examples:
		|firstName| lastName  | email               | tel       | fax     | company   | adress        | sndadress | city       | postcode | country        | state     | password      | confirmPassword | subscribeNewsletter |
		| Carla   | Gonzalez  | carg@gmail.com     | 094543234 | 2345654 | CarGon SA | av brasil 321 | None      | Bristol    | 11200.   | United Kingdom | Bristol   | 1234          | 1234            | No                  |
		| Maria   | Soler     | masolerr@gmail.com   | 097643568 | 2567322 | MariSoler | av espana 321 | None      | Edinburgh  | 11300.   | United Kingdom | Edinburgh | admin1234     | admin1234       | No                  |
		| Ariel   | Mendez    | armendez@gmail.com | 091432456 | 2234677 | Iphone SA | cassinoni 331 | None      | Cardiff    | 10200.   | United Kingdom | Cardiff   | passpalabra   | passpalabra     | No                  |
		| Bruno   | Pereyra   | brupereyraa@gmail.com| 098456783 | 2358908 | None      | blv espana 32 | None      | Glasgow    | 10900.   | United Kingdom | Glasgow   | 4311          | 4311            | No                  |
		| Julieta | Perez     | juperezz@gmail.com   | 099345024 | 2234567 | Jupe SA   | ac.dias 123   | None      | Aberdeen   | 12300.   | United Kingdom | Aberdeen  | prueb1        | prueb1          | No                  |
		| Sofia   | Martinez  | sofiam31@gmail.com   | 092321575 | 2235689 | SoMAR SRL | peru 321 	  | None      | Hampshire  | 11350.   | United Kingdom | Hampshire | testtest      | testtest        | No                  |


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
	
	