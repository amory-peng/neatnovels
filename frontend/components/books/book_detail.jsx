import React from 'react';
import { Link } from 'react-router';

class BookDetail extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    // console.log(this.props.bookId);
    this.props.requestBook(this.props.bookId);
  }

  componentWillReceiveProps(newProps) {
    if (this.props.bookId !== newProps.bookId) {
      this.props.requestBook(newProps.bookId);
    }
  }

  render() {
    let text;
    // console.log(this.props);
    if (this.props.currentBook) {
      text =
      <div className="bookdetail-container">
        <img src={this.props.currentBook.image_url} />
        <div className="book-desc-container">
          <div className="book-desc-title">
            <h1>{this.props.currentBook.title} ({this.props.currentBook.year})
               </h1>
          </div>

          <div>
            by {this.props.currentBook.author}
          </div>

          <div className="book-desc-summary">
            <h2 className="padding-bottom-5">Summary</h2>
            <p>
              {this.props.currentBook.description}
            </p>
          </div>
          <Link to="/books" className="button">Back to Index</Link>

        </div>
      </div>


      ;
    }

    return(
      <div className="main-container">
        {text}

      </div>
    );
  }
}

export default BookDetail;
