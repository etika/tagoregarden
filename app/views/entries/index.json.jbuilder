json.array!(@entries) do |entry|
  json.extract! entry, :id, :latitude, :longitude, :address, :city, :state, :country, :pincode, :other_details, :category_id, :owner_id
  json.url entry_url(entry, format: :json)
end
