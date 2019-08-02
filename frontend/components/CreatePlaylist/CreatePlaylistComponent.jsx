import React from 'react'
import Modal from 'react-modal';

class CreatePlaylistComponent extends React.Component{
    constructor(props){
        super(props);
        this.createPlaylist = this.createPlaylist.bind(this)
        this.state={playlistName: ''}
        // this.createPlaylist = this.createPlaylist.bind(this)
    }
    // componentDidMount(){
    // }
    updatePlaylistName(e) {
        this.setState({ playlistName: e.target.value });
    }

    createPlaylist() {
        //do stuff to send it to the backend
        this.props.createPlaylist({ name: this.state.playlistName })
            .then(()=>this.props.fetchPlaylists())
                .then(()=>this.closeModal() )
    }
    render(){
        return(
            <Modal
                className='create-playlist-modal'
                overlayClassName='Overlay'
                isOpen={this.props.modalIsOpen}
            >
                <div className='create-playlist-modal-content'>
                    <button className='x-button' onClick={this.props.closeModal} >
                        X
            </button>{' '}
                    <br />
                    Create new Playlist <br />
                    <input
                        onChange={(e) => {
                            this.updatePlaylistName(e);
                        }}
                        type='text'
                        value={this.state.playlistName}
                        placeholder='Start Typing...'
                    />
                    <button className='create-button' onClick={this.createPlaylist}>
                        CREATE
            </button>
                </div>
            </Modal>
        )
    }
}

export default CreatePlaylistComponent