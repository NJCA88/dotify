export const getAlbums = albums => (
  $.ajax({
    method: "GET",
    url: "/api/albums"
  })
);

export const getAlbum = id => (
  $.ajax({
    method: "GET",
    url: `/api/albums/${id}`
  })
);
