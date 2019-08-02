import React from 'react';
import ReactPlayer from 'react-player';


class PlaylistShowComponent extends React.Component {
    constructor(props) {
        super(props);

        this.updateCurrentSong = this.updateCurrentSong.bind(this);
        this.updateMusic = this.updateMusic.bind(this);
        this.testFetch = this.testFetch.bind(this)
    }

    componentDidMount() {
        // debugger
        console.log('updating')
        this.props.fetchPlaylist(this.props.match.params.playlistID);
    }
    componentDidUpdate(prevProps){
        console.log(prevProps.history.location.pathname)
        console.log(this.props.history.location.pathname)
        if (prevProps.history.location.pathname !== this.props.history.location.pathname){
            console.log('were doing the thing')
            this.props.fetchPlaylist(this.props.match.params.playlistID);
        }
    }
    testFetch(){
        // this works as expected, so issue is I'm not calling this fetch every time I go to a differnet
        // playlist route, coming FROM a playlsit.
        console.log('fetching')
        this.props.fetchPlaylist(this.props.match.params.playlistID);

    }

    updateSongCollection(collection) {
        this.props.updateCollection(collection);
    }

    updateCurrentSong(song) {
        this.props.updateCurrentSong(song);
    }

    updateMusic(e, collection, song) {
        e.preventDefault();
        this.updateCurrentSong(song);
        this.updateSongCollection(collection);
    }


    render() {
        if (this.props.playlist === undefined){
            return <div>wrong</div>;
        }

        const songs = this.props.songs.map(song => {
            return (
                <div >
                    <li className="song" key={song.id}>
                        <img className="play-icon" src="https://d2uvvge0uswb28.cloudfront.net/static/dist/v0/img/svg/icon-play.svg" />

                        <button className="music-note-button"
                            onClick={(e) => { this.updateMusic(e, { album: this.props.playlist, songs: this.props.songs }, song); }} >
                            <img src="https://d2uvvge0uswb28.cloudfront.net/static/dist/v0/img/svg/icon-play.svg" />
                        </button>
                        {song.title}
                    </li>
                </div>
            );
        }
        );

        return (
            <div>
                <div className="album-show-component">
                    <div className="cover-and-info">
                        <img className="album-cover" src={this.props.playlist.playlist_cover} />

                        <h1 className="album-title">{this.props.playlist.title}</h1>

                        <button className="play-button"
                            onClick={e => {
                                this.updateMusic(e, { album: this.props.playlist, songs: this.props.songs }, this.props.songs[0]);
                            }}>play</button>

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