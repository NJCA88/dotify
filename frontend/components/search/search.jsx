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
        let leadSong = <div className = "leadSong">NO DIV</div>;
        if (this.state.searchResults.songs ){
            console.log(this.state)
            // debugger
             leadSong = 
            <div className = "leadSong">

                <div className="cover-and-info">

                <img className="album-cover" src={this.state.searchResults.songs[0].art} /> 

                     <h1 className="album-title">      {this.state.searchResults.songs[0].title}</h1>

                {/* <h1 className="album-title">  my title here</h1> */}

 
                 </div> 
            </div>
        }

        return(
            <div> 
                <div className="searchPage">
                <form onSubmit={this.submit}> 
                    <input className="searchInput" type="text" value={this.state.value} onChange={this.handleChange} ></input>
                </form>

                <div className="searchResults">
                {leadSong}

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