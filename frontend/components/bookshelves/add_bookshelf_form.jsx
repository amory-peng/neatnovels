import React from 'react';
import merge from 'lodash/merge';

class AddBookshelfForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = { name: "" };
    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleChange(e) {
    this.setState({ name: e.target.value });
  }


  handleSubmit(e) {
    e.preventDefault();
    let newShelf = merge({}, this.state);
    this.setState({ name: "" }, () => {
      this.props.createBookshelf(newShelf);
      this.props.clearBookshelfErrors();
    });
  }

  render() {
    let errorList;
    if (this.props.errors) {
      errorList = this.props.errors.map((error, idx) => (
        <li key={idx}>{error}</li>
      ));
    }
    return(
      <form className="add-form-container" onSubmit={this.handleSubmit}>
        <input type="text"
               onChange={this.handleChange}
               placeholder="Add a bookshelf!"
               value={this.state.name}/>

        <button className="button">Add shelf</button>
        <ul>
          {errorList}
        </ul>
      </form>

    );
  }
}

export default AddBookshelfForm;
