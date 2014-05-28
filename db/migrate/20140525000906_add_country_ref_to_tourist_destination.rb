class AddCountryRefToTouristDestination < ActiveRecord::Migration
  def change
    add_reference :tourist_destinations, :country, index: true
  end
end
