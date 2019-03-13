import React from 'react';

class SearchComponent extends React.Component{
    constructor(props){
        super(props)
        this.state = {value: "", searchResults: {}}

        this.submit = this.submit.bind(this)
        this.handleChange = this.handleChange.bind(this)
    }

    handleChange(event){
        // console.log("chaning: ", this.state.value)
        this.setState({ value: event.target.value });    
    }
    submit(e, value) {
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
                            this.updateMusic(e, { album: this.props.album, songs: this.props.songs }, song);
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

                            <div>
                                <button id={song.title} className="add-to-playlist-button-hidden" onClick={this.openModal}>
                                    Add to Playlist
                </button>
                            </div>
                        </div>
                    </li>
                </div>;
            }
            );
        }

        return(
            <div> 
                <div className="searchPage">
                <form onSubmit={this.submit}> 
                    <input className="searchInput" type="text" value={this.state.value} onChange={this.handleChange} ></input>
                </form>

                {header}

                <div className="searchResults">
                {leadSong}
                <div className ="songList">
                {songList}
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