Feature: Compose message and send
  As a User
  I can compose a message and send it

  Background:
    Given I am logged in as User
    And There is another user named "Test-User" in the system
    And I have clicked the "Compose" button

  Scenario:
    Given I am on the "Compose Message" page
    Then I should see a label for "Recipients"
    And I should see a corresponding text field with id of "conversation_recipients_chosen"
    And I should see a label for "Subject"
    And I should see a corresponding text field with id of "conversation_subject"
    And I should see a label for "Message"
    And I should see a corresponding text area with value of id of "conversation_body"
    And I should see a submit button with value of "Send Message"

#  Scenario:
#    When I click the "Recipients" text field
#    And I should be able to chooose a recipient
#    And I sh