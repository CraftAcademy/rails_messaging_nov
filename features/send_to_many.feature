Feature: Send message to more than one recipient

  Background:
    Given the following users exist
    | users     |
    | Test-User |
    | Belle     |
    | Beast     |
    And "Test-User" is logged in
    And show me the page
    And I am on the "inbox" page
    And I click "Compose"

  Scenario:
    When I select "Belle" from recipients
    And I select "Beast" from recipients
    And I fill in "Subject" with "subject"
    And I fill in "Message" with "message to Belle and Beast"
    And I click "Send Message"
    And I should see "Your message was successfully sent"
    And I click "Logout"
    And I should be on the "index" page
    And I should see "Signed out successfully."
    Given "Belle" is logged in
    And I am on the "inbox" page
    Then I should see "Test-User"
    And I should see "subject"
    And I should see "message to Belle and Beast"
    And I click "Logout"
    And I should be on the "index" page
    And I should see "Signed out successfully."
    Given "Beast" is logged in
    And I am on the "inbox" page
    Then I should see "Test-User"
    And I should see "subject"
    And I should see "message to Belle and Beast"