json.extract! user, :id, :name, :images, :created_at, :updated_at
json.url user_url(user, format: :json)
json.images do
  json.array!(user.images) do |image|
    json.id image.id
    json.url url_for(image)
  end
end
