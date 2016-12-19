Feature: Send message to more than one recipient

  Background:
    Given the following users exist
      | name      |
      | Test-User |
      | Belle     |
      | Beast     |
    And "Test-User" is logged in
    And I am on the "inbox" page
    And I click "Compose"

  Scenario:
    When I select "Belle" from recipients
    And I select "Beast" from recipients
    And I fill in "Subject" with "subject"
    And I fill in "Message" with "message to Belle and Beast"
    And I click "Send Message"
    Then I should see "Your message was successfully sent"
    When I click "Logout"
    Then I should see "Signed out successfully."
    Given "Belle" is logged in
    And I am on the "inbox" page
    When I click "View"
    And I fill in "message[body]" with "Replying with an awesome message"
    And I click "Reply"
    Then I should see "Your reply message was successfully sent!"
