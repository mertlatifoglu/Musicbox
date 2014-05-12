RAILS_ENV = 'development'
require File.expand_path('../environment', __FILE__)

f = File.open("songs.txt", "r")
f.each_line do |line|
	@temp = line.split(",")
	theme = @temp[0]
	title = @temp[1]
	artist = @temp[2]
	year = @temp[3]
	link = @temp[4]

	@song = Music.new
	@song.Theme = theme
	@song.Title = title
	@song.Artist = artist
	@song.Year = year
	@song.Spotify_url = link
	@song.save

end

f.close

