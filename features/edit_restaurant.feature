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
  When I fill in "Name" with "tacos"
  And I click the "Update" button
  Then I should see "The restaurant information has been updated"
  And I should see:
    | name    | description | street             | zipcode | town     |
    | Tacos   | Yummy       | Holtermansgatan 1d | 41129   | Göteborg |
