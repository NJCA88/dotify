class CreatePlaylists < ActiveRecord::Migration[5.2]
  def change
    create_table :playlists do |t|
      t.integer :user_id
      t.string :name


      t.timestamps
    end
    add_index :playlists, :user_id
  end
end
