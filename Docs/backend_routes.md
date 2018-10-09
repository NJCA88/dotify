- HTML
- GET / StaticPagesController

- API Endpoints
  - users
    - POST api/users - create new user
    - GET api/user/:userId  - user page
  - session
    - POST api/session  -login user
    - DELETE api/session - logout
  - songs
    - GET api/albums/:songId - display song page

  - playlists
    - GET api/playlists - display playlist index
    - GET api/playlists/:playlistId - display - playlist page
    - POST api/playlists/:playlistId - create new - playlist
    - PATCH api/playlists/:playlistId - edit playlist
    - DELETE api/playlists/:playlistId - delete playlist

  - albums
  - GET api/albums - show album index
  - GET api/albums/:albumId - show album page

  - genres
    - GET api/genres - show genre index
    - GET api/genre/:genreId - show individual genre page
