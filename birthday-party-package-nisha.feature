Feature: Birthday Party Package Event Booking 

Scenario: User chooses "Book a  Party" option
Given I am on the Select a Package page
When I click on the dropdown 
And I choose Book a Party option
Then I should see the "Birthday Party Package" option displayed

Scenario: User chooses "Birthday Party Package" option
Given I am on the "Birthday Party Package" option displayed page
When I click on the Read More sublink/ anywhere on the clickable container
Then I should see the "Birthday Party Package" option getting expanded
And "Select Package" button is enabled

Scenario: User navigated to Pick a Date page
Given I am on the "Birthday Party Package" expanded page
When I click on the "Select Package" button
Then I should be navigated to the Pick a Date page

Scenario: User Picks a Date
Given I am on the Pick a Date page
When I select a date not too close to the current date
Then I should be able to see the "Clownfish Party Room"

Scenario: User selects a time
Given I am on the Pick a Date page
When I select a time 
Then the "Next Step" button should appear and be enabled
And I should see a message "Clownfish Party Room 11:15 am reservation added" for your selected time.

Scenario: User navigates to the "Select Quantity" page
Given I am on the "Pick a Date" page
When I click on the "Next Step" button at the bottom of the page
Then I should be navigated to the "Select Quantity" page
And I should see the option to select the guests

Scenario: User selects the quantity by adding the guests
Given I am on the "Select Quantity" page
When I click on the + symbol to add the guests
Then I should see the "Next Step" button appear and be enabled
And I should see the Total Price: $350.00
And I should see the quantity keeps increasing under "Spots Left" option

Scenario: User selects the quantity by removing the guests
Given I am on the "Select Quantity" page
When I click on the - symbol to remove the guests
Then I should see the "Spots Left" option getting reduced 

Scenario Outline: User adds party add-ons to cart
Given The user is booking an event
And has selected a package
And has selected a date
When the user clicks Add on the <item> card
Then the Add Item dialog box displays
When the user clicks Add Item without changing the quantity
And click Add Item
Then the dialog box closes
And the grand total increments by <amount>
Examples
| item | amount |
| pizza | 22.00 |
| drinks | 4.00 |
|party favors | 4.00 |
|Birthday Party Additional Hour in Room |100.00 |
|Additional Birthday Child | 30.00 |
|Mermaid Encounter | 125.00 |
|Birthday 3 Animal Encounter | 150.00 |
|Birthday one Animal Encounter | 4.00 |
|Member Virtual Reality | 7.00 |
|Stingray Feeding | 5.00 |

Scenario : User clicks on the Terms and Conditions link
Given I'm on the Customize event page
When I click on the Terms and Conditions link
Then I should see the "Terma and Conditions" modal appear
And I should be able to close the modal

Scenario : User clicks the checkbox under the Terms and Conditions
Given I'm on the Customize event page
When I add the products
And I check the checkbox under Terms and Conditions
Then I should see the "Next Step" buttom appear enabled
And I should see the Total Price


Scenario : Navigate to the Finalize Event page
Given I'm on the Customize Event page
When I check the checkbox under Terms and Conditions provided the items are added
Then I should see the "Next Step" buttom appear enabled
And I should see the Total Price
Then I click the "Next Step" button
And I should navigate to the Finalize Event page

Scenario : User adds more time 
Given I'm on the Cutomize Event page
When I run out of time while adding the products
Then I should be able to extend the time by clicking "More Time?" link
And I should be able to click on "+Add 5 Minutes" button to incrase the time
And I should be able to close the modal

Scenario : User must be navigated to the Finalize Event page and should be prompted with Account Preferences to choose
Given I'm on the Cutomize event page
When I click on the "Next Step" button
Then I should be navigated to the Finalize Event page with the modal asking you to choose the Account Preferences

Scenario : User chooses Login from the Account Preferences modal
Given I'm on the Finalize Event page
When I click on the "Login" button
Then I should be prompted to enter the login credentials on the login form

Scenario : User Logins to the Event Portal
Given I'm on the Login form of the Finalize Event page
When I enter the "Email Address" and "Password" fields
Then I should be able to login to the Event Portal 

Scenario : User clicks a "Login" button without entering "Email Address" 
Given I'm on the Login form of the Finalize Event page
When I enter "Password" field the having the "Email Address" field empty
Then I should be able to see the validation message "Email address field is required."

Scenario : User clicks a "Login" button without entering "Password" 
Given I'm on the Login form of the Finalize Event page
When I enter the "Email Address" having the "Password" field empty
Then I should be able to see the validation message "Password field is required.."

Scenario : User clicks a "Login" button without entering information
Given I'm on the Login form of the Finalize Event page
When I click on the "Login" button without entering any information
Then I should see "Email address field is required." and "Password field is required.." validation error message

Scenario : User clicks "Forgot Password" link
Given I'm on the Login form of the Finalize Event page
When I click on the  "Forgot Password" link 
And I should be able to enter the Email Address 
And I click "Send Instructions" button
Then I should be able to change the Password

Scenario : User clicks "Continue" button from the Account Preferences modal
Given I'm on the Finalize Event page
When I click on the "Continue" button
Then I should see the form to create an account for Event Portal

Scenario: User submits the form to create an account for Event Portal
Given I am on the Given I'm on the Login form of the Finalize Event page
When I enter an valid email address in in the "Email Address" field
And I enter the valid phone number in the "Phone" field
And I enter a name in the "First Name" field
And I enter a name in the" Last Name" field
And I enter a zip code in the "Zip Code" field
And I enter a name in the "What is the birthday child's name?" field
And I enter a age in the "How old is the birthday child turning?" field
And I select a party theme from the dropdown to the "Select a party theme" field
And I select from the dropdown to the "Are you a current member of the aquarium?" field
And I select a drink from the dropdown to the "Drink Choice #1 " field
And I select a drink from the dropdown to the "Drink Choice #2 " field
And I enter a string in the "Notes" field
And I enter a valid password meeting the password criteria in the "Password" field
And I confirm password in the "Confirm Password" field
And I click the "Crate Account" button
Then I should see the success message
And the information should appear in the database or an email should be sent with the information in it

Scenario: User clicks Create Account button without entering information
Given I am on the Finalize event Page
When I click the Create Account button without entering any information
Then I should see "The field Email Address is required and needs to be a valid value." message on the top right corner

Scenario: User clicks Create Account only by entering the Email Address
Given I am on the Finalize event Page
When I enter the Email Address
And I click the Create Account button
Then I should see "The field Phone is required and needs to be a valid value." message on the top right corner

Scenario: User clicks Create Account only by entering data in the "Email Address" field
Given I am on the Finalize event Page
When I enter only the "Email  Address" field having all other fields empty
And I click the Create Account button
Then I should see "The field Phone is required and needs to be a valid value." message on the top right corner

Scenario: User clicks Create Account missing data in some of the fields
Given I am on the Finalize event Page
When I enter a valid email address in the "Email Address" field
And I enter a valid phone number in the "Phone" field
And I click the Create Account button
Then I should see "The field First Name is required and needs to be a valid value." message on the top right corner

Scenario: User clicks Create Account missing data in some of the fields
Given I am on the Finalize event Page
When I enter a valid email address in the "Email Address" field
And I enter a valid phone number in the "Phone" field
And I enter a name  in the "First Name" field
And I click the Create Account button
Then I should see "The field Last Name is required and needs to be a valid value.." message on the top right corner

Scenario: User clicks Create Account missing data in some of the fields
Given I am on the Finalize event Page
When I enter a valid email address in the "Email Address" field
And I enter a valid phone number in the "Phone" field
And I enter a name  in the "First Name" field
And I enter a name  in the "Last Name" field
And I click the Create Account button
Then I should see "The field Zip Code is required and needs to be a valid value." message on the top right corner

Scenario: User clicks Create Account missing data in some of the fields
Given I am on the Finalize event Page
When I enter a valid email address in the "Email Address" field
And I enter a valid phone number in the "Phone" field
And I enter a name  in the "First Name" field
And I enter a name  in the "Last Name" field
And I enter a zip code in the "Zip Code" field
And I click the Create Account button
Then I should see "The field What is the birthday child's name? is required and needs to be a valid value."" message on the top right corner

Scenario: User clicks Create Account missing data in some of the fields
Given I am on the Finalize event Page
When I enter a valid email address in the "Email Address" field
And I enter a valid phone number in the "Phone" field
And I enter a name  in the "First Name" field
And I enter a name  in the "Last Name" field
And I enter a zip code in the "Zip Code" field
And I enter a child name in the "What is the birthday child's name?" field
And I click the Create Account button
Then I should see "The field How old is the birthday child turning? is required and needs to be a valid value." message on the top right corner

Scenario: User clicks Create Account missing data in some of the fields
Given I am on the Finalize event Page
When I enter a valid email address in the "Email Address" field
And I enter a valid phone number in the "Phone" field
And I enter a name  in the "First Name" field
And I enter a name  in the "Last Name" field
And I enter a zip code in the "Zip Code" field
And I enter a child name in the "What is the birthday child's name?" field
And I enter a  age in the "How old is the birthday child turning?" field
And I click the Create Account button
Then I should see "The field Select a party theme is required and needs to be a valid value." message on the top right corner

Scenario: User clicks Create Account missing data in some of the fields
Given I am on the Finalize event Page
When I enter a valid email address in the "Email Address" field
And I enter a valid phone number in the "Phone" field
And I enter a name  in the "First Name" field
And I enter a name  in the "Last Name" field
And I enter a zip code in the "Zip Code" field
And I enter a child name in the "What is the birthday child's name?" field
And I enter a  age in the "How old is the birthday child turning?" field
And I enter a party theme in the "Select a party theme" field
And I click the Create Account button
Then I should see "The field Are you a current member of the aquarium? is required and needs to be a valid value." message on the top right corner

Scenario: User clicks Create Account missing data in some of the fields
Given I am on the Finalize event Page
When I enter a valid email address in the "Email Address" field
And I enter a valid phone number in the "Phone" field
And I enter a name  in the "First Name" field
And I enter a name  in the "Last Name" field
And I enter a zip code in the "Zip Code" field
And I enter a child name in the "What is the birthday child's name?" field
And I enter a  age in the "How old is the birthday child turning?" field
And I enter a party theme in the "Select a party theme" field
And I enter the membership status in the "Are you a current member of the aquarium? " field
And I click the Create Account button
Then I should see "The field Drink Choice #1 is required and needs to be a valid value." message on the top right corner

Scenario: User clicks Create Account missing data in some of the fields
Given I am on the Finalize event Page
When I enter a valid email address in the "Email Address" field
And I enter a valid phone number in the "Phone" field
And I enter a name  in the "First Name" field
And I enter a name  in the "Last Name" field
And I enter a zip code in the "Zip Code" field
And I enter a child name in the "What is the birthday child's name?" field
And I enter a  age in the "How old is the birthday child turning?" field
And I enter a party theme in the "Select a party theme" field
And I enter the membership status in the "Are you a current member of the aquarium? " field
And I enter the drink choice in the "Drink Choice #1" field
And I click the Create Account button
Then I should see "The field Drink Choice #2 is required and needs to be a valid value." message on the top right corner

Scenario: User clicks Create Account missing data in some of the fields
Given I am on the Finalize event Page
When I enter a valid email address in the "Email Address" field
And I enter a valid phone number in the "Phone" field
And I enter a name  in the "First Name" field
And I enter a name  in the "Last Name" field
And I enter a zip code in the "Zip Code" field
And I enter a child name in the "What is the birthday child's name?" field
And I enter a  age in the "How old is the birthday child turning?" field
And I enter a party theme in the "Select a party theme" field
And I enter the membership status in the "Are you a current member of the aquarium? " field
And I enter the drink choice in the "Drink Choice #1" field
And I enter the drink choice in the "Drink Choice #2" field
And I click the Create Account button
Then I should see "Make sure your password fits the required criteria." message on the top right corner

Scenario: User clicks Create Account missing data in "Confirm Password" field
Given I am on the Finalize event Page
When I enter a valid email address in the "Email Address" field
And I enter a valid phone number in the "Phone" field
And I enter a name  in the "First Name" field
And I enter a name  in the "Last Name" field
And I enter a zip code in the "Zip Code" field
And I enter a child name in the "What is the birthday child's name?" field
And I enter a  age in the "How old is the birthday child turning?" field
And I enter a party theme in the "Select a party theme" field
And I enter the membership status in the "Are you a current member of the aquarium? " field
And I enter the drink choice in the "Drink Choice #1" field
And I enter the drink choice in the "Drink Choice #2" field
And I enter the password in the "Password" field
And I click the Create Account button
Then I should see "Make sure your password fits the required criteria." message on the top right corner
