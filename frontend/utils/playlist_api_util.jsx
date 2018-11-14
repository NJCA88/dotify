export const getPlaylists = playlists => (
    $.ajax({
        method: "GET",
        url: "/api/playlists"
    })
);

// export const getAlbum = id => (
//     $.ajax({
//         method: "GET",
//         url: `/api/playlists/${id}`
//     })
// );
