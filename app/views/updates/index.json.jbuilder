json.array!(@updates) do |update|
  json.extract! update, :id, :topic, :details
  json.url update_url(update, format: :json)
end
