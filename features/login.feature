Feature: Login

  Background:
    Given that there is a user named "Test-User" with an email of "email@random.com"

   Scenario: Logging in a user
     Given I am on the "Log in" page
     When I fill in "Email" with "email@random.com"
     And I fill in "Password" with "password"
     Then I click "Log in"
     Then I should see "Signed in successfully."


  Scenario: Wrong email
    Given I am on the "Log in" page
    When I fill in "Email" with "email@rando.com"
    And I fill in "Password" with "password"
    Then I click "Log in"
    Then I should see "Invalid email or password"

    Scenario: Wrong password
      Given I am on the "Log in" page
      When I fill in "Email" with "email@random.com"
      And I fill in "Password" with "passwo"
      Then I click "Log in"
      Then I should see "Invalid email or password"
