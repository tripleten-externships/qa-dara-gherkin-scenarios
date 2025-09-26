Feature: Stuffed Animal Sleepover Page Form

Scenario: User submits the form (All information)
 Given I am on the stuffed animal sleepover page form 
 When I enter a full name in the contact person field
 And I enter a valid phone number in the cell phone field
 And I enter a valid email address in the email field
 And I enter a name in the stuffed animals name field
 And I select a souvenir in the choice of souvenir section
 And I select the choose your date option
 And I select a response to the adding on an additional stuffy section
 And I enter a string in the any additional questions field
 And I click the Submit button
 Then I should see the success message
 And the information should appear in the database or an email should be sent with the information in it


Scenario: User enters no fields and submits form
Given I am on the stuffed animal sleepover page form 
When I enter no input in any fields
And I click the submit button
Then I should see the validation message on the contact person field

Scenario Outline: User enters or selects only one field
 Given I am on the stuffed animal sleepover page form
 When I enter any characters in one field or selection <Fill>
 And I click the submit button
 Then I should see the validation message on the preceding or subsequent empty field(s) <empty>

 Examples:
     |              Fill              |     Empty      |
     | contact person                 | cell phone     |
     | cell phone                     | contact person |
     | Email                          | contact person |
     | stuffed animals name           | contact person |
     | choice of souvenir             | contact person |
     | choose your date               | contact person |
     | adding on a additional stuffy* | contact person |
     | any additional questions       | contact person |


Scenario: User enters only contact person
 Given I am on the stuffed animal sleepover page form
 When I enter a valid name in the contact person field
 And I click the Submit button
 Then I should see the validation message on the cell phone field
 And I should see the contact person retained in the contact person field

Scenario: User enters only cell phone
 Given I am on the stuffed animal sleepover page form
 When I enter a valid cell phone in the cell phone field
 And I click the Submit button
 Then I should see the validation message on the contact person field
 And I should see the cell phone number retained in the cell phone field

Scenario: User enters only email
 Given I am on the stuffed animal sleepover page form
 When I enter a valid email address in the email field
 And I click the Submit button
 Then I should see the validation message on the contact person field
 And I should see the email address retained in the email field

Scenario: User enters only stuffed animal's name
 Given I am on the stuffed animal sleepover page form
 When I enter a valid name in the stuffed animal's name field
 And I click the Submit button
 Then I should see the validation message on the contact person field
 And I should see the stuffed animal's name retained in the stuffed animal's name field

Scenario: User selects only choice of souvenir
 Given I am on the stuffed animal sleepover page form
 When I select a souvenir in the choice of souvenir section
 And I click the Submit button
 Then I should see the validation message on the contact person field
 And I should see the souvenir selection retained in the choice of souvenir section

Scenario: User selects only chose your date:
Given I am on the stuffed animal sleepover page form
 When I select the email me when you announce future dates! option, in the chose your date: section
 And I click the Submit button
 Then I should see the validation message on the contact person field
 And I should see the email me when you announce future dates! option, retained in the chose your date: section

Scenario: User selects only adding on an additional stuffy*
 Given I am on the stuffed animal sleepover page form
 When I select a response in the adding on an additional stuffy* section
 And I click the Submit button
 Then I should see the validation message on the contact person field
 And I should see the response selected retained in the adding on an additional stuffy* section

Scenario: User enters only any additional questions field
 Given I am on the stuffed animal sleepover page form
 When I enter a valid string in the any additional questions field
 And I click the Submit button
 Then I should see the validation message on the contact person field
 And I should see the string retained in the any additional questions field

Scenario Outline: User submits form with invalid inputs
 Given I am on the stuffed animal sleepover page form
 When I enter an "Invalid Input" in any field <Invalid input>
 And I click the submit button
 Then I should see the validation message on the corresponding field <Error message>

 Examples:
     | Invalid Input             |        Error Message            |
     | Major47^&.                | Invalid Contact person name     |
     | 7774.                     | Invalid Cell phone format       |
     | @gmail.com.joey23         | Invalid email address format    |
     | !@#$%.                    | Invalid Stuffed Animal Name     |

Scenario: User submits the form after a session timeout
    Given I am on the stuffed animal sleepover page form
    And my session has timed out
    When I fill in all required fields with valid data
    And I click the submit button
    Then I should see the error message indicating "Session expired, please reload the page"
    And the form should not be submitted

