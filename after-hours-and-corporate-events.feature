Feature: After-Hours and Corporate Rentals (AHCR page)

scenario: User enters their Host Name
    Given that I am in the After-Hours and Corporate Rentals page
    When I enter a Host name
    And leave remaining fields empty
    and press Submit
    Then the page should automatically scroll to the topmost empty field
    And the Host name entered should not be erased


Scenario: User enters an email
    Given that I am on the AHCR page
    When I enter a Host name
    And I enter an Email
    And leave remaining fields blank
    And press Submit
    Then the page should automatically scroll to the topmost empty field
    And the Host Name should not be erased
    And the Email should not be erased


Scenario: User omits the Contractors field
    Given that I am on the AHCR page
    When I fill out the entire form
    And I do not complete the Contractors section
    And press Submit
    Then the page will show a confirmation page
    And an Email will be sent to my provided Email Address


Scenario: User does not choose an Additional Event Options
    Given that I am on the AHCR page
    When I complete the form
    And I do not complete the Additional Event Options section
    And press Submit
    Then the page should automatically scroll to the topmost empty field
    And the filled-in sections should not be erased


Scenario: User does not enter any information in the form
    Given that I am on the AHCR page
    When I scroll to the bottom of the page
    And press Submit
    Then the page should automatically scroll to the top of the page


Scenario: User completes the form
    Given that I am on the AHCR page
    When I complete all required sections
    And press Submit
    Then the page will show a confirmation page
    And an email will be sent to my provided Email Address