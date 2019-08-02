import React from 'react';
import ReactPlayer from 'react-player';

class DevInfoComponent extends React.Component {
    constructor(props){
        super(props)
        this.goHome = this.goHome.bind(this)
    }
    goPortfolio(){
        let url = 'https://fervent-chandrasekhar-26dff0.netlify.com/'
        window.open(url, '_blank');
    }
    goHome(){
        this.props.history.push('./home')
    }
    render(){
        return <div className='dev-info-container'>
            <dev className='devinfo-block'>
                <img src="chris.jpg" />
                <h1> Chris Atwood</h1>
                <p>I am a full stack Software Developer with experience in React, Redux, Rails, Node, AWS, Heroku, Git, Postgres, and a few other things.</p>
                <button onClick={this.goPortfolio}>VIEW PORTFOLIO</button>
                <button onClick={this.goHome}>HOME</button>
                <button>HELP</button>
                <button>LOGOUT</button>

            </dev>
        </div>
    }
}

export default DevInfoComponent