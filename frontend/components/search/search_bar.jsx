import React from 'react';
import { hashHistory } from 'react-router';
import debounce from 'lodash/debounce';

class SearchBar extends React.Component {
  constructor(props) {
    super(props);
    this.state = { query: "" };
    this.sendRequest = debounce(this.sendRequest, 500);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleChange(e) {
    const query = e.target.value;
    this.setState({ query },
      () => this.sendRequest(query)
    );
    if (this.props.location.hash === '#/books' ||
        this.props.location.hash === '#/') {
      hashHistory.push(`/books/search/${query}`);
    }
  }

  handleSubmit(e) {
    e.preventDefault();
    const query = this.state.query;
    if (query.length > 0) {
      this.setState({ query: "" }, () => {
        hashHistory.push(`/books/search/${query}`);
      });
    }
  }

  sendRequest(query) {
    if (this.props.location.hash.slice(0,14) === '#/books/search') {
      if (query.length > 0) {
        this.props.searchBooks(query);
        hashHistory.push(`/books/search/${query}`);
      } else {
        this.props.clearQueriedBooks();
        this.props.requestBooks();
        hashHistory.push('/books');
      }
    }
  }


  render() {
    return(
      <div className="search-container">
        <form onSubmit={this.handleSubmit} >
          <input className="search-input"
                 onChange={this.handleChange.bind(this)}
                 placeholder="Search..."
                 value={this.state.query} />
          <input className="search-button" type="submit" value='🔍' />
        </form>

      </div>
    );
  }
}

export default SearchBar;
