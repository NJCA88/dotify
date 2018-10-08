HTML
GET / StaticPagesController

API Endpoints
  users
    POST api/users - create new user
    GET api/user/:userId  - user page
  session
    POST api/session  -login user
    DELETE api/session - logout
  songs
    GET api/albums/:songId - display song page

  playlists
    GET api/playlists - display playlist index
    GET api/playlists/:playlistId - display playlist page
    POST api/playlists/:playlistId - create new playlist
    PATCH api/playlists/:playlistId - edit playlist
    DELETE api/playlists/:playlistId - delete playlist

  albums
  GET api/albums - show album index
  GET api/albums/:albumId - show album page

  genres
    GET api/genres - show genre index
    GET api/genre/:genreId - show individual genre page




HTML
GET / StaticPagesController#root
API Endpoints
users
GET /api/users - returns the user information of displayed chirps and for the User Search feature
POST /api/users - sign up
session
POST /api/session - log in
DELETE /api/session - log out
chirps
GET /api/chirps - returns relevant chirps (filtered by data/params)
GET /api/chirps/:id - returns chirp
POST /api/chirps - creates a chirp
PATCH /api/chirps/:id - edit a chirp
DELETE /api/chirps/:id - remove a chirp
likes
POST /api/chirps/:chirp_id/likes - like a chirp
DELETE /api/chirps/:chirp_id/likes - unlike a chirp
