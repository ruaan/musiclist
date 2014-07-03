class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :artistName
      t.string :albumCover
      t.string :albumName
      t.string :genre
      t.string :releaseDate

      t.timestamps
    end
  end
end
