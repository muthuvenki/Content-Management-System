json.array!(@category) do |cat|
  json.extract! cat, :id,:name, :desc, :image
  json.url cat_subcat_url(cat, format: :json)
end
