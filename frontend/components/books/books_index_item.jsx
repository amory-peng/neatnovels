import React from 'react';
import { Link, hashHistory } from 'react-router';

const BooksIndexItem = ({ book }) => {
  let img = <img src='../../assets/book-placeholder.png'/>;
  if (book.image_url !== "null") {
    img = <img src={book.image_url} />;
  }
  return(
    <div className="books-index-item">
        <div className="cover"></div>
        { img }
        <div className="books-index-desc">
          <h1>{book.title}</h1>
        </div>
    </div>
  );
};

export default BooksIndexItem;
