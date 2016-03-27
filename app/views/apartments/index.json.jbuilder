json.array!(@apartments) do |apartment|
  json.extract! apartment, :id, :title, :description, :lookforroomate, :sublease, :bedroom, :contact
  json.url apartment_url(apartment, format: :json)
end
