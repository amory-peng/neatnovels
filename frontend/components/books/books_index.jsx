import React from 'react';
import BooksIndexItem from './books_index_item';
import { Link, hashHistory } from 'react-router';

class BooksIndex extends React.Component {
  constructor(props) {
    super(props);
    this.state = { lastBookId:0, hasMore:true, loading: true };
    this.handleClick = this.handleClick.bind(this);
    this.handleScroll = this.handleScroll.bind(this);
  }

  componentDidMount() {
    this.props.requestBooks(0);
  }

  componentWillReceiveProps(newProps) {
    document.addEventListener('scroll', this.handleScroll);
    const newLastBookId = newProps.books.length;
    let newHasMore = true;
    if (newLastBookId % 12 !== 0) {
      newHasMore = false;
    }
    this.setState( {lastBookId: newLastBookId, loading: false, hasMore: newHasMore });
  }

  handleScroll() {
    if (document.body.scrollHeight ===
        document.body.scrollTop + window.innerHeight &&
        this.state.hasMore === true ) {
          this.setState({loading: true },
                        ()=> this.props.requestBooks(this.state.lastBookId));
    }
  }

  componentWillUnmount() {
    document.removeEventListener('scroll', this.handleScroll);
  }

  handleClick(id) {
    return () => {
      document.removeEventListener('scroll', this.handleScroll);
      hashHistory.push(`/books/${id}`);
    };
  }

  render() {
    let bookList;
    if (this.props.books.length > 0) {
      bookList = this.props.books.map( (book,idx) => (
        <li key={idx} onClick={this.handleClick(book.id)}><BooksIndexItem book={book} /></li>
      ));
    }

    let loadDiv;
    if (this.state.loading) {
      loadDiv = <div className="loading">Loading...</div>;
    }
    return (
      <div className="books-main-container">
        { loadDiv }
        <ul className="books-index-container">
          { bookList }
        </ul>
      </div>
    );
  }

}

export default BooksIndex;
