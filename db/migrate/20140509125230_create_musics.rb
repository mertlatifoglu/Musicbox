class CreateMusics < ActiveRecord::Migration
  def change
    create_table :musics do |t|
      t.string :Theme
      t.string :Title
      t.string :Artist
      t.integer :Year
      t.string :Spotify_url

      t.timestamps
    end
  end
end
