import React from 'react';

class Footer extends React.Component{
  constructor(props) {
    super(props);
  }

  getLinkedInImg() {
    let imgUrl;
    if (this.props.location.pathname === '/books' ||
        this.props.location.pathname.slice(0,8) === '/books/s' ||
        this.props.location.pathname === '/') {
      imgUrl = "../../assets/linkedin-white.png";
    } else {
      imgUrl = "../../assets/linkedin-black.png";
    }
    return imgUrl;
  }

  render() {
    const imgUrl = this.getLinkedInImg();
    return(
      <div className="footer">
        <a href="https://github.com/amory-peng/neatnovels">
          <img id="github" src="../../assets/github-mark.png"></img>
        </a>
        <a href="https://www.linkedin.com/in/amory-peng-6b2a8862?trk=nav_responsive_tab_profile">
          <img id="linked-in" src={imgUrl}></img>
        </a>
      </div>
    );
  }
}

export default Footer;
