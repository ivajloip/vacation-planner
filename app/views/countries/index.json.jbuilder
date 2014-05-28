json.array!(@countries) do |country|
  json.extract! country, :id, :display_name, :full_name, :code, :longitude, :latitude
  json.url country_url(country, format: :json)
end
