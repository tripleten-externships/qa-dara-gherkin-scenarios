Feature: Contact Us page form

Scenario: User clicks Submit without entering information
Given I am on the Contact Us form
When I click the Submit button without entering any information
Then I should see the Please fill in this field validation on the First Name edit box


