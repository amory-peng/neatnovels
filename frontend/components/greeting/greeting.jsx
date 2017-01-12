import React from 'react';
import { Link, hashHistory, withRouter } from 'react-router';

class Greeting extends React.Component {
  constructor(props) {
    super(props);
    this.goTo = this.goTo.bind(this);
    this.logout = this.logout.bind(this);
    this.goToText = "Shelves";
  }

  logout() {
    this.props.logout()
    .then(() => hashHistory.push('/login'));

  }

  goTo() {
    if (this.props.location.pathname === '/bookshelves') {
      hashHistory.push('/books');
    } else {
      hashHistory.push('/bookshelves');
    }
  }

  render () {
    let text;
    let goToText;
    if (this.props.location.pathname === '/bookshelves') {
      goToText = 'Books';
    } else {
      goToText = "Shelves";
    }

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
          <button className="button" onClick={this.goTo}>{goToText}</button>
          <button className="button" onClick={this.logout}>Log out</button>
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
export default withRouter(Greeting);
