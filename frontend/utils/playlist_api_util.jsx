export const getPlaylists = playlists => (
    $.ajax({
        method: "GET",
        url: "/api/playlists"
    })
);

export const getPlaylist = id => (
    $.ajax({
        method: "GET",
        url: `/api/playlists/${id}`
    })
);

export const createPlaylist = playlist => (
    $.ajax({
        url: 'api/playlists/',
        method: 'POST',
        data: { playlist }
    })
);

export const createPlaylistSong = (playlistSong) => (
    $.ajax({
        url: 'api/playlist_songs/',
        method: 'POST',
        data: { playlistSong }
    })
);
