json.array!(@songs) do |song|
  json.extract! song, :id, :album_id, :listen_id
  json.url song_url(song, format: :json)
end
