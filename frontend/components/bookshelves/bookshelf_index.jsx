import React from 'react';

class BookshelfIndex extends React.Component{
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    console.log("mount");
    this.props.requestBookshelves();
  }

  render() {
    if (!this.props.bookshelves) {
      return <div></div>;
    } else {
      console.log(this.props.bookshelves[1]);
      let bookshelvesList = Object.keys(this.props.bookshelves)
      .map((shelf, idx) => <li key={idx} className="link">
            { this.props.bookshelves[shelf].name}
          </li>);
      console.log(bookshelvesList);
      return(
        <div className="bookshelves-main-container">
          <div className="bookshelves-index-container">
            <h2>Bookshelves</h2>
            <ul className="bookshelves-index">
              {bookshelvesList}
            </ul>
            <button className="button">Add shelf</button>
          </div>
        </div>
      );
    }
  }
}

export default BookshelfIndex;
