Feature: Proposals Page Form

    # Tests for Proposals form including positive and negative cases
    # Covers submitting with required fields only, all fields, and missing required fields

    Scenario: Submit required fields only
        Given I am on the Proposals page
        When I type "<contact_person>" into the Contact Person field
        And I type "<email>" into the Email field
        And I select "<drop_off_date>" in Desired Drop Off Date(s)
        And I select "<proposal_date>" in Desired Proposal Date(s)
        And I pick "<arrival_time>" for Desired Arrival Time
        And I select "<private_meet>" in Private Up-Close Animal Meet and Greet
        And I click the Submit button
        Then I should see a confirmation message

            | contact_person | email                    | drop_off_date | proposal_date | arrival_time | private_meet |
            | Alex Johnson   | alex.johnson@example.com | 2025-10-10    | 2025-10-15    | 6:00 PM      | Yes          |
            | Morgan Lee     | morgan.lee@example.com   | 2025-11-01    | 2025-11-05    | 6:00 PM      | Yes          |

    Scenario: Submit all fields
        Given I am on the Proposals page
        When I type "<contact_person>" into the Contact Person field
        And I type "<email>" into the Email field
        And I select "<drop_off_date>" in Desired Drop Off Date(s)
        And I select "<proposal_date>" in Desired Proposal Date(s)
        And I pick "<arrival_time>" for Desired Arrival Time
        And I select "<private_meet>" in Private Up-Close Animal Meet and Greet
        And I type "<cell_phone>" into Cell Phone field
        And I type "<additional_questions>" into Additional Questions field
        And I click the Submit button
        Then I should see a confirmation message

            | contact_person | email                  | drop_off_date | proposal_date | arrival_time | private_meet | cell_phone   | additional_questions                     |
            | Morgan Lee     | morgan.lee@example.com | 2025-11-01    | 2025-11-05    | 6:00 PM      | Yes          | 555-123-4567 | Looking forward to a memorable proposal! |

    Scenario: Validation errors for missing or invalid fields
        Given I am on the Proposals page
        When I leave "<field>" empty or invalid
        And I fill all other required fields
        And I click the Submit button
        Then I should see "<error_message>"
        And all other entered values should remain in their fields

            | field                                  | error_message                        |
            | Contact Person                         | Contact Person is required           |
            | Email                                  | Email is required                    |
            | Desired Drop Off Date(s)               | Desired Drop Off Date(s) is required |
            | Desired Proposal Date(s)               | Desired Proposal Date(s) is required |
            | Desired Arrival Time                   | Desired Arrival Time is required     |
            | Private Up-Close Animal Meet and Greet | This field is required               |
            | Email (invalid)                        | Please enter a valid email address   |