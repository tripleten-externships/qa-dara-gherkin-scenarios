Feature: Donation Request Page Form
    # Tests for Donation Request form including positive and negative cases
    # Covers submitting with required fields only, all fields, and invalid/missing fields

    Scenario: User submits the form with all fields
        Given I am on the Donation Requests page
        When I enter a name in the Name of Organization field
        And I enter a valid address in the Address field
        And I enter a valid address in the Address 2 field
        And I enter a valid city in the City field
        And I enter a valid state in the State field
        And I enter a valid zip code in the Zip Code field
        And I enter/select a valid country in the Country field
        And I enter a valid contact in the Contact field
        And I enter a valid email in the Email field
        And I enter a valid phone number in the Phone field
        And I enter a date in the Date of Request field
        And I enter a date in the Date of Fundraiser field
        And I enter a valid tax ID# in the Tax ID# field
        And I enter a valid website in the Website field
        And I enter a mission statement in the Mission Statement field
        And I enter a purpose of donation in the Purpose of Donation field
        And I select “choose file” to attach a valid copy of your organization's 501(c)3 document.
        And I click the Submit button
        Then I should see the success message.

                        | Field Name              | Example Input                  |
            |--------------------------|--------------------------------|
            | Name of Organization     | Helping Hands Foundation      |
            | Address                  | 123 Main St                   |
            | Address 2                | Suite 200                     |
            | City                     | Orlando                       |
            | State                    | Florida                       |
            | Zip Code                 | 32801                         |
            | Country                  | United States                 |
            | Contact Name             | John Doe                      |
            | Email                    | johndoe@email.com             |
            | Phone Number             | 555-123-4567                  |
            | Date of Request          | 09/22/2025                    |
            | Date of Fundraiser       | 10/15/2025                    |
            | Tax ID#                  | 12-3456789                    |
            | Website                  | https://www.helpinghands.org  |
            | Mission Statement        | Our mission is to support...  |
            | Purpose of Donation      | Fundraising Gala              |
            | File Upload (501(c)(3))  | valid501c3.pdf                |


    Scenario: Fail to submit form with all fields missing
        Given I am on the Donation Requests page
        When I leave all fields blank
        And I click the Submit button
        Then I should see an error message indicating required fields are missing

    Scenario: Fail to submit form with invalid email format
        Given I am on the Donation Requests page
        When I enter "invalid-email" in the Email field
        And I complete the rest of the form with valid information
        And I click the Submit button
        Then I should see an error message for the Email field

    Scenario: User enters only Name of Organization
        Given I am on the Donation Request page
        When I enter a name in the Name of Organization field
        And I click the Submit button
        Then I should see the page scroll up and a validation message on the Address edit box
        And I should see the Name of Organization retained in the Name of Organization edit box

    Scenario: User enters only Address info
        Given I am on the Donation Request page
        When I enter an address in the Address field
        And I enter a city in the City edit field
        And I enter a state in the State field box
        And I enter a zip/postal code in the zip code field box
        And I enter select the country in the country field
        And I click the Submit button
        Then I should see a validation message indicating required fields must be filled in
        And I should see all data retained in the Address info fields

              | Field Name              | Example Input                  |
            |--------------------------|--------------------------------|
            | Address                  | 123 Main St                   |
            | Address 2                | Suite 200                     |
            | City                     | Orlando                       |
            | State                    | Florida                       |
            | Zip Code                 | 32801                         |
            | Country                  | United States                 |

    Scenario: User enters invalid phone number format
        Given I am on the Donation Requests page
        When I enter a name in the Name of Organization field
        And I enter all valid address data under the Address fields
        And I enter a valid contact in the Contact field
        And I enter a valid email address in the Email field
        And I enter "123" or “ABC” in the Phone field (invalid format)
        And i select a date in the Date of Request field
        And I select a date in the Date of Fundraiser
        And I enter a valid tax ID in the Tax ID# field
        And I enter a valid website URL in the Website field
        And I enter a mission statement in the MIssion Statement field
        And I enter a purpose of donation in the Purpose of Donation field
        And I attach a copy of 501(c)3 documentation
        And I click the Submit button
        Then I should see an error message indicating the phone number format is invalid