Feature: As a restaurant Owner
  in order to change my menu
  I need to be able to edit information on my Restaurant page.

  Background:
    Given I am logged in as a restaurant owner
    And the "Awesome" restaurant exists

Scenario: I edit my restaurant
  Given I am on the restaurant page for "Awesome"
  And I click the link "Edit"
  Then I should be on the edit restaurant page for "Awesome"
