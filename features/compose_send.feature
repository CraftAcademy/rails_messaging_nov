Feature: Compose message and send
  As a User
  I can compose a message and send it

  Background:
    Given that there is a user named "Test-User"
    And "Test-User" is logged in
    And that there is a user named "Belle"
    And I am on the "inbox" page
#    And show me the page
    And I click "Compose"

  Scenario:
    When I select "Belle" from recipients
