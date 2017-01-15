import React from 'react';
import merge from 'lodash/merge';

class CommentForm extends React.Component{
  constructor(props) {
    super(props);
    this.state = { body: ""};
    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleChange(e) {
    this.setState({body: e.target.value});
  }

  handleSubmit(e) {
    e.preventDefault();
    console.log("submit");
    const newComment = merge({}, this.state);
    this.setState({body: ""}, () => this.props.createComment(newComment));
  }

  render() {
    return(
      <div>
        <form onSubmit={this.handleSubmit}>
          <textarea onChange={this.handleChange}></textarea>
          <input type="submit" className="button" value="Add Comment"></input>
        </form>
      </div>
    );
  }

}

export default CommentForm;
