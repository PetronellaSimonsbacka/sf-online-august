Feature: As a restaurant Owner
  in order to sell food
  I need to be able to display information on my Restaurant page.

Background:
  Given I am logged in as a restaurant owner

Scenario: I create a restaurant
  Given I am on the "create restaurant" page
  When I fill in "Name" with "Awesome Restaurant"
  And I fill in "Description" with "Totally edible food"
  And I fill in "Address" with "24 Restaurant Street"
  And I click the "Create" button
  Then I should be on the restaurant page for "Awesome Restaurant"
  And I should see "Awesome Restaurant"
