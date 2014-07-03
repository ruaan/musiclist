json.array!(@songs) do |song|
  json.extract! song, :id, :album_id, :songName, :songUrl
  json.url song_url(song, format: :json)
end
