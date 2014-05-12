json.array!(@musics) do |music|
  json.extract! music, :id, :Theme, :Title, :Artist, :Year, :Spotify_url
  json.url music_url(music, format: :json)
end
