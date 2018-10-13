export const getSongs = songs => (
  $.ajax({
    method: "GET",
    url: "/api/songs"
  })
);
