import React from 'react';
import Modal from 'react-modal';

// Modal.setAppElement("#root");

class NewPlaylistModal extends React.Component {
  createPlaylist() {
    //do stuff to send it to the backend
    this.props.createPlaylist({ name: this.state.playlistName });
    this.closeModal();
  }

  render = () => {
    <Modal
      className='create-playlist-modal'
      overlayClassName='Overlay'
      isOpen={this.props.modalIsOpen}
    >
      <div className='create-playlist-modal-content'>
        <button className='x-button' onClick={this.closeModal}>
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
    </Modal>;
  };
}

export default NewPlaylistModal;
