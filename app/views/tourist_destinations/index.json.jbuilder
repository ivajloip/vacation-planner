json.array!(@tourist_destinations) do |tourist_destination|
  json.extract! tourist_destination, :id, :title, :description
  json.url tourist_destination_url(tourist_destination, format: :json)
end
