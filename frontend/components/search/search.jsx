import React from 'react';

class SearchComponent extends React.Component{
    constructor(props){
        super(props)
        this.submit = this.submit.bind(this)
        this.handleChange = this.handleChange.bind(this)
        this.state = {value: ""}
    }

    handleChange(event){
        // console.log("chaning: ", this.state.value)
        this.setState({ value: event.target.value });    
    }

    submit(e, value){
            console.log("submitting!");
            console.log("value is: ", this.state.value)
            fetch("/api/searches", {
            method: "POST",
                body: JSON.stringify({search: this.state.value}), // data can be `string` or {object}!
                headers: {
                    'Content-Type': 'application/json'
                }
            })
                .then(function (response) {
                    return response.json();
                })
                .then(function (myJson) {
                    console.log("THINGS: ", JSON.stringify(myJson));
                });
    }
    render(){
        return(
            <div> 
                <div className="searchPage">
                <form onSubmit={this.submit}> 
                    <input className="searchInput" type="text" value={this.state.value} onChange={this.handleChange} ></input>
                </form>
                </div>
            </div>
        )
    }
}
export default SearchComponent;

// <button onClick={e => {
//     this.updateSongCollection(e, album, album.id);
// }}