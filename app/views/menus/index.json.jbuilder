json.array!(@menus) do |menu|
  json.extract! menu, :id, :name, :desc, :visible
  json.url menu_cat_url(menu, format: :json)
end
