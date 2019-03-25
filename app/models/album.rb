# == Schema Information
#
# Table name: albums
#
#  id          :bigint(8)        not null, primary key
#  artist_id   :integer
#  title       :string
#  album_cover :string
#  genre_id    :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Album < ApplicationRecord
  # attr_accessor :title
  validates :title, :artist_id, presence: true

  has_many :songs
  belongs_to :artist
  has_one_attached :album_cover

  # def intitialize
  #   @title = self.title
  # end
end
