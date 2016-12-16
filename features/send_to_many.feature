Feature: Send message to more than one recipient

  Background:
    Given that there is a user named "Test-User"
    And "Test-User" is logged in
    And that there is a user named "Belle"
    And that there is a user named "Beast"
    And I am on the "inbox" page
    And I click "Compose"

  Scenario:
    When I select "Belle" from recipients
    And I select "Beast" from recipients
    And I fill in "Subject" with "subject"
    And I fill in "Message" with "message to Belle and Beast"
    When I click "Send Message"
    Then I should see "Your message was successfully sent"