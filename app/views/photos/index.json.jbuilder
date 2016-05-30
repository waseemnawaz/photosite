json.array!(@photos) do |photo|
  json.extract! photo, :id, :title, :description, :image_url
  json.url photo_url(photo, format: :json)
end
