json.array!(@classfieds) do |classfied|
  json.extract! classfied, :id, :title, :description, :category, :phone, :email, :wechat
  json.url classfied_url(classfied, format: :json)
end
