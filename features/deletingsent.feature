Feature: As a visitor,
  in order to have a nice mailbox,
  I would like to delete sent emails.

  Background:
    Given the following users exist:
      | name      | email            | password |
      | Test-User | email@random.com | password |
      | User1     | user1@random.com | password |

  Scenario: Deleting a sent message
    Given "Test-User" is logged in
    When "Test-User" sends a message to "User1"
    And I am on the "sent" page
    And I click "View"
    Then I click "Move to trash"
