import React from 'react';
import merge from 'lodash/merge';

class CommentForm extends React.Component{
  constructor(props) {
    super(props);
    this.state = { body: "" };
    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  componentWillUnmount() {
    this.props.clearErrors();
  }

  handleChange(e) {
    this.setState({body: e.target.value});
  }

  handleSubmit(e) {
    e.preventDefault();
    if (this.state.body.length > 0) {
      const newComment = merge({}, this.state);
      this.setState({body: ""}, () => this.props.createComment(newComment));
    }
  }

  render() {
    let errorText;
    if (this.props.errors.length > 0) {
      errorText = this.props.errors.map((error, idx) => (
        <li key={idx}>{error}</li>
      ));
    }
    let buttonClass = "grey-button";
    if (this.state.body.length > 0) {
      buttonClass = "button";
    }
    return(
      <div>
        <form onSubmit={this.handleSubmit} className="comment-form">
          <textarea onChange={this.handleChange} value={this.state.body}></textarea>
          <input type="submit" className={ buttonClass } value="Add Comment"></input>
        </form>
        <ul className="comment-errors-container">{errorText}</ul>
      </div>
    );
  }

}

export default CommentForm;
