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
    Then I can see destination with title "My Title" in the list of destinations
