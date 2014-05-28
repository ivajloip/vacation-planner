Feature: Country
  I want to be able to administer the countries that can be used for creating
  touristic destinations. In order to be useful a record for a country should
  contain information about the commonly used name, the official name, the code
  and the location of the contry.

  Scenario: Create TouristDestination
    When I go to the new country page
    And I fill-in the 'country_display_name' with 'My country'
    And I fill-in the 'country_full_name' with 'My country full name'
    And I fill-in the 'country_code' with 'code'
    And I fill-in the 'country_longitude' with '1.23456'
    And I fill-in the 'country_latitude' with '12.34567'
    And I click "Submit"
    And I go to the countries list page
    Then I can see country with name "My country" in the list of countries
