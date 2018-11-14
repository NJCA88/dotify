class Playlist < ApplicationRecord
  validates :user_id, :name, presence: true

  belongs_to :user  
  
  
  has_many :playlist_songs,
  foreign_key: :playlist_id
  
  has_many :songs,
  through: :playlist_songs

end
