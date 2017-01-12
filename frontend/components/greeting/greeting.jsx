import React from 'react';
import { Link, hashHistory } from 'react-router';

class Greeting extends React.Component {
  constructor(props) {
    super(props);
    this.goToShelves = this.goToShelves.bind(this);
  }

  componentDidUpdate() {
    this.ensureLoggedIn();
  }

  ensureLoggedIn() {
    // console.log(this.props.loggedIn);
    if (!this.props.loggedIn) {
      hashHistory.push('/login');
    }
  }

  goToShelves() {
    hashHistory.push('/bookshelves');
  }

  render () {
    let text;
    if (!this.props.currentUser) {
      text = (
        <div id="greeting-container">
          <Link to="/login" className="button">Sign in</Link>
          <Link to="/signup" className="button">Sign up</Link>
        </div>
      );

    } else {
      text = (
        <div id="greeting-container">
          <h2>Welcome, {this.props.currentUser.username}.</h2>
          <button className="button" onClick={this.goToShelves}>Shelves</button>
          <button className="button" onClick={this.props.logout}>Log out</button>
        </div>
      );
    }

    return(
      <div>
        { text }
      </div>
    );
  }
}
export default Greeting;
