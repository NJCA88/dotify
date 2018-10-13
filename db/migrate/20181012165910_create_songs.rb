class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :track
      t.integer :album_id

      t.timestamps
    end
  end
end
