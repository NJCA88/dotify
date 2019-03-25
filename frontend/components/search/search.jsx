import React from 'react';

class SearchComponent extends React.Component{
    constructor(props){
        super(props)
        this.state = {value: "", searchResults: {}}

        this.submit = this.submit.bind(this)
        this.handleInputChange = this.handleInputChange.bind(this)
        this.handleGoAlbum = this.handleGoAlbum.bind(this)
        this.updateCurrentSong = this.updateCurrentSong.bind(this)
        this.updateMusic = this.updateMusic.bind(this)
    }

    handleInputChange(event){
        // console.log("chaning: ", this.state.value)
        this.setState({ value: event.target.value });    
    }
    submit(e) {
        console.log("submitting!");
        console.log("value is: ", this.state.value)
        fetch("/api/searches", {
            method: "POST",
            body: JSON.stringify({ search: this.state.value }), // data can be `string` or {object}!
            headers: {
                'Content-Type': 'application/json'
            }
        })
            .then(function (response) {
                let jsonResponse = response.json();
                return jsonResponse;
            })
            .then(function (myJson) {
                console.log("JSON IS: ", myJson)
                this.setState({ searchResults: myJson }, ()=> console.log("state is: ", this.state))
            }.bind(this));
    }

    updateCurrentSong(e, song) {
        // debugger
        console.log("song to update: ", song)
        this.props.updateCurrentSong(song);
        console.log("updating Song");
    }
    updateSongCollection(e, collection, AlbumID) {
        event.preventDefault();
        //UPDATE STORE HERE
        this.props.updateCollection(AlbumID);
        // console.log("IS THIS RIGHT? updating collection to be: ", collection, AlbumID);
        this.props.history.push(`/albums/${AlbumID}`);
    }
    handleGoAlbum(e, AlbumID) {
        e.preventDefault();
        this.props.history.push(`/albums/${AlbumID}`);
    }

    updateMusic(e, collection, song) {
        e.preventDefault();
        // debugger
        console.log("updating song to be: ", song)
        this.updateCurrentSong(event, song);
        this.updateSongCollection(collection);
    }

    render(){
        let searchResults, searchResultsBlank
        let header = <div></div>
        if (this.state.searchResults.songs){
            if (this.state.searchResults.songs.length === 0){
                console.log("we don't need that other shit")
                console.log("songs length is: ", this.state.searchResults.songs.length)
                // return (
                //     <div>
                //         <div className="searchPage">
                //             <form onSubmit={this.submit}>
                //                 <input className="searchInput" type="text" value={this.state.value} onChange={this.handleInputChange} ></input>
                //             </form>

                //             {header}
                //             <h2> No matches found</h2>

                //         </div>
                        
                //     </div>
                // )
                searchResultsBlank = <div>no search results</div>
            }
        }
        
        if (this.state.searchResults.songs){
            header = <div className = "searchHeader"> </div>
        }
        let leadSong = <div className = "leadSong"></div>;
        if (this.state.searchResults.songs && this.state.searchResults.songs[0] ){
            // console.log(this.state)
             leadSong = 
                <div className="cover-and-info">
                    <img className="album-cover" src={this.state.searchResults.songs[0].art} />
                    <h1 className="album-title">{this.state.searchResults.songs[0].title}</h1>
                    <button className="play-button"
                    onClick={e => {
                       this.updateMusic(e, { album: this.state.searchResults.songs[0].album, songs: this.state.searchResults.songs }, this.state.searchResults.songs[0]);
                    }}
                    >
                    PLAY</button>
                </div>
        }



        let songList = <div></div>
        if (this.state.searchResults.songs){
            songList = this.state.searchResults.songs.map(song => {
                return <div>
                    <li className="song">
                        <img className="play-icon" src="https://d2uvvge0uswb28.cloudfront.net/static/dist/v0/img/svg/icon-play.svg" />

                        <button className="music-note-button" onClick={e => {
                            this.updateCurrentSong(e, { title: song.title, track: song.track });
                        }}>
                            <div className="note-play-icon-group">
                                <img className="small-play" src="https://d2uvvge0uswb28.cloudfront.net/static/dist/v0/img/svg/icon-play.svg" />
                                <img className="music-note" src="https://www.clipartsfree.net/vector/small/79345-white-music-note-icon.png" />
                            </div>
                        </button>
                        {song.title}
                        <div className="dropdown-click">
                            <button className="ellipsis" onClick={e => this.dropdownAppear(song)}>
                                <img className="dotdotdot-icon" src="https://s3-us-west-1.amazonaws.com/dotify-song-dev/icons/white+dot.png" />
                                <img className="dotdotdot-icon" src="https://s3-us-west-1.amazonaws.com/dotify-song-dev/icons/white+dot.png" />
                                <img className="dotdotdot-icon" src="https://s3-us-west-1.amazonaws.com/dotify-song-dev/icons/white+dot.png" />
                            </button>

                            {/* <div>
                                <button id={song.title} className="add-to-playlist-button-hidden" onClick={this.openModal}>
                                    Add to Playlist
                                </button>
                            </div> */}
                        </div>
                    </li>
                </div>;
            }
            );
        }

        let albumList = <div></div>
        if (this.state.searchResults.albums){
            albumList = this.state.searchResults.albums.map(album =>{
                return <div className="album" onHover={this.hoverEffects}>
                    
                        <button onClick={e => {
                            console.log("ALBUM ID IS: ", album.id)
                            this.updateSongCollection(e, album, album.id);
                        }} className="album-index-album">
                            <div className="album-images">
                                <img className="demo-image" src={album.album_cover} />
                                <img className="play-modal" src="https://mbtskoudsalg.com/images/white-play-button-png-5.png"></img>
                            </div>
                        </button>

                        <button onClick={e => {
                            this.handleGoAlbum(e, album.id);
                        }} className="album-index-title">
                            {album.title}
                        </button>
                    </div>;
                });
        
        }
        if (this.state.searchResults.songs){
        searchResults = 
            <div className="searchResults">
                <div className="search-head-and-songs" id="dog">
                    {leadSong}
                    <div className="song-list">
                        <h2>Songs</h2>
                        {songList}
                    </div>
                </div>
                    <div className="albumList">
                        <h2>Albums</h2>
                        {albumList}
                </div>
            </div>
        }

           if (this.state.searchResults.songs){
               if (this.state.searchResults.songs.length === 0){

                searchResults = <div>No matches found</div> 
                }
           }
        return(
            <div> 
                <div className="searchPage">
                <form onSubmit={this.submit}> 
                    <input className="searchInput" type="text" value={this.state.value} onChange={this.handleInputChange} ></input>
                </form>

                {header}

                {searchResults}
                </div>
            </div>
        )
    }
}
export default SearchComponent;
