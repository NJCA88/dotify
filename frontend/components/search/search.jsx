import React from 'react';

class SearchComponent extends React.Component{
    constructor(props){
        super(props)
        this.state = {value: "", searchResults: {}}

        this.submit = this.submit.bind(this)
        this.handleInputChange = this.handleInputChange.bind(this)
        this.handleGoAlbum = this.handleGoAlbum.bind(this)
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
                // console.log(jsonResponse);
                return jsonResponse;
            })
            .then(function (myJson) {
                // console.log(myJson);
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
        e.preventDefault();
        //UPDATE STORE HERE
        // debugger
        this.props.updateCollection(AlbumID);
        // console.log("IS THIS RIGHT? updating collection to be: ", collection, AlbumID);
        this.props.history.push(`/albums/${AlbumID}`);
    }
    handleGoAlbum(e, AlbumID) {
        e.preventDefault();
        this.props.history.push(`/albums/${AlbumID}`);
    }

    render(){
        let header = <div></div>
        if (this.state.searchResults.songs){
            header = <div className = "searchHeader"> Top Results</div>
        }
        let leadSong = <div className = "leadSong">NO DIV</div>;
        if (this.state.searchResults.songs ){
            // console.log(this.state)
             leadSong = 
                <div className="cover-and-info">
                    <img className="album-cover" src={this.state.searchResults.songs[0].art} />
                    <h1 className="album-title">{this.state.searchResults.songs[0].title}</h1>
                    <button className="play-button"
                    // onClick={e => {
                    //    this.updateMusic(e, { album: this.props.album, songs: this.props.songs }, this.props.songs[0]);
                    // }}
                    >
                    PLAY</button>
                </div>
        }



        let songList = <div> no songs yet </div>
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

        let albumList = <div>no albums</div>
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

        return(
            <div> 
                <div className="searchPage">
                <form onSubmit={this.submit}> 
                    <input className="searchInput" type="text" value={this.state.value} onChange={this.handleInputChange} ></input>
                </form>

                {header}

                <div className="searchResults">
                    {leadSong}
                    <div className ="songList">
                        {songList}
                    </div>
                    <div className = "albumList">
                        {albumList}
                    </div>
                </div>
                </div>
            </div>
        )
    }
}
export default SearchComponent;

// <button onClick={e => {
//     this.updateSongCollection(e, album, album.id);
// }}