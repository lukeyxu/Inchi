json.array!(@lots) do |lot|
  json.extract! lot, :id, :title, :description, :status, :category
  json.url lot_url(lot, format: :json)
end
