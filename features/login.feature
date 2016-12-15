Feature: Login

  Background:
    Given that I'm not loged in

   Scenario: Loging in a user
     Given I am on the "index" page
     And I click "Login"
     Then I should be on the "Sign in" page
