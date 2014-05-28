class Country < ActiveRecord::Base
  validates_presence_of :display_name
  validates_presence_of :full_name
  validates_presence_of :code
  validates_presence_of :longitude
  validates_presence_of :latitude

  has_many :tourist_destinations
end
