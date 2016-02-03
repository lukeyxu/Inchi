json.array!(@testlots) do |testlot|
  json.extract! testlot, :id, :name, :description, :status
  json.url testlot_url(testlot, format: :json)
end
