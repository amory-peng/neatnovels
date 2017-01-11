import React from 'react';

class BookDetail extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    console.log(this.props.bookId);
    this.props.requestBook(this.props.bookId);
  }

  componentWillReceiveProps(newProps) {
    if (this.props.bookId !== newProps.bookId) {
      this.props.requestBook(newProps.bookId);
    }
  }

  render() {
    let text;
    console.log(this.props);
    if (this.props.currentBook) {
      console.log(this.props.currentBook.title);
      text = <div>{this.props.currentBook.title}</div>;
    }

    return(
      <div>
        {text}
      </div>
    );
  }
}

export default BookDetail;
