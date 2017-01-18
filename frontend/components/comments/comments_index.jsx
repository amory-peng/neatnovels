import React from 'react';
import CommentForm from './comment_form_container';

class CommentsIndex extends React.Component{
  constructor(props) {
    super(props);
    this.randomColor = this.randomColor.bind(this);
  }

  componentWillMount() {
    this.props.clearComments();
    this.props.requestComments();
  }

  randomColor() {
    const colors = ['bg-blue', 'bg-green', 'bg-red'];
    return colors[Math.floor(Math.random() * colors.length)];
  }
  render() {
    const commentList = this.props.comments.map((comment, idx) => (
      <li key={idx}>
        <div className={`user-profile ${this.randomColor()}`}>
          <span>{comment.username[0]}</span>
        </div>

        <div>
          {comment.username} on {comment.created_at.slice(0,10)} says:
          <br />
          {comment.body}
        </div>
      </li>
    ));

    return(
      <div>
        <ul className="comment-list">
          {commentList}
        </ul>
      </div>
    );
  }
}

export default CommentsIndex;
