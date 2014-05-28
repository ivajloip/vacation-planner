FactoryGirl.define do
  factory :country do
    display_name "Bulgaria"
    full_name "Republic of Bulgaria"
    code "BG"
    longitude "25.25"
    latitude "42.66667"
  end

  factory :tourist_destination do
    title "My title"
    description "My description"
    country
  end
end
