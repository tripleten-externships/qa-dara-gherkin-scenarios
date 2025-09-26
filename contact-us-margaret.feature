Negative:

Scenario Outline: User submits the contact form with missing information
Given I am on the Contact Us page
When I enter a valid <first name> in the First Name field
When I enter a valid <last name> in the Last Name field
And I enter a valid <phone number> in the Phone Number field 
And I enter a valid <email> in the Email field
And I select a <reason> in the Reason for contacting field
And I enter a <string> in the Additional Comments field
And I check the CAPTCHA
And I click the Submit button
Then I should see the error message <ErrorMessage>

Examples: 
    |first name |last name      |phone number   |email              |reason   |string             |ErrorMessage
    |           |Maloloy-on     |9102274199     |margaret@gmail.com |hours    |Nothing important  |First name is required
    |Margaret   |Maloloy-on     |               |margaret@gmail.com |hours    |Nothing important  |Phone number is required
    |Margaret   |Maloloy-on     |9102274199     |                   |hours    |Nothing important  |Email Address is required
    |Margaret   |               |9102274199     |margaret@gmail.com |hours    |Nothing important  |Last Name is required
    |Margaret   |Maloloy-on     |9102274199     |margaret@gmail.com |         |Nothing important  |Reason is required
    |Margaret   |Maloloy-on     |9102274199     |margaret@gmail.com |hours    |                   |Additional Comment is required