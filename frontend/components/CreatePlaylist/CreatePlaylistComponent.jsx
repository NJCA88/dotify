import React from 'react'
import Modal from 'react-modal';

class CreatePlaylistComponent extends React.Component{
    constructor(props){
        super(props)
    }
    componentDidMount(){
        console.log('mounted')
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