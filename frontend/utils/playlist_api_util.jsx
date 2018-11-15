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
