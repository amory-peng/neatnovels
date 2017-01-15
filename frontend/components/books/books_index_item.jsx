import React from 'react';
import { Link, hashHistory } from 'react-router';

const BooksIndexItem = ({ book }) => {
  return(
    <div className="books-index-item">
        <div className="cover"></div>
        <img src={book.image_url}/>
        <div className="books-index-desc">
          <h1>{book.title}</h1>
        </div>
    </div>
  );
};

export default BooksIndexItem;
