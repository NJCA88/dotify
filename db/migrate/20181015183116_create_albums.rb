class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.integer :artist_id
      t.string :title
      t.string :album_cover
      t.string :genre_id

      t.timestamps
    end
    add_index :albums, :id, unique: true

  end
end
