
Schema for Dotify

# `Song`

| Col Name   |      Data Type      |  Details |
|----------|:-------------:|------:|
| id       |  integer      | not null, indexed
| title    |    string   | not null,
| track    | string        | not null,
| genre_id | integer | not null, indexed, foreign_key
| album_id | integer | not null, indexed, foreign_key

-Associations:
  - belongs_to :genre
  - belongs_to :album
  - has_many :playlists


  # `Artist`

  | Col Name   |      Data Type      |  Details |
  |----------|:-------------:|------:|
  | id       |  integer      | not null, indexed
  | title    |    string   | not null,

  -Associations:
    - has_many :songs through albums
    - has_many :albums

  # `User`

  | Col Name   |      Data Type      |  details |
  |----------|:-------------:|------:|
  | id       |  integer          |not null, indexed
  | username    |    string         | not null,
  | password_digest    | string        |   not null,
  | session_token | integer         | not null
  | album_id | integer           |  not null, indexed, foreign_key

  -Associations:
    - has_many :playlists



  # `playlist` (joins table)

  | Col Name   |      Data Type      |  details |
  |----------|:-------------:|------:|
  | id       |  integer              |not null, indexed
  | user_id   |    string         | not null,
  | title    | string      |   not null,
  | album_cover | integer         | not null, foreign_key through :songs
  | album_id | integer           |  not null, indexed, foreign_key

  -Associations:
    - belongs_to :user
    - belongs_to :album
    - has_many :songs



  <!-- # playlist

  | Col Name   |      Data Type      |  details |
  |----------|:-------------:|------:|
  | id       |  integer              |not null, indexed
  | user_id   |    string         | not null,
  | title    | string      |   not null,
  | album_cover | integer         | not null, foreign_key through :songs
  | album_id | integer           |  not null, indexed, foreign_key -->

  # `Album`

  | Col Name   |      Data Type      |  details |
  |----------|:-------------:|------:|
  | id       |  integer              |not null, indexed
  | artist_id   |    integer         | not null, indexed
  | title    | string      |   not null,
  | album_cover | text         | not null,

  -Associations:
    - belongs_to :genre
    - has_many :songs



Optional:

# `Genre`

| Col Name   |      Data Type      |  details |
|----------|:-------------:|------:|
| id       |  integer              |not null, indexed
| name   |    integer         | not null,

-Associations
  - has_many: :songs,
  - has_many: :albums
