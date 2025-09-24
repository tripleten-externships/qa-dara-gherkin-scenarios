Feature: Contact Us

	Scenario: User completes and submits the form
		Given I am on the Contact Us page
		When I enter a name in the first name field
		And I enter a name in the last name field
		And I enter a valid phone number in the phone number field
		And I enter a valid email address in the email address field
		And I select a reason for contacting in the Reason for Contacting field
		And I enter a string in the Additional Comments field
		And I check the CAPTCHA
		And I click the Submit button
		Then I should see the success message
		And the information should appear in the database or an email should be sent with the information in it


	Scenario: User clicks Submit without entering information
		Given I am on the Contact Us form
		When I click the Submit button without entering any information
		Then I should see the Please fill in this field validation on the First Name edit box


	Scenario: User enters only First Name
		Given I am on the Contact Us page
		When I enter a name in the First Name field
		And I click the Submit button
		Then I should see the validation message on the Last Name edit box
		And I should see the first name retained in the First Name edit box

	Scenario: User enters invalid email format
		Given I am on the Contact Us page
		When I enter "invalidemail.com" in the Email field
		And I click the Submit button
		Then I should see an error message indicating the email format is invalid


	Scenario: User enters invalid phone number
		Given I am on the Contact Us page
		When I enter "123" in the Phone Number field
		And I click the Submit button
		Then I should see an error message indicating the phone number format is invalid