json.array!(@owners) do |owner|
  json.extract! owner, :id, :owner_name, :phone_number
  json.url owner_url(owner, format: :json)
end
