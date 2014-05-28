Feature: TouristDestination
  I want to be able to see information about some tourist destination that I 
  can visit, during my hodidays. I want to be able to search for such
  destination based on a number of criteria as distance from some othe place,
  time to arrive, type of activity, etc.

  Scenario: Create TouristDestination
    When I go to the new tourist destination page
    And I fill-in the 'tourist_destination_title' with 'My Title'
    And I fill-in the 'tourist_destination_description' with 'My description'
    And I click "Submit"
    And I go to the tourist destination list page
    Then I can see destination with title "My Title" in the list of destinations

  Scenario: Try to create TouristDestination without some required fields
    When I go to the new tourist destination page
    And I fill-in the 'tourist_destination_title' with 'My Title'
    And I click "Submit"
    Then I am on the create tourist destination page
    And I see an error message that contains "Description can't be blank"
