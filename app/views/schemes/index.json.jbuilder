json.array!(@schemes) do |scheme|
  json.extract! scheme, :id, :entry_id,:category_id, :content, :from_date, :end_date
  json.url scheme_url(scheme, format: :json)
end
