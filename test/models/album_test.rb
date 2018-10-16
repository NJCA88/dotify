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

require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
