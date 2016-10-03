Feature: As a restaurant Owner
  in order to sell food
  I need to be able to display information on my Restaurant page.

Background:
  Given I am logged in as a restaurant owner

Scenario: I create a restaurant
  Given I am on the "create restaurant" page
  When I fill in:
    | element     | content              |
    | Name        | Awesome restaurant   |
    | Description | Good food            |
    | Street      | Holtermansgatan 17d  |
    | Zipcode     | 41235                |
    | Town        | Göteborg             |
  And I click the "Create" button
#  Then I should be on the restaurant page for "Awesome Restaurant"
  And I should see "here is the show"
  And I should see "Awesome restaurant"
