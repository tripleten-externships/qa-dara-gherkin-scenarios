Feature: Scouting Page


Scenario: User submits with only required fields filled
	Given I am on the Scouting page
	When I enter text in the Contact Person field
	And I enter a valid cell phone number in the Cell Phone field
	And I enter a valid email address in the Email field
	And I fill in Address, City, State, Zip Code
	And I select an Attendee Age Group
	And I enter one Desired Trip Date
	And I enter a Desired Arrival Time
	And I enter a Desired Departure Time
	And I select No for Lunch at the aquarium
	And I click the Submit button
	Then I should see the success message
	And the booking request should be stored in the database or an email should be sent

Scenario: User submits with all fields filled
	Given I am on the Scouting page
	When I enter text in the Contact Person field
	And I enter a valid cell phone number in the Cell Phone field
	And I enter a valid email address in the Email field
	And I enter the Organization
	And I fill in Address, Address Line 2, City, State, Zip Code
	And I select an Attendee Age Group
	And I enter two Desired Trip Date(s)
	And I enter a Desired Arrival Time
	And I enter a Desired Departure Time
	And I select Yes for Lunch at the aquarium
	And I enter a Desired Lunch Time
	And I enter visitor counts for Adults, Children, and Aides/Nurses
	And I select optional program add-ons
	And I enter text in the Additional Questions field
	And I click the Submit button
	Then I should see the success message
	And the booking request should be stored in the database or an email should be sent

Scenario Outline: User submits with missing required field
	Given I am on the Scouting page
	When I leave the <field> field empty
	And I fill out all other required fields
	And I click the Submit button
	Then I should see the validation message on the <field> field

	Examples:
	| field                  | value |
	| Contact Person         | John |
	| Cell Phone             | 123-456-7890 |
	| Email                  | example123@gmail.com
	| Address                | 123 Example St |
	| City                   | Anytown |
	| State                  | New York
	| Zip Code               | 12345 |
	| Attendee Age Group     | 18-30 |
	| Desired Trip Date      | October 1,2025 and November 1, 2025 |
	| Desired Arrival Time   | 11:30AM |
	| Desired Departure Time | 3:30PM |
	| Lunch option           | No |

Scenario: User selects Lunch Yes but leaves Lunch Time empty
	Given I am on the Scouting page
	When I select Yes for Lunch at the aquarium
	And I leave the Desired Lunch Time field empty
	And I fill out all other required fields
	And I click the Submit button
	Then I should see the validation message on the Desired Lunch Time field

Scenario: User submits with invalid email
	Given I am on the Scouting page
	When I enter "not-an-email" in the Email field
	And I fill out all other required fields
	And I click the Submit button
	Then I should see the validation message on the Email field

Scenario: User submits with invalid phone number
	Given I am on the Scouting page
	When I enter "123" in the Cell Phone field
	And I fill out all other required fields
	And I click the Submit button
	Then I should see the validation message on the Cell Phone field
