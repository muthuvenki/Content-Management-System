json.array!(@cattabs) do |cattab|
  json.extract! cattab, :id, :name, :, :content, :
  json.url cattab_url(cattab, format: :json)
end
