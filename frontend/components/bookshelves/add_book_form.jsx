import React from 'react';
import { hashHistory } from 'react-router';
import { isEmpty } from 'lodash';

class AddBookForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = { name: "Choose a shelf..." };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleChange = this.handleChange.bind(this);
  }

  componentDidMount() {
    if (isEmpty(this.props.bookshelves)) {
      this.props.requestBookshelves();
    }
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.addBookToShelf(this.state.name, this.props.bookId);
    this.setState( {name: "Choose a shelf..."} );

  }

  handleChange(e) {
    this.setState({ name: e.target.value });
  }

  render() {
    let bookshelfOptions;
    if (this.props.bookshelves) {
      bookshelfOptions = Object.keys(this.props.bookshelves).map( (id, idx) => {

        return(
          <option key={idx}>{this.props.bookshelves[id].name}</option>
          );
        }
      );
    }

    return(
      <div>
      <form onSubmit={this.handleSubmit} >
        <select onChange={this.handleChange} defaultValue={ this.state.name }>
          <option disabled>Choose a shelf...</option>
          { bookshelfOptions }
        </select>
        <button className="button">Add</button>
      </form>
    </div>
    );
  }
}

export default AddBookForm;
