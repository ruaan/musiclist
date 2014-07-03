json.array!(@albums) do |album|
  json.extract! album, :id, :artistName, :albumCover, :albumName, :genre, :releaseDate
  json.url album_url(album, format: :json)
end
