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
  }

  handleSubmit(e) {
    e.preventDefault();
    const query = this.state.query;
    if (query.length > 0) {
      this.setState({ query: "" }, () => {
        this.props.searchBooks(query);
        hashHistory.push('/books');
      });
    }
  }

  sendRequest(query) {
    if (query.length > 0) {
      this.props.searchBooks(query);
    } else {
      this.props.requestBooks();
    }
  }

  bookList() {

  }

  render() {
    return(
      <div>
        <form onSubmit={this.handleSubmit}>
          <input onChange={this.handleChange.bind(this)} value={this.state.query} />
          <input type="submit" value="search!" />
        </form>

      </div>
    );
  }
}

export default SearchBar;
