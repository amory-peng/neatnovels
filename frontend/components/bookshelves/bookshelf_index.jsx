import React from 'react';
import { Link, withRouter } from 'react-router';
import merge from 'lodash/merge';

class BookshelfIndex extends React.Component{
  constructor(props) {
    super(props);
    this.state = { name: "" };
    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  componentDidMount() {
    console.log("test");
    this.props.requestBookshelves();
  }

  handleChange(e) {
    this.setState({ name: e.target.value });
  }

  handleSubmit(e) {
    e.preventDefault();
    let newShelf = merge({}, this.state);
    this.setState({ name: "" }, () => this.props.createBookshelf(newShelf));
  }

  deleteBookshelf(id) {
    return () => this.props.deleteBookshelf(id);
  }

  render() {
    if (!this.props.bookshelves) {
      return <div></div>;
    } else {
      let bookshelvesList = Object.keys(this.props.bookshelves)
      .map((shelf, idx) => <li key={idx}>
            <Link  className="link" to={`/bookshelves/${this.props.bookshelves[shelf].id}`}>
              {this.props.bookshelves[shelf].name}
            </Link>

          </li>);

      return(
        <div className="bookshelves-main-container">
          <div className="bookshelves-index-container">
            <h2>Bookshelves</h2>
            <ul className="bookshelves-index">
              {bookshelvesList}
            </ul>
            <form className="add-form-container" onSubmit={this.handleSubmit}>
              <input type="text" onChange={this.handleChange} placeholder="Add a bookshelf!"
                value={this.state.name}/>
              <button className="button">Add shelf</button>

            </form>
          </div>
            { this.props.children }
        </div>
      );
    }
  }
}

export default withRouter(BookshelfIndex);
