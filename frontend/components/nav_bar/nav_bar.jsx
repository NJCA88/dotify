import React from 'react';
import CreatePlaylistContainer from '../CreatePlaylist/create_playlist_container'
// import CreatePlaylistComponent from '../CreatePlaylist/CreatePlaylistComponent';

class NavBarComponent extends React.Component {
  constructor(props) {
    super(props);
    this.state = {};
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleGoHome = this.handleGoHome.bind(this);
    this.handleGoLib = this.handleGoLib.bind(this);
    this.handleGoSearch = this.handleGoSearch.bind(this);
    this.openModal = this.openModal.bind(this)
    this.closeModal = this.closeModal.bind(this)
    this.goDevInfo = this.goDevInfo.bind(this)
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.logout().then(() => this.props.history.push('/splash'));
  }

  handleGoHome(e) {
    e.preventDefault();
    this.props.history.push('/home');
  }

  handleGoSearch(e) {
    e.preventDefault();
    this.props.history.push('/search');
  }

  handleGoLib(e) {
    e.preventDefault();
    this.props.history.push('/library');
  }
  goDevInfo(e) {
    e.preventDefault();
    this.props.history.push('/devInfo');
  }
  handleGoPlaylist(e, PlaylistID) {
    e.preventDefault();
    this.props.fetchPlaylist(PlaylistID)
    .then( ()=>
    this.props.history.push(`/playlists/${PlaylistID}`)
    )
  }

  openModal(){
    this.setState({modalIsOpen:true})
  }
  closeModal(){
    this.setState({modalIsOpen:false})
  }
  render() {
    const playlists = this.props.playlists.map((playlist) => {
      return (
        <div
          className='nav-playlist-group-playlist'
          onClick={(e) => this.handleGoPlaylist(e, playlist.id)}
        >
          {playlist.title}
        </div>
      );
    });
    return (
      <div className='nav-bar'>
        <div className='logo-with-name-white-small'>
          <img src='https://s3-us-west-1.amazonaws.com/dotify-song-dev/spotify-img.png' />
          <h1> Dotify </h1>
        </div>
        <ul>
          <li>
            <button onClick={this.handleGoSearch} className='nav-icon'>
              <img src='http://romanovrussia.com/wp-content/uploads/search-icon.png' />
              <p>Search</p>
            </button>
          </li>
          <li>
            <button onClick={this.handleGoHome} className='nav-icon'>
              <img src='https://mbtskoudsalg.com/images/home-icon-white-png-8.png' />
              <p>Home</p>
            </button>
          </li>

          <li>
            <button onClick={this.handleGoLib} className='nav-icon'>
              <img src='libraryImg.png' />
              <p>Your Library</p>
            </button>
          </li>

          <li />
          <li>
            <div className='nav-bar-playlist-container'>
              {/* <h1>PLAYLISTS</h1> */}
              <h3>PLAYLISTS</h3>
              <div className='navbar-playlist-item' onClick={this.openModal}>
                <h2 id='create-playlist-img'>+</h2>
                <h2> Create Playlist</h2>
              </div>
              <div className='nav-playlist-group'>{playlists}</div>
            </div>
          </li>
          <button
            onClick={this.handleSubmit}
            className='nav-icon'
            id='logout-button'
          >
            <p> Logout</p>
          </button>
          {/* <li id='nav-divider'/> */}
          <button className='nav-icon' id='chris-logo' onClick={this.goDevInfo}>
            <img src='chrisRound.png' />
            <p> Chris Atwood</p>
          </button>
        </ul>
        <CreatePlaylistContainer modalIsOpen={this.state.modalIsOpen} closeModal={this.closeModal}/>

      </div>
    );
  }
}
export default NavBarComponent;
