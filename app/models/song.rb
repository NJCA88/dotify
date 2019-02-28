# == Schema Information
#
# Table name: songs
#
#  id         :bigint(8)        not null, primary key
#  title      :string
#  track      :string
#  album_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Song < ApplicationRecord
  validates :title, :album_id, presence: true

  has_one_attached :track
  belongs_to :album
  belongs_to :artist
  has_many :playlistSongs
end
