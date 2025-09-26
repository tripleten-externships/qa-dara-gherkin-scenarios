Positive:


Scenario: User submits the form
Given I am on the Sponsorship page
When I enter a valid name in the Contact Person field
And I enter a valid phone number in the Cell Phone field 
And I enter a valid email in the Email field
And I enter a valid address in the Address field
And I enter a valid address in the Address 2 field
And I enter a valid city in the City field
And I enter a valid state in the State field
And I enter a valid zip code in the Zip Code field
And I enter a valid name in the Your Animal’s Name field
And I pick an option from the Levels field
And I pick an option from Animals field
And I enter a string in the Additional Comments field
And I click the Submit button
Then I should see the success message
And the information should appear in the database or an email should be sent with the information in it

Negative:

Scenario Outline: User submits the sponsorship form with missing information
Given I am on the Sponsorship page
When I enter a valid <name> in the Contact Person field
And I enter a valid <phone number> in the Cell Phone field 
And I enter a valid <email> in the Email field
And I enter a valid <address> in the Address field
And I enter a valid <address2> in the Address 2 field
And I enter a valid <city> in the City field
And I enter a valid <state> in the State field
And I enter a valid <zip code> in the Zip Code field
And I enter a valid <pet name> in the Your Animal’s Name field
And I pick an <levels> from the Levels field
And I pick an <animal type> from Animals field
And I enter a <string> in the Additional Comments field
And I click the Submit button
Then I should see the error message <ErrorMessage>

Examples: 
    |name      |phone number   |email              |addres       |address2   |city    |state   |zip code   |pet name   |level   |animal type   |string             |ErrorMessage
    |          |9102274199     |margaret@gmail.com |1 hyatt road |Apt b      |raleigh |nc      |23619      |Misty      |friend  |Sea jelly     |Nothing important  |Name is required
    |Margaret  |               |margaret@gmail.com |1 hyatt road |Apt b      |raleigh |nc      |23619      |Misty      |friend  |Sea jelly     |Nothing important  |Phone number is required
    |Margaret  |9102274199     |                   |1 hyatt road |Apt b      |raleigh |nc      |23619      |Misty      |friend  |Sea jelly     |Nothing important  |Email Address is required
    |Margaret  |9102274199     |margaret@gmail.com |             |Apt b      |raleigh |nc      |23619      |Misty      |friend  |Sea jelly     |Nothing important  |Address is required
    |Margaret  |9102274199     |margaret@gmail.com |1 hyatt road |           |raleigh |nc      |23619      |Misty      |friend  |Sea jelly     |Nothing important  |Address 2 is required
    |Margaret  |9102274199     |margaret@gmail.com |1 hyatt road |Apt b      |        |nc      |23619      |Misty      |friend  |Sea jelly     |Nothing important  |City is required
    |Margaret  |9102274199     |margaret@gmail.com |1 hyatt road |Apt b      |raleigh |        |23619      |Misty      |friend  |Sea jelly     |Nothing important  |State is required
    |Margaret  |9102274199     |margaret@gmail.com |1 hyatt road |Apt b      |raleigh |nc      |           |Misty      |friend  |Sea jelly     |Nothing important  |Zip Code is required
    |Margaret  |9102274199     |margaret@gmail.com |1 hyatt road |Apt b      |raleigh |nc      |23619      |           |friend  |Sea jelly     |Nothing important  |Pet name is required
    |Margaret  |9102274199     |margaret@gmail.com |1 hyatt road |Apt b      |raleigh |nc      |23619      |Misty      |        |Sea jelly     |Nothing important  |Level is required
    |Margaret  |9102274199     |margaret@gmail.com |1 hyatt road |Apt b      |raleigh |nc      |23619      |Misty      |friend  |              |Nothing important  |Animal type is required
    |Margaret  |9102274199     |margaret@gmail.com |1 hyatt road |Apt b      |raleigh |nc      |23619      |Misty      |friend  |Sea jelly     |                   |Additional Comment is required

Scenario: User submits an invalid phone number (Only numbers and phone characters (#, -, *, etc) are accepted.)
Given I am on the Sponsorship page
When I enter a valid name in the Contact Person field
And I enter an invalid (ex. AVCDEADF) phone number in the Cell Phone field 
And I enter a valid email in the Email field
And I enter a valid address in the Address field
And I enter a valid address in the Address 2 field
And I enter a valid city in the City field
And I enter a valid state in the State field
And I enter a valid zip code in the Zip Code field
And I enter a valid name in the Your Animal’s Name field
And I pick an option from the Levels field
And I pick an option from Animals field
And I enter a string in the Additional Comments field
And I click the Submit button
Then I should see an error message “Please enter a valid phone number”

Scenario: User submits an invalid email format
Given I am on the Sponsorship page
When I enter a valid name in the Contact Person field
And I enter a valid phone number in the Cell Phone field 
And I enter an invalid email (ex. margaret.com) in the Email field
And I enter a valid address in the Address field
And I enter a valid address in the Address 2 field
And I enter a valid city in the City field
And I enter a valid state in the State field
And I enter a valid zip code in the Zip Code field
And I enter a valid name in the Your Animal’s Name field
And I pick an option from the Levels field
And I pick an option from Animals field
And I enter a string in the Additional Comments field
And I click the Submit button
Then I should see an error message “Please include an ‘@’ in the email address”





