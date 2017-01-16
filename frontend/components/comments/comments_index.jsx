import React from 'react';
import CommentForm from './comment_form_container';

class CommentsIndex extends React.Component{
  constructor(props) {
    super(props);
  }

  componentWillMount() {
    this.props.clearComments();
    this.props.requestComments();
  }

  render() {
    const commentList = this.props.comments.map((comment, idx) => (
      <li key={idx}>{comment.username} on {comment.created_at.slice(0,10)} says: {comment.body} </li>
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
