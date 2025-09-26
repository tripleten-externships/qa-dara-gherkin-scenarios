Feature: Daytime Event Reservation

Scenario: Users submits the form 
Given I am on the daytime event reservations formWhen I enter a host name in the Host Name field
And I enter a email in the Email field
And I enter event type/theme in the Event Type/Theme field
And I enter a phone number in the Phone field
And I enter a valid event date(s) in the Event Date(s) field
And I enter a valid start time in the Start Time field
And I enter a valid end time in the End Time field
And I enter an expected number of guests in the Expected Number of Guests field
And I enter a total invited guest in the Total Invited Guest field
And I enter a catering place in the Catering field
And I enter a phone number in the Phone field
And I click the Submit button
Then I should see the success message

Scenario: Users only enter Host Name
Given I am on the daytime event reservations form
When I enter a host name in the Host Name edit box
And I click the Submit button
Then I should see the Please fill out this field validation message on the email box

Scenario: Users enter Host Name, Email
Given I am on the daytime event reservations form
When I enter a host name in the Host Name edit box
And I enter a email in the Email field
And I click the Submit button
Then I should see the Please fill out this field validation message on the Event Type/Theme field

Scenario: Users enter Host Name, Email, Event Type/Theme, Phone
Given I am on the daytime event reservations form
When I enter a host name in the Host Name edit box
And I enter a email in the Email field
And I enter a phone number in the Phone field
And I click the Submit button
Then I should see the Please fill out this field validation message on the Event Date(s)

Scenario: Users enter Host Name, Email, Event Type/Theme, Phone, Event Date(s)
Given I am on the daytime event reservations formWhen I enter a host name in the Host Name edit box
And I enter a email in the Email field
And I enter a phone number in the Phone field
And I enter a valid event date(s) in the Event Date(s) field
And I click the Submit button
Then I should see the Please fill out this field validation message on the Start Time field

Scenario: Users enter Host Name, Email, Event Type/Theme, Phone, Event Date(s), Start time
Given I am on the daytime event reservations form
When I enter a host name in the Host Name edit box
And I enter a email in the Email field
And I enter a phone number in the Phone field
And I enter a valid event date(s) in the Event Date(s) field
And I enter a valid start time in the Start Time field
And I click the Submit button
Then I should see the Please fill out this field validation message on the End Time field

Scenario: Users enter Host Name, Email, Event Type/Theme, Phone, Event Date(s), Start time, End Time
Given I am on the daytime event reservations form
When I enter a host name in the Host Name edit box
And I enter a email in the Email field
And I enter a phone number in the Phone field
And I enter a valid event date(s) in the Event Date(s) field
And I enter a valid start time in the Start Time field
And I enter a valid end time in the End Time field
And I click the Submit button
Then I should see the Please fill out this field validation message on the Expected Number of Guests field

Scenario: Users enter Host Name, Email, Event Type/Theme, Phone, Event Date(s), Start time, End Time, Expected Number of Guests
Given I am on the daytime event reservations form
When I enter a host name in the Host Name edit box
And I enter a email in the Email field
And I enter a phone number in the Phone field
And I enter a valid event date(s) in the Event Date(s) field
And I enter a valid start time in the Start Time field
And I enter a valid end time in the End Time field
And I enter a number of Expected Number of Guests in the Expected Number of Guests field
And I click the Submit button
Then I should see the Please fill out this field validation message on the Total Invited Guests field

Scenario: Users enter Host Name, Email, Event Type/Theme, Phone, Event Date(s), Start time, End Time, Expected Number of Guests, Total Invited Guests
Given I am on the daytime event reservations form
When I enter a host name in the Host Name edit box
And I enter a email in the Email field
And I enter a phone number in the Phone field
And I enter a valid event date(s) in the Event Date(s) field
And I enter a valid start time in the Start Time field
And I enter a valid end time in the End Time field
And I enter a number of expected Number of Guests in the Expected Number of Guests field
And I enter a number of Total Invited Guests in the Total Invited Guests field
And I click the Submit button
Then I should see the success message

Scenario: Users left Catering and Phone field blank
Given I am on the daytime event reservations form
When I did not enter a catering name in the Catering field
And I did not enter a phone number in the Phone field
And I enter all the other information Host Name, Email, Event Type/Theme, Phone, Event Date(s), Start time, End Time, Expected Number of Guests, Total Invited Guests fields
And I click the Submit button
Then I should see the success message

Scenario: Users input an extremely long string of host name
Given I am on the daytime event reservations form
When I enter an extremely long string of host name in the Host Name field, for example: enter Joe 1000 times
And I enter all the other information Host Name, Email, Event Type/Theme, Phone, Event Date(s), Start time, End Time, Expected Number of Guests, Total Invited Guests fields
And I click the Submit button
Then the form will mostly likely accept this submission without issues because there are no max characters limit stated on the elements

Scenario: Users enter an incorrect email address
Given I am on the daytime event reservations form
When I enter an incorrect email address, for example: example@@email.com
And I enter all the other information Host Name, Email, Event Type/Theme, Phone, Event Date(s), Start time, End Time, Expected Number of Guests, Total Invited Guests fields
And I click the Submit button
Then the form will most likely accept this submission without issues because there are no constraints on what this field accepts.

Scenario: Users enter non numeric number
Given I am on the daytime event reservations form
When I enter an non numeric number on the phone field, for example: one-three-five-zero-four-six-nine
And I enter all the other information Host Name, Email, Event Type/Theme, Phone, Event Date(s), Start time, End Time, Expected Number of Guests, Total Invited Guests fields correctly
And I click the Submit button
Then the form should be given an error to fill in the correct phone number.

Scenario: Users enter a date in the past
Given I am on the daytime event reservations form
When I enter a past date, for example: 09/01/2024
And I enter all the other information Host Name, Email, Event Type/Theme, Phone, Event Date(s), Start time, End Time, Expected Number of Guests, Total Invited Guests fields correctly
And I click the Submit button
Then the form should be given an error to fill in the correct date as its already past.

Scenario: Users enter the hour blank but with only minutes
Given I am on the daytime event reservations form
When I enter  the minutes and left the hour blank on the start time field, for example: :00AM
And I enter all the other information Host Name, Email, Event Type/Theme, Phone, Event Date(s), Start time, End Time, Expected Number of Guests, Total Invited Guests fields correctly
And I click the Submit button
Then the form should be given an error to fill in the correct start time. 

Scenario: Users enter the hour and mins blank
Given I am on the daytime event reservations form
When I left the hour and mins blank on the end time field, for example: : AM
And I enter all the other information Host Name, Email, Event Type/Theme, Phone, Event Date(s), Start time, End Time, Expected Number of Guests, Total Invited Guests fields correctly
And I click the Submit button
Then the form should be given an error to fill in the correct end time.

Scenario: Users enter a negative number of guests
Given I am on the daytime event reservations form
When I enter an negative number of guests on the Expected Number of Guests field, for example: -1
And I enter all the other information Host Name, Email, Event Type/Theme, Phone, Event Date(s), Start time, End Time, Expected Number of Guests, Total Invited Guests fields correctly
And I click the submit button
Then the form should be given an error to fill out the correct number of guest.

Scenario: Users enter a alpha letters of guests
Given I am on the daytime event reservations form
When I enter alpha letters of guests on the Expected Number of Guests field, for example: abc
And I enter all the other information Host Name, Email, Event Type/Theme, Phone, Event Date(s), Start time, End Time, Expected Number of Guests, Total Invited Guests fields correctly
And I click the submit button
Then the form should be given an error to fill out the correct number of guest.

Scenario: Users enter a alpha letters for phone number
Given I am on the daytime event reservations form
When I enter alpha letters for phone number on the phone field, for example: abc-def-ghik
And I enter all the other information Host Name, Email, Event Type/Theme, Phone, Event Date(s), Start time, End Time, Expected Number of Guests, Total Invited Guests fields correctly
And I click the submit button
Then the form should be given an error to fill out the correct phone number.