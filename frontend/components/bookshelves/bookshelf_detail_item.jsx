import React from 'react';
import { Link, hashHistory } from 'react-router';

const handleClick = (id) => (
  () => hashHistory.push(`/books/${id}`)
);

const BookshelfDetailItem = ({ book }) => (
  <div className="bookshelf-detail-item-container">
    <img onClick={handleClick(book.id)} src={book.image_url} />
    <h3>
      <Link to={`/books/${book.id}`} className="link">
        {book.title}</Link> by {book.author}
    </h3>
    <button className="button">X</button>
  </div>
);

export default BookshelfDetailItem;
