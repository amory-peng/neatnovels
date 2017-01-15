import React from 'react';
import CommentForm from './comment_form_container';

class CommentsIndex extends React.Component{
  constructor(props) {
    super(props);
  }

  componentWillMount() {
    this.props.requestComments();
  }


  render() {

    const commentList = this.props.comments.map((comment, idx) => (
      <li key={idx}>{comment.username} says: {comment.body} </li>
    ));
    return(
      <div>
        <ul>
          {commentList}
        </ul>
      </div>
    );
  }
}

export default CommentsIndex;
