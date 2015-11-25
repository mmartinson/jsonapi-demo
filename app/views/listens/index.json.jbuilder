json.array!(@listens) do |listen|
  json.extract! listen, :id, :album_id, :user_id
  json.url listen_url(listen, format: :json)
end
