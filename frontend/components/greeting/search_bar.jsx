import React from 'react';
import debounce from 'lodash/debounce';

class SearchBar extends React.Component {
  constructor(props) {
    super(props);
    this.state = { query: "" };
    this.sendRequest = debounce(this.sendRequest, 500);
  }

  handleChange(e) {
    const query = e.target.value;
    this.setState({ query },
      () => this.sendRequest(query)
    );
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
        <input onChange={this.handleChange.bind(this)} value={this.state.query} />
      </div>
    );
  }
}

export default SearchBar;
