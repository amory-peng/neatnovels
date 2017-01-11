import React from 'react';
import { Link } from 'react-router';

const BooksIndexItem = ({ book }) => {
  return(
    <div className="books-index-item">
      <img src={book.image_url}/>
      <div className="books-index-desc">
        <h1>{book.title}</h1>
        <h2> by {book.author}</h2>
      </div>
    </div>
  );
};

export default BooksIndexItem;
