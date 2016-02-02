json.array!(@testitems) do |testitem|
  json.extract! testitem, :id, :name, :description
  json.url testitem_url(testitem, format: :json)
end
