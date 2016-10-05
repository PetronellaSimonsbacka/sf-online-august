Feature: As a restaurant Owner
  in order to change my menu
  I need to be able to edit information on my Restaurant page.

  Background:
    Given I am logged in as a restaurant owner
    And the "Awesome" restaurant exists

  Scenario: I edit my restaurant
    Given I am on the restaurant page for "Awesome"
    And I click the link "Edit"
    When I fill in "Name" with "tacos"
    And I click the "Submit" button
    Then I should be on the show page for "tacos"
    And I should see "tacos"

  Scenario: I messed up the edit
    Given I am on the restaurant page for "Awesome"
    And I click the link "Edit"
    And I fill in "Name" with ""
    And I click the "Submit" button
    Then I should see "Name can't be blank"

  Scenario: I should be the only one who can edit my restaurant
    And the following restaurants exists
      | name | description | town | owner |
      | McD  | Nice food   | Home | Anna  |
    Given the following owners exist:
      | name | email          |
      | Kiki | kiki@owner.com |
    When I logged in as "Kiki"
    And I visit the restaurant page for "McD"
    And I click on the link "Edit"
    Then I should see "You are not authorized to access this page."
