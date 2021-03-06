json.array!(@albums) do |album|
  json.extract! album, :id, :title, :image_url, :release_date, :country
  json.url album_url(album, format: :json)
end
