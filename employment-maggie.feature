Feature: Employment Opportunities Page – Application Form

  Scenario: View current job listings
    Given I am on the Employment Opportunities page
    When I look at the “Currently Looking For” section
    Then I should see at least one job listed
    And each job listing should include a title
    And a link to apply or more info

  Scenario: Successful form submission with valid inputs
    Given I am on the Employment Opportunities page
    And I fill in First with "John"
    And I fill in Last with "Doe"
    And I fill in Date with "2025-10-15"
    And I fill in Phone Number with "555-123-4567"
    And I fill in Email with "john.doe@example.com"
    And I select a Position of interest
    And I write a Cover Letter with some text
    And I upload a valid resume file (e.g. resume.pdf, size under limit)
    When I click Submit
    Then I should see a confirmation or thank you message indicating the application was received

  Scenario: Missing required fields triggers validation
    Given I am on the Employment Opportunities page
    And I leave First blank
    And I fill in Last with "Smith"
    And I fill in Date with a valid date
    And I fill in Phone Number
    And I fill in Email
    And I select a position
    And I upload a valid resume
    When I click Submit
    Then I should see a validation message for the First field saying it’s required

  Scenario: Invalid email format shows error
    Given I am on the Employment Opportunities page
    And I fill in First with "Jane"
    And I fill in Last with "Smith"
    And I fill in Date with "2025-11-01"
    And I fill in Phone Number with "555-987-6543"
    And I fill in Email with "janesmith(at)example"
    And I select a position
    And I upload a valid resume
    When I click Submit
    Then I should see a validation message about invalid email format

  Scenario: File upload limits enforced
    Given I am on the Employment Opportunities page
    And I fill in all the other required fields correctly
    And I attempt to upload a resume that is larger than 2 GB
    When I click Submit
    Then I should see a validation error about the file size limit

  Scenario: Resume file type validation
    Given I am on the Employment Opportunities page
    And I fill in all required fields
    And I upload a file with extension .exe
    When I click Submit
    Then I should see a message that the file type is not accepted

  Scenario: Partial submission (cover letter optional vs required?)
    Given I am on the Employment Opportunities page
    And I fill in all required fields except Cover Letter
    And cover letter is optional
    And I upload a valid resume
    When I click Submit
    Then the form should submit successfully

  Scenario: Reset or Clear form functionality (if applicable)
    Given I am on the Employment Opportunities page
    And I fill in multiple fields
    When I click a Reset or Clear button (if exists)
    Then all form fields should be cleared

  Scenario: Upload multiple resumes allowed
    Given I am on the Employment Opportunities page
    And I fill in all required fields
    And I upload 3 resume files each valid
    When I click Submit
    Then the application should be accepted

  Scenario: Upload more than allowed number of files
    Given I am on the Employment Opportunities page
    And I fill in all required fields
    And I attempt to upload 4 files
    When I click Submit
    Then I should see a validation message about the maximum number of files allowed

