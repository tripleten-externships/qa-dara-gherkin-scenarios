Feature: Book an Event

Scenario: User selects a package
Given I am on the Step#1 Select a Package package
When I click the drop down menu under Category
And I click Book a Valentines Date
Then I should see Valentines Day at the Aquarium package
When I click Valentines Day at the Aquarium
Then I should see the package expand with more details
When I click Select Package
Then I should see Step#2 Pick a Date

Scenario: User picks a Date
Given I am on the Step#2 Pick a Date page
When I select Feb 14 2026
Then I should see the Select a Time option
When I click 7:00pm 
Then I should see the Next Step button appear on the bottom right
When I click Next Step
Then it should take me to Step#3 Select a Quantity

Scenario: User Selects Quantity
Given I am on the Step#3 Select Quantity page
When I add how many tables I want
Then the Total Price should be added correctly at the bottom right of the page
And the amount of Spots left should be subtracted accordingly
When I click the Next Step button
Then it should take me to Step#4 Customize Event page

Scenario: User Customizes Event
Given I am on the Step#4 Customize Event page
When I select a Wine bottle
Then the Total price should change accordingly
When I click the Next Step button
Then it should take me to Step#5 Finalize Event page

Scenario: User Finalizes Booking of Event
Given I am on Step#5 Finalize Event page
And has selected the option Proceed to Checkout
When I click the Create Account button without entering any information
Then I should see an error message prompting me to fill in the required fields

Scenario: User enters only Email address in Email addess field
Given I am on the Finalize Event page
When I enter an email address in the Email Addess field
And I click Create Account
Then I should see an error message prompting me to fill out the other fields

Scenario: User enters Phone number in Phone number field after email
Given I am on the Finalize Event page
And I entered an email in the Email field
When I enter a Phone Number in the Phone Number field
And I click Create Account
Then I should see an error message prompting me to fill out the other fields

Scenario: User enters First Name in the First name field
Given I am on the Finalize Event page
And I have entered an email and Phone number
When I enter a name in the First Name field
And I click the Create Account button
Then I should see an error message prompting me to fill in the rest of the fields

Scenario: User enters Last name
Given I am on the Finalize Event page
And I have entered an email 
And I have entered a phone number
And I have entered a first name
When I enter a name in that Last Name field
Then click Create Account button
Then I should see an error message prompting me to fill out the rest of the required fields

Scenario: User enters Zip Code
Given I am on the Finalize Event page
And I have entered an email address
And I have entered a phone number
And I have entered a first name
And I have entered a last name
When I enter a zip Code
And I click the Create Account button
Then I should see an error message prompting me to fill out the required fields

Scenario: User enters dinner options
Given I am on the Finalize Event page
And I have entered all the previous fields
When I enter dinner options for guests
And I click Create Account
Then I should see an error message prompting to fill in the required fields

Scenario: User completes Checkout
Given I have successfully created an Account
And I clicked Next Step
And I am on the Step#6 Checkout page
Then I should see a summary of the order
And I should see the total amount to be paid 
And I should see the calculation of the total amount