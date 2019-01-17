import React from 'react';
import ReactPlayer from 'react-player';


class AboutComponent extends React.Component {
    constructor(props) {
        super(props);

    }



    render() {

        return (
            <div className="about">
                <h1> About the Developer</h1>

                <div className = "aboutList">
                <p> PICTURE OF ME</p>
                <p>words words words about me</p>
                    <button >GitHub</button>
                    <button>LinkedIn</button>
                    <button>Portfolio Site</button>
                </div>
            </div>
        );
    }
}

export default AboutComponent;