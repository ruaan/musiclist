class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.integer :album_id
      t.string :songName
      t.string :songUrl

      t.timestamps
    end
  end
end
