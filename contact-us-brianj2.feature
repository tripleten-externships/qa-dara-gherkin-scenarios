Feature: Contact Us

Scenario: User enters only first Name
Given I am on the Contact Us page
When I enter a name in the First Name field
And I click the Submit button
Then I should see the validation message on the Last Name edit box
And I should see the first name retained in the First Name edit box

Scenario: User submits the form
Given I am on the Contact Us page
When I enter a name in the first name field
And I enter a name in the last name field
And I enter a valid phone number in the phone number field
And I enter a valid email address in the email address field
And I enter a string in the Additional Comments field
And I click the Submit button
Then I should see the success message
And the information should appear in the database or an email should be sent with the information in it