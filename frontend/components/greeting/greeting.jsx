import React from 'react';
import { Link, hashHistory, withRouter } from 'react-router';
import SearchBarContainer from './search_bar_container';

class Greeting extends React.Component {
  constructor(props) {
    super(props);
    this.goTo = this.goTo.bind(this);
    this.logout = this.logout.bind(this);

  }

  logout() {
    this.props.logout().then(() => this.props.removeBookshelves())
    .then(() => hashHistory.push('/login'));

  }

  goTo(key) {
    return () => hashHistory.push(key);
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
          <SearchBarContainer location={location}/>
          <h2>Welcome, {this.props.currentUser.username}.</h2>
          <button className="button" onClick={this.goTo('/bookshelves')}>Shelves</button>
          <button className="button" onClick={this.goTo('/books')}>Books</button>
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
