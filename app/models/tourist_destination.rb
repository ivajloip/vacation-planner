class TouristDestination < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :country_id
  validates_associated :country

  belongs_to :country, dependent: :destroy
end
