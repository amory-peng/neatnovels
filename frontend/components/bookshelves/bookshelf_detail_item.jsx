import React from 'react';
import { Link, hashHistory } from 'react-router';

class BookshelfDetailItem extends React.Component {
  constructor(props) {
    super(props);
    this.handleClick = this.handleClick.bind(this);
    this.removeBookFromShelf = this.removeBookFromShelf.bind(this);
  }

  handleClick() {
    hashHistory.push(`/books/${this.props.book.id}`);
  }

  removeBookFromShelf() {
    this.props.removeBookFromShelf(this.props.bookshelf.id, this.props.book.id);
  }

  render() {
    return(
      <div className="bookshelf-detail-item-container">
        <img onClick={this.handleClick} src={this.props.book.image_url} />
        <h3>
          <Link to={`/books/${this.props.book.id}`} className="link">
            {this.props.book.title}</Link> by {this.props.book.author}
        </h3>
        <button onClick={this.removeBookFromShelf} className="button">X</button>
      </div>
    );
  }
}

export default BookshelfDetailItem;
