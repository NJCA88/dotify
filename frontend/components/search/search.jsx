import React from 'react';

class SearchComponent extends React.Component{
    constructor(props){
        super(props)
        this.submit = this.submit.bind(this)
    }

    submit(){
              console.log("submitting!");
              fetch("/api/searches", {
                method: "POST",
                  body: JSON.stringify("hi there!!!"), // data can be `string` or {object}!
              })
                  .then(function (response) {
                      return response.json();
                  })
                  .then(function (myJson) {
                      console.log("THINGS: ", JSON.stringify(myJson));
                  });

            //   console.log("did anything happen?");

              // fetch('http://example.com/movies.json')
              //     .then(function (response) {
              //         return response.json();
              //     })
              //     .then(function (myJson) {
              //         console.log(JSON.stringify(myJson));
              //     });
            }
    render(){
        return(
            <div> 
                <div className="searchPage">
                <form onSubmit={this.submit}> 
                    <input className="searchInput" type="text" ></input>
                </form>
                </div>
            </div>
        )
    }
}
export default SearchComponent;