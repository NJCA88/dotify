#Incomplete

{
  entities: {
    song: {
      1: {
        id: 1,
        url: "ActiveStorageSomethingorOther",
        authorId: 05,
        title: "whiplash"
        Album: "Whiplash motion picture soundtrack"
        Album_art_url: "ActiveStorageOtherThing"
      }
    },
    playlist: {
      11: {
        id: 11,
        username: "blue_macaw",
        authoredChirpIds: [1, 3],
        likedChirpIds: [1],

      },
      25: {
        id: 25,
        username: "blue_toucan",
        authoredChirpIds: [2],
        likedChirpIds: [1, 3],
        imgUrl: "https://cdn.pixabay.com/photo/2015/10/01/16/43/toucan-967334_960_720.jpg"
      }
    }
  },
  ui: {
    loading: true/false
  },
  errors: {
    login: ["Incorrect username/password combination"],
    chirpForm: ["Chirp body cannot be blank"],
  },
  session: { currentUserId: 15 }
}
