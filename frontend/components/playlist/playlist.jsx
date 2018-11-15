import React from 'react';
import ReactPlayer from 'react-player';


class PlaylistShowComponent extends React.Component {
    constructor(props) {
        super(props);

        this.updateCurrentSong = this.updateCurrentSong.bind(this);
        this.updateMusic = this.updateMusic.bind(this);
    }

    componentDidMount() {
        //hard coded to get alumbum number 1 right now
        // console.log("Did we make it?");
        
        // console.log("Did we really just skip the debugger?");


        this.props.fetchPlaylist(this.props.match.params.playlistID);
    }



    updateSongCollection(collection) {
        this.props.updateCollection(collection);
        console.log("updating collection");
    }

    updateCurrentSong(song) {
        this.props.updateCurrentSong(song);
        console.log("updating Song");
    }

    updateMusic(e, collection, song) {
        e.preventDefault();
        this.updateCurrentSong(song);
        this.updateSongCollection(collection);
    }


    render() {
        console.log("into the render method")
        if (this.props.playlist === undefined){
            console.log("returning early out of the render")
            return <div>wrong</div>;
        }

        const songs = this.props.songs.map(song => {
            return (
                <div >
                    <li className="song">
                        <img className="play-icon" src="https://d2uvvge0uswb28.cloudfront.net/static/dist/v0/img/svg/icon-play.svg" />

                        <button className="music-note-button"
                            onClick={(e) => { this.updateMusic(e, { album: this.props.album, songs: this.props.songs }, song); }} >
                            <img src="https://d2uvvge0uswb28.cloudfront.net/static/dist/v0/img/svg/icon-play.svg" />
                        </button>
                        {song.title}
                    </li>
                </div>
            );
        }
        );

        console.log('songs are : ', songs)


        return (
            <div>
                <div className="album-show-component">
                    <div className="cover-and-info">
                        <img className="album-cover" src={this.props.playlist.playlist_cover} />

                        <h1 className="album-title">{this.props.playlist.name}</h1>

                        <button className="play-button">
                            play
                         </button>

                    </div>
                    <div className="song-list">
                        <ul >
                            {songs}
                        </ul>
                    </div>
                </div>
                <p>Testing playlist show page</p>

            </div>
        );
    }
}
export default PlaylistShowComponent;