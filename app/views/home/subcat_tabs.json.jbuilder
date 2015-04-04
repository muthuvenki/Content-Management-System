json.array!(@tabs) do |cat|
  json.extract! cat, :name,:content 
end
