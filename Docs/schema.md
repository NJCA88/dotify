theoretical Schema for Spotify clone

Table Song:
  id
  title
  track #the actual music
  album_id
  genre_id

  belongs_to :album

Table Artist
  id
  title
  has_many :albums
  has_many :songs

Table User
  id
  username string
  password_digest string
  session_token string

  has_many playlists

Table Playlist
  id
  user_id
  title string
  album_cover 

  belongs_to :user
  has_many :songs

Table Album
  id
  title
  artist
  genre_id

  has_many :songs

Optional:

Table Genre
  id
  name
  has_many albums
  has_many songs
