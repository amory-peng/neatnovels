import React from 'react';

class Footer extends React.Component{
  constructor(props) {
    super(props);
  }

  componentWillReceiveProps(newProps) {
    console.log(newProps.location);
  }

  getLinkedInImg() {
    let img_url;
    if (this.props.location.pathname === '/books' ||
        this.props.location.pathname.slice(0,8) === '/books/s') {
      img_url = "../../assets/linkedin-white.png";
    } else {
      img_url = "../../assets/linkedin-black.png";
    }
    return img_url;
  }

  render() {
    const img_url = this.getLinkedInImg();
    return(
      <div className="footer">
        <a href="https://github.com/amory-peng/neatnovels">
          <img id="github" src="../../assets/github-mark.png"></img>
        </a>
        <a href="https://www.linkedin.com/in/amory-peng-6b2a8862?trk=nav_responsive_tab_profile">
          <img id="linked-in" src={img_url}></img>
        </a>
      </div>
    );
  }
}

export default Footer;
