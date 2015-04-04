json.array!(@subcats) do |subcat|
  json.extract! subcat, :id, :name, :desc, :visible
  json.url subcat_url(subcat, format: :json)
end
