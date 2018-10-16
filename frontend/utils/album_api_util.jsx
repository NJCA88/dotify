export const getAlbums = albums => (
  $.ajax({
    method: "GET",
    url: "/api/albums"
  })
);
