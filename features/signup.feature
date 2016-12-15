Feature: User story

  Background:
    Given I am on the "sign up" page

  Scenario: Sign up to be a user
    When I fill in "Name" with "anna"
    And I fill in "Email" with "anna@msn.com"
    And I fill in "Password" with "password"
    And I fill in "Password confirmation" with "password"
    And I click "Create"
    Then I should see "Welcome! You have signed up successfully."

  Scenario: User puts no email
    When I fill in "Name" with "anna"
    And I fill in "Password" with "password"
    And I fill in "Password confirmation" with "password"
    And I click "Create"
    Then I should see "Email can't be blank"

  Scenario: User puts no password
    When I fill in "Name" with "anna"
    And I fill in "Email" with "anna@msn.com"
    And I fill in "Password confirmation" with "password"
    And I click "Create"
    Then I should see "Password can't be blank"

  Scenario: User puts no password confirmation
    When I fill in "Name" with "anna"
    And I fill in "Email" with "anna@msn.com"
    And I fill in "Password" with "password"
    And I click "Create"
    Then I should see "Password confirmation doesn't match Password"

  Scenario: User puts no name
    And I fill in "Email" with "anna@msn.com"
    And I fill in "Password" with "password"
    And I fill in "Password confirmation" with "password"
    And I click "Create"
    Then I should see "Name can't be blank"