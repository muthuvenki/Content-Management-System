json.array!(@sub_cat) do |cat|
  json.extract! cat, :id,:name, :desc, :image
  json.url subcat_tabs_url(cat, format: :json)
end
